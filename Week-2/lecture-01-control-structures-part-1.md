Control Structures - Part 1
Control structures in R allow you to control the flow of execution of the program, depending on runtime conditions. Common structures are:

if, else: testing a condition
for: execute a loop a fixed number of times
while: execute a loop while a condition is true
repeat: execute an infinite loop
break: break the execution of a loop
next: skip an iteration of a loop
return: exit a function
Most control structures are not used in interactive sessions, but rather when writing functions or longer expressions.

if

This is a valid if/else structure.

if(x > 3) {
    y <- 10
} else {
    y <- 0
}
So is this one.

y <- if(x > 3) {
    10
} else {
    0
}
for

for loops take an iterator variable and assigns it successive values from a sequence or vector. For loops are most commonly used fro iterating over the elements of an object (list, vector, etc.)

for(i in 1:10) {
    print(i)
}
This loop takes the i variable and in each iteration of the loop gives it values 1, 2, 3, .., 10, and then exits.

These four loops have the same behavior.

x <- c("a", "b", "c", "d")

for(i in 1:4) {
    print(x[i])
}

for(i in seq_along(x)) {
    print(x[i])
}

for(letter in x) {
    print(letter)
}

for(i in 1:4) print(x[i])
Nested for loops

for loops can be nested.

x <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))) {
    for(j in seq_len(ncol(x))) {
        print(x[i])
    }
}
Be careful with nesting though. Nesting beyond 2-3 levels is difficult to read/understand.
