# IZK-Bench

First thing to do is to conver our circuits to the bristol fasion format. This is done with a tool called [boolify](https://github.com/voltrevo/boolify?tab=readme-ov-file)


## [Bristol fasion](https://nigelsmart.github.io/MPC-Circuits/)

The first 2 values are number of gates and number of wires. For example this is the top of an aes circuit in bristol fassion:

First there is the header which has the following information
```
36663 36919 <- Gate and wire count
2 128 128 <- number of input wires here is 2 and each wire is 128 bits
1 128 <- number of output wires here is 1 and of size 128 bits
```

The gates are encoded as follows:
`<Input wires, output wires, List of input wires, list of output wires, gate type>`

So the following gates look like this:
```
2 1 128 0 33254 XOR -> W_33254 = XOR(W_128, W_0)
2 1 129 1 33255 XOR -> W_33255 = XOR(W_129, W_1)
2 1 130 2 33256 XOR -> W_33256 = XOR(W_130, W_2)
2 1 131 3 33257 XOR -> W_33257 = XOR(W_131, W_3)
2 1 132 4 33258 XOR -> W_33258 = XOR(W_132, W_4)
2 1 133 5 33259 XOR -> W_33259 = XOR(W_133, W_5)
2 1 134 6 33260 XOR -> W_33260 = XOR(W_134, W_6)
...
```
