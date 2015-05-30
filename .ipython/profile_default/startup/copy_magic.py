"""
Add copy to clipboard from IPython!
To install, just copy it to your profile/startup directory, typically:

    ~/.ipython/profile_default/startup/

Example usage:

    %copy hello world
    # will store "hello world"
    a = [1, 2, 3]
    %copy a
    # will store "[1, 2, 3]"

You can also use it with cell magic

    In [1]: %%copy
       ...: Even multi
       ...: lines
       ...: work!
       ...:

If you don't have a variable named 'copy' you can rely on automagic:

    copy hey man
    a = [1, 2, 3]
    copy a

"""

import sys

if sys.platform == 'darwin':
    from AppKit import NSPasteboard, NSArray
elif sys.platform.startswith('linux'):
    from subprocess import Popen, PIPE
else:
    raise ImportError("Clip magic only works on osx or linux!")

from IPython.core.magic import register_line_cell_magic

def _copy_to_clipboard(arg):
    arg = str(globals().get(arg) or arg)

    if sys.platform == 'darwin':
        pb = NSPasteboard.generalPasteboard()
        pb.clearContents()
        a = NSArray.arrayWithObject_(arg)
        pb.writeObjects_(a)
    elif sys.platform.startswith('linux'):
        p = Popen(['xsel', '-pi'], stdin=PIPE)
        p.communicate(input=arg)

@register_line_cell_magic
def copy(line, cell=None):
    if line and cell:
        cell = '\n'.join((line, cell))

    _copy_to_clipboard(cell or line)

# We delete it to avoid name conflicts for automagic to work
del copy
