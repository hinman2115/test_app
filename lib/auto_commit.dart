import 'dart:io';
import 'dart:async';


Future<void> autoCommit(String repoPath) async {
  print('Running auto commit...');

  // Change directory to the Git repo
  Directory.current = repoPath;

  // Run `git add .` to stage all changes
  await runGitCommand('git add .');

  // Run `git commit -m "Auto commit"` to commit changes
  await runGitCommand('git commit -m "Auto commit"');

  // Optionally, you can run `git push` to push the commit
  await runGitCommand('git push');

  print('Auto commit done!');
}

Future<void> runGitCommand(String command) async {
  try {
    ProcessResult result = await Process.run(command, []);
    if (result.exitCode == 0) {
      print(result.stdout);
    } else {
      print('Error: ${result.stderr}');
    }
  } catch (e) {
    print('Error executing command: $e');
  }
}
