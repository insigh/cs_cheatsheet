# GDB

:octocat: :+1: :sparkles: :camel: :tada: :rocket: :metal:


## Essential Commands
* **`# gdb program [core]`** - debug *program* [using coredump core]
* **`b [file:]function`** - set breakpoint at *function* [in *file*]
* **`run [arglist]`** - start your program [with *arglist*]
* **`p expr `** - display the value of an expression
* **`c`** - continue running your program
* **`n`** - next line, stepping over function call
* **`s`** - next line, stepping into function call

## Running
* **`# gdb`** or **`# gdb <program> [core dump]`** - Start GDB (with optional core dump)
* **`# gdb --args <program> <args...>`** - Start GDB and pass arguments
* **`# gdb --pid <pid>`** - Start GDB and attach to process
* **`# gdb --help`** - describe command line
* **`set args <args...>`** - Set arguments to pass to program to be debugged
* **`run <arglist>`** - Run the program to be debugged
* **`kill`** - Kill the running program

## Stopping
* **`quit`** or **`q`** or **`C-d`** - exit GDB
* **`C-c`** - interrupt, terminate current command, or send to running process

## Breakpoints
* **`break <where>`** or **`b(reak) [file:]function`** - Set a new breakpoint
* **`break +offset`** - set break point at offset lines from current stop
* **`break *addr`** - set breakpoint ar address *`addr`*
* **`cond n [expr]`** - new conditional expression on breakpoint `n`; make uncondition if no *`expr`*
* **`delete <breakpoint#>`** - Remove a breakpoint
* **`clear`** - Delete all breakpoints
* **`clear [file:]fun`** - delete breakpoints at entry to *`fun()`*
* **`clear [file:]line`** - delete breakpoints at entry on source line
* **`enable <breakpoint#>`** - Enable a disabled breakpoint
* **`disable <breakpoint#>`** - Disable a breakpoint

## Watchpoints
* **`watch expr`** or **`watch <where>`** - Set a new watchpoint
* **`delete <watchpoint#>`** - Delete a watchpoint
* **`enable <watchpoint#>`** - Enable a disabled watchpoint
* **`disable <watchpoint#>`** - Disable a watchpoint
* **`function_name`** - Break/watch the named function
* **`line_number`** - Break/watch the line number in the current source file
* **`file:line_number`** - Break/watch the line number in the named source file


## Conditions
* **`break/watch <where> if <condition>`** - Break/watch at the given location if the condition is met. Condition may be almost any C expression that evaluates to `true` or `false`
* **`condition <breakpoint#> <condition>`** - Set/change the condition of an existing break or watchpoint

## Examining the Stack
* **`backtrace`** or **`where`** - Show call stack
* **`backtrace [n]`** or **`bt [n]`** - print trace of all frames in stack; or of `n` frames -- innermost if `n > 0`, outermost if `n < 0`
* **`backtrace full`** or **`where full`** - Show call stack, also print the local variables in each frame
* **`frame <frame#>`** - Select the stack frame to operate on
* **`up n`** - select frame `n` frames up
* **`down n`** - select frame `n` frames down
* **`step`** - Go to next instruction (source line), diving into function
* **`next`** - Go to next instruction (source line) but not dive into function
* **`finish`** or **`fin`** - Continue until the current function returns
* **`continue`** - Continue normal execution

## Variables and Memory
* **`print/format <what>`** - Print content of variable/memory location/register
* **`display/format <what>`** - Like `print`, but print the information after each stepping instruction
* **`undisplay <display#>`** - Remove the `display` with the given number
* **`enable display <display#>`** - Remove the `display` with the given number
* **`enable display <display#>`** - Enable the display with the given number
* **`disable display <display#>`** - Disable the display with the given number
* **`x/nfu <address>`** - Print memory
> `n`: How many units to print (default 1), `f`: Format character (like `printf`), `u`: unit <br>
> Unit is one of: `b` (Byte), `h` (Half-word/two bytes), `w` (Word/four bytes), `g` (Giant-word/eight bytes)

