# Shortest Hamiltonian Circuit in Functional Programming

This project is created to fulfill one of college subject's assignment.
We implements Polynomial Algorithm for searching Shortest Hamiltonian Circuit using Haskell language.

We define every vertices into a matrix. The circuit path will be written as a list.

## How to Run

1. First, define the list of vertices. For example:
```
theList = [[0, 1, 6, 8], [1, 0, 1, 8], [6, 1, 0 4], [8, 8, 4, 0]]
```

2. After that, change the list to matrix.
```
theMatrix = fromLists theList
```

3. Run the shortest hamiltonian function.
```
shortestHamiltonian 3 4 theMatrix
```
As we can see, the function has three parameters. The first parameter is the row of vertices that defines the start of circuit. The second parameter define max element of row. And the third parameter is the matrix of vertices.