
# Another Vim trick

## Start vim
* **`vim + file`** - edit from end of file
* **`vim + n file`** - edit from *`num`* line of file

## Open
* **`:e file`** - Close current file and open another one
* **`:e! file`** - discard current modification and open another file
* **`:e+ file`** - edit from end of file
* **`:e+n file`** - start from `n` line of file
* **`:e`** - reload current file
* **`:e!`** - reload current file and discard change
* **`:e#`** or **`<C-^>`** - restore previous file(useful)
* **`:f`** or **`<C-g>`** - display file info(name, modified, lineno)
* **`:f filename`** change file name
* **`gf`** - open file named current cursor
* **`:n1,n2w file`** - save file from n1 to n2
* **`ZZ`** or **`:x`** or **`:wq`** - save and  exit
* **`:q`** or **`<C-w> q`** or **`<C-w> <C-q>`** - quit
* **`:saveas newfile`** - save as newfile
* **`:Sex`** - open a horizontal window to browser files in current path
* **`:Vex`** - open a vertical window to browser files

## Move
* **`(`** - move forward for a sentence
* **`)`** - move backward for a sentence
* **`<C-o>`** - Go to [count] Older cursor position in jump list
* **`<C-i>`** - Go to [count] newer cursor position in jump list
* **`:ju[mps]`** - Print the jump list (not a motion command)


## Edit
> *`n`* + `i` + `=` + `Esc` - will show *`n`* `=`
* **`:r file`** - insert another file in current file
* **`:[n]r file`** - insert `n` line of another file in current file
* **`:r !date`** or **`:r !command`** - insert result of command into file
* **`:%s/^/xxx/g`** - insert into line head
* **`:%s/$/xxx/g`** - insert into line tail

## Delete
* **`di"`** - delete inside double quotes(")
> "dl"    delete character (alias: "x")           dl   <br>
> "diw"   delete inner word                       diw   <br>
> "daw"   delete a word                           daw   <br>
> "diW"   delete inner WORD (see WORD)            diW   <br>
> "daW"   delete a WORD (see WORD)                daW   <br>
> "dgn"   delete the next search pattern match    dgn   <br>
> "dd"    delete one line                         dd   <br>
> "dis"   delete inner sentence                   dis   <br>
> "das"   delete a sentence                       das   <br>
> "dib"   delete inner '(' ')' block              dib   <br>
> "dab"   delete a '(' ')' block                  dab   <br>
> "dip"   delete inner paragraph                  dip   <br>
> "dap"   delete a paragraph                      dap   <br>
> "diB"   delete inner '{' '}' block              diB   <br>
> "daB"   delete a '{' '}' block                  daB   <br>


## Spell
* **`:set spell`** - check spell
* **`:set nospell`** - not check spell
* **`]s`** - move to next wrong word
* **`[s`** - move to previous wrong word

## Other
* **`q:`** - open command buffer
* **`q/`** or **`q?`** - search command history