## Format
* **`a`** - Pointer
* **`c`** - Read as integer, print as character
* **`d`** - Integer, signed decimal
* **`f`** - Floating point number
* **`o`** - Integer, print as octal
* **`s`** - Try to treat as C string
* **`t`** - Integer, print as binary (t = 'two')
* **`u`** - Integer, unsigned decimal
* **`x`** - Integer, print as hexadecimal

## What
* **`expression`** - Almost any C expression, including function calls (must be prefixed with a cast to tell GDB the return value type)
* **`file_name::variable_name`** - Content of the variable defined in the name file (static variables)
* **`function_name::variable_name`** - Content of the variable defined in the name function (if on the stack)
* **`{type}address`** - Content at address, interpreted as being of the C type `type`
* **`$register`** - Content of named register. Interesting registers are `$esp` (stack pointer), `$ebp` (frame pointer) and `$eip` (instruction pointer)

## Threads
* **`thread <thread#>`** Choose thread to operate on

## Manipulate the Program
* **`set var <variable_name>=<value>`** - Change the content of a variable to the given value
* **`return <expression>`** - Force the current function to return immediately, passing the given value

## Sources
* **`directory <directory>`** - Add directory to the list of directories that is searched for sources
* **`list`** - Shows the current or given source context
* **`list <filename>:<function>`** - The filename may be omitted
* **`list <first>, <last>`** - If last is omitted the context starting at start is printed instead of centered around it
* **`set listsize <count>`** - Set how many lines to show in `list`

## Signals
* **`handle <signal> <options>`** - Set how to handle signals
> Options are: <br>
> `(no)print`: (Do not) print a message when signals occur <br>
> `(no)stop`: (Do not) stop the program when signals occur <br>
> `(no)pass`: (Do not) pass the signal to the program <br>

## Information
* **`disassemble <where>`**- Disassemble the current function or given location
* **`info frame [addr]`** - describe select frame, or frame at _addr_
* **`info args`** - Print the arguments to the function of the current stack frame
* **`info locals`** - local variables of selected frame
* **`info break`** - show defined breakpoints
* **`info watch`** - show define watchpoints
* **`info breakpoints`** - Print information about the breakpoints and watchpoints
* **`info display`** - Print information about the `display`
* **`info locals`** - Print the local variables in the currently selected stack frame
* **`info sharedlibrary`** - List loaded shared libraries
* **`info signals`** - List all signals and how they are currently handled
* **`info threads`** - List all threads
* **`show directories`** - Print all directories in which GDB searches for source files
* **`show listsize`** - Print how many are shown in the `list` command
* **`whatis variable_name`** - Print type of named variable

## Execution Control
* **`continue [count]`** or **`c [count]`** - continue running if *`count`* specified, ignore this breakpoint next *`count`* time
* **`step [count]`** or **`s [count]`** - execute until another line reached; repeat *`count`* times if specified
* **`stepi [count]`** or **`si [count]`** - step by machine instructions rather than source lines
* **`next [count]`** or **`n [count]`** - execute next line, including function calls
* **`nexti [count]`** or **`ni [count]`** - next machine instruction rather than source line
* **`until [ location ]`** or **`u [location]`** - run until next instruction (or location), This command is used to avoid single stepping through a loop more than once. 
* **`finish`** - run until selected stack frame returns
* **`return [ expr ]`** - pop selected stack frame without executing [ setting return value ]
* **`signal num`** - resume execution with signal s (none if 0 )
* **`jump n`** or **`jump *addr`** - resume execution at specified line number *`n`* or *`addr`*
* **`set var= expr`** - evaluate *`expr`* without displaying it; use for altering program variables

## Display
* **`print [/f] [expr]`** or **`p [/f] [expr]`** - show value of *`expr`* [or last value $] according format *`f`*
> format: <br>
> `x` : hexadecimal <br>
> `d` : signed decimal <br>
> `u` : unsigned decimal <br>
> `o` : octal <br>
> `t` : binary <br>
> `a` : address, absolute and relative <br>
> `c` : character <br>
> `f` : float point

* **`call [/f] expr`** - like `print` but does not display `void`
* **`display [ /f ] expr`** - show value of `expr` each time program stops [according to format *`f`* ]
