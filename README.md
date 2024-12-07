# todotxt-plusplus

An extension of the `todotxt` grammar and cross-platform implementation of the `todotxt-cli` toolset.

## Additional Features

* `*.todo.txt` files are recognized, but it will look for `todo.txt` first.
* Additional file extensions can be recognized as task lists, defined in the config.
* By default, the `TODO_DIR` is the PWD if it has a task list in it. A default `TODO_DIR` can be defined in the config as a fallback if there isn't one.
  * Just to be safe, a config option `exlucdes` or something which excludes paths that may be causing problems. This means files matching the task list pattern within these directories would instead not be interpreted by the application, but the cli would still work in these directories using the default `TODO_DIR`.
* Projects can have their own task lists with the `.todo.txt` extension relative to the `TODO_DIR`, e.g. `myProject.todo.txt`. The `list` command will have options to list some, all, or none of the tasks within these files.
* A directory-level config file, e.g. `.todo.cfg` which overrides, but does not replace the user's config.

### Features TBD

These features need refinement, more details, and/or clarification.

* An "in-progress" indicator. How would this look? (first instinct `*` as first character, in place of `x`)
* `start` and `stop` commands to begin/end working on tasks.
* Parser creates an object structure for each task which can be used by plugins.
  * What does that look like?
* Plugins should be able to add hooks to the parser to extend or alter it.
  * How would this work?
* A `plan` command to move tasks from a "backlog" list to a "planned" list, e.g. from `todo.txt` to `today.todo.txt`.
  * Should there be multiple "mappings"? i.e. multiple differing backlog/planned list pairs.
* Associated files for projects or contexts within directories of the same name.
  * Subdirectories of `$TODO_DIR` or `$TODO_DIR/.todo`? or configurable?
  * This would mean project/context names should be valid filenames.
* Tags (context, project, key/value) allow names/values with spaces, if enclosed in quotes, e.g. `+"my project"`.
  * Escaping characters within quotes
  * Should it be quotes or brackets?
  * Any quotes? or just one kind?
