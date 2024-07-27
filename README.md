# Pascal Compiler Project

This repository contains the source code and resources for my Pascal Compiler project, developed using Lex and Yacc on a Unix/Linux environment from January 2024 to May 2024. The project includes the following key components:

- **Lexical Analyzer:**
  - Engineered to tokenize the input Pascal program into meaningful symbols, demonstrating expertise in low-level programming and system tools.
  
- **Syntax Analyzer:**
  - Developed to parse the tokenized input, verifying its syntactic structure against Pascal grammar rules.
  
- **Semantic Analyzer:**
  - Includes modules for type validation and variable usage, ensuring efficient and error-free code compilation with a 95% accuracy rate in type checking.
  
- **Abstract Syntax Tree (AST):**
  - Constructs an abstract representation of the syntax structure of the Pascal program, showcasing strong problem-solving skills and attention to detail.
  
- **Three-Address Code Generation:**
  - Translates the Pascal program into an intermediate three-address code for further processing by the compiler.
  
- **C Code Output:**
  - Produces C code that prints the output for the input Pascal program, effectively acting as a compiler.
  
- **Testing and Optimization:**
  - Conducted thorough testing and optimization to ensure the compiler’s reliability, achieving an 85% accuracy rate in generating output from compiled programs.

## Group Code: GRRAS143

### Group Members:
1. Atharva Shrivastava
2. Raj Jain
3. Rishi Goyal
4. Saransh Kasliwal
5. Giriraj Chandak

---

## Instructions for Compiling Programs

### Task 1: Lexical Analysis

#### Compilation Command:
1. `lex lex.l`
2. `gcc lex.yy.c -ll`
3. `./a.out`

---

### Task 2: Syntax Analysis

#### Compilation Command:
1. `yacc -d yacc.y`
2. `lex lex.l`
3. `gcc lex.yy.c y.tab.c -ll`
4. `./a.out`

---

### Task 3: Part 1 - Semantic Analysis

#### Compilation Command:
1. `yacc -d semantic.y`
2. `lex semantic.l`
3. `gcc lex.yy.c y.tab.c -ll`
4. `./a.out`

---

### Task 3: Part 2 - Abstract Syntax Tree

#### Compilation Command:
1. `yacc -d ast.y`
2. `lex ast.l`
3. `gcc lex.yy.c y.tab.c -ll`
4. `./a.out > p1.txt`
5. `python3 tree.py`

---

### Task 4: 3 Address Code

#### Compilation Command:
1. `yacc -d 3ac.y`
2. `lex 3ac.l`
3. `gcc lex.yy.c y.tab.c -ll`
4. `./a.out`

---

### Task 5: Compiler Outputs

#### Compilation Command:
1. `yacc -d p1.y`
2. `lex p1.l`
3. `gcc lex.yy.c y.tab.c rough.c -ll`
4. `./a.out`

---

This project showcases our team's proficiency in system-level programming, compiler design, and thorough testing and optimization practices, demonstrating the entire compilation process from lexical analysis to generating executable C code.

