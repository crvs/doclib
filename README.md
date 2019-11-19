# doclib

Simple command-line tool to manage your pdf documents and reduce the amount of articles piling up on your Downloads folder. It is a single shell script that takes one of a few commands to add and query for documents from the command line. It keeps the documents in a single directory within the user's home (in `~/.config/doclib`) together with a notes which is also used to list metadata.

For convenience, it also provides integration with dmenu to easily access files without having to open a command line prompt.

When a file is added to the library (using `doclib add`) it is **moved** into the `doclib` folder (it can later be retrieved using `doclib get`) and the `$EDITOR` is used to edit a metadata/comments file which will be associated with it.

All of the metadata can be (over)written by hand, the only lines in the metadata that are currently used are the Title, Author and Keywords, and they are expected to remain in this order throughout all the metadata/comments files for the dmenu interface to work correctly.

## Dependencies

 - dmenu (for the dmenu action)
 - xdg-open (should be present in most installations)
 - pdfinfo (for metadata mining)

