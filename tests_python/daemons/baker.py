from typing import List
import os
import subprocess
from process import process_utils


# Timeout before killing a baker which doesn't react to SIGTERM
TERM_TIMEOUT = 10


class Baker(subprocess.Popen):
    """Fork a baker process linked to a node and a client"""

    def __init__(
        self,
        baker: str,
        rpc_port: int,
        base_dir: str,
        node_dir: str,
        account: str,
        params: List[str] = None,
        log_file: str = None,
        run_params: List[str] = None,
    ):
        """Create a new Popen instance for the baker process.

        Args:
            baker (str): path to the baker executable file
            rpc_port (int): rpc port of the node
            base_dir (str): client directory
            node_dir (str): node directory
            account (str): account of the delegate
            params (list): additional parameters to be added to the command
            log_file (str): log file name (optional)
        Returns:
            A Popen instance
        """
        assert os.path.isfile(baker), f'{baker} not a file'
        assert os.path.isdir(node_dir), f'{node_dir} not a dir'
        assert os.path.isdir(base_dir), f'{base_dir} not a dir'
        if params is None:
            params = []
        if run_params is None:
            run_params = []
        endpoint = f'http://127.0.0.1:{rpc_port}'
        cmd = [baker, '-base-dir', base_dir, '-endpoint', endpoint]
        cmd.extend(params)
        cmd.extend(['run', 'with', 'local', 'node', node_dir, account])
        cmd.extend(run_params)
        cmd_string = process_utils.format_command(cmd)
        print(cmd_string)
        stdout, stderr = process_utils.prepare_log(cmd, log_file)
        subprocess.Popen.__init__(
            self, cmd, stdout=stdout, stderr=stderr
        )  # type: ignore

    def terminate_or_kill(self):
        self.terminate()
        try:
            return self.wait(timeout=TERM_TIMEOUT)
        except subprocess.TimeoutExpired:
            return self.kill()
