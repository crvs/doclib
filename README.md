# doclib

Simple pdf document management tool to try to keep things organized. It is a single shell script that takes one of a few actions to add and query for documents from the shell. It also has integration with dmenu so that you can easily access files.

When a file is added to the library (using `doclib add`) it is **moved** into the `doclib` folder (it can later be retrieved using `doclib get`) and the `$EDITOR` is used to edit a metadata/comments file which will be associated with it.

All of the metadata can be (over)written by hand, the only lines in the metadata that are currently used are the Title, Author and Keywords, and they are expected to remain in this order throughout all the metadata/comments files.

## Dependencies

 - dmenu (for the dmenu action)
 - xdg-open (should be present in most installations)
 - pdfinfo (for metadata mining)

