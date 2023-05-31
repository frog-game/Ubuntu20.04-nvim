---@meta

---
---
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string)
---
---@class stringlib
string = {}

---
---返回字符 `s[i]`， `s[i+1]`， ...　，`s[j]` 的内部数字编码。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.byte)
---
---@param s  string
---@param i? integer
---@param j? integer
---@return integer
---@return ...
---@nodiscard
function string.byte(s, i, j) end

---
---接收零或更多的整数。 返回和参数数量相同长度的字符串。 其中每个字符的内部编码值等于对应的参数值。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.char)
---
---@param byte integer
---@param ... integer
---@return string
---@return ...
---@nodiscard
function string.char(byte, ...) end

---
---返回包含有以二进制方式表示的（一个 *二进制代码块* ）指定函数的字符串。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.dump)
---
---@param f      async fun()
---@param strip? boolean
---@return string
---@nodiscard
function string.dump(f, strip) end

---
---查找第一个字符串中匹配到的 `pattern`（参见 [§6.4.1](http://www.lua.org/manual/5.4/manual.html#6.4.1)）。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.find)
---
---@param s       string
---@param pattern string
---@param init?   integer
---@param plain?  boolean
---@return integer start
---@return integer end
---@return ... captured
---@nodiscard
function string.find(s, pattern, init, plain) end

---
---返回不定数量参数的格式化版本，格式化串为第一个参数。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.format)
---
---@param s string
---@param ... string
---@return string
---@nodiscard
function string.format(s, ...) end

---
---返回一个迭代器函数。 每次调用这个函数都会继续以 `pattern` （参见　[§6.4.1](http://www.lua.org/manual/5.4/manual.html#6.4.1)） 对 s 做匹配，并返回所有捕获到的值。
---
---下面这个例子会循环迭代字符串 s 中所有的单词， 并逐行打印：
---```lua
---    s =
---"hello world from Lua"
---    for w in string.gmatch(s, "%a+") do
---        print(w)
---    end
---```
---
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.gmatch)
---
---@param s       string
---@param pattern string
---@param init?   integer
---@return fun():string, ...
function string.gmatch(s, pattern, init) end

---
---将字符串 s 中，所有的（或是在 n 给出时的前 n 个） pattern （参见 [§6.4.1](http://www.lua.org/manual/5.4/manual.html#6.4.1)）都替换成 repl ，并返回其副本。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.gsub)
---
---@param s       string
---@param pattern string
---@param repl    string|table|function
---@param n?      integer
---@return string
---@return integer count
---@nodiscard
function string.gsub(s, pattern, repl, n) end

---
---返回其长度。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.len)
---
---@param s string
---@return integer
---@nodiscard
function string.len(s) end

---
---将其中的大写字符都转为小写后返回其副本。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.lower)
---
---@param s string
---@return string
---@nodiscard
function string.lower(s) end

---
---在字符串 s 中找到第一个能用 pattern （参见 [§6.4.1](http://www.lua.org/manual/5.4/manual.html#6.4.1)）匹配到的部分。 如果能找到，match 返回其中的捕获物； 否则返回 nil 。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.match)
---
---@param s       string
---@param pattern string
---@param init?   integer
---@return string | number captured
---@nodiscard
function string.match(s, pattern, init) end

---@version >5.3
---
---返回一个打包了（即以二进制形式序列化） v1, v2 等值的二进制字符串。 字符串 fmt 为打包格式（参见 [§6.4.2](http://www.lua.org/manual/5.4/manual.html#6.4.2)）。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.pack)
---
---@param fmt string
---@param v1  string
---@param v2? string
---@param ... string
---@return string binary
---@nodiscard
function string.pack(fmt, v1, v2, ...) end

---@version >5.3
---
---返回以指定格式用 [string.pack](http://www.lua.org/manual/5.4/manual.html#pdf-string.pack) 打包的字符串的长度。 格式化字符串中不可以有变长选项 's' 或 'z' （参见 [§6.4.2](http://www.lua.org/manual/5.4/manual.html#6.4.2)）。
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.packsize)
---
---@param fmt string
---@return integer
---@nodiscard
function string.packsize(fmt) end

---
---Returns a string that is the concatenation of `n` copies of the string `s` separated by the string `sep`.
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.rep)
---
---@param s    string
---@param n    integer
---@param sep? string
---@return string
---@nodiscard
function string.rep(s, n, sep) end

---
---Returns a string that is the string `s` reversed.
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.reverse)
---
---@param s string
---@return string
---@nodiscard
function string.reverse(s) end

---
---Returns the substring of the string that starts at `i` and continues until `j`.
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.sub)
---
---@param s  string
---@param i  integer
---@param j? integer
---@return string
---@nodiscard
function string.sub(s, i, j) end

---@version >5.3
---
---Returns the values packed in string according to the format string `fmt` (see [§6.4.2](http://www.lua.org/manual/5.4/manual.html#6.4.2)) .
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.unpack)
---
---@param fmt  string
---@param s    string
---@param pos? integer
---@return ...
---@return integer offset
---@nodiscard
function string.unpack(fmt, s, pos) end

---
---Returns a copy of this string with all lowercase letters changed to uppercase.
---
---[查看文档](http://www.lua.org/manual/5.4/manual.html#pdf-string.upper)
---
---@param s string
---@return string
---@nodiscard
function string.upper(s) end

return string
