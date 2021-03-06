??%
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8?? 
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?b
*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?b
*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
%res_block/cnn_block_6/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%res_block/cnn_block_6/conv2d_6/kernel
?
9res_block/cnn_block_6/conv2d_6/kernel/Read/ReadVariableOpReadVariableOp%res_block/cnn_block_6/conv2d_6/kernel*&
_output_shapes
: *
dtype0
?
#res_block/cnn_block_6/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#res_block/cnn_block_6/conv2d_6/bias
?
7res_block/cnn_block_6/conv2d_6/bias/Read/ReadVariableOpReadVariableOp#res_block/cnn_block_6/conv2d_6/bias*
_output_shapes
: *
dtype0
?
1res_block/cnn_block_6/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31res_block/cnn_block_6/batch_normalization_6/gamma
?
Eres_block/cnn_block_6/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp1res_block/cnn_block_6/batch_normalization_6/gamma*
_output_shapes
: *
dtype0
?
0res_block/cnn_block_6/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20res_block/cnn_block_6/batch_normalization_6/beta
?
Dres_block/cnn_block_6/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp0res_block/cnn_block_6/batch_normalization_6/beta*
_output_shapes
: *
dtype0
?
%res_block/cnn_block_7/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *6
shared_name'%res_block/cnn_block_7/conv2d_7/kernel
?
9res_block/cnn_block_7/conv2d_7/kernel/Read/ReadVariableOpReadVariableOp%res_block/cnn_block_7/conv2d_7/kernel*&
_output_shapes
:  *
dtype0
?
#res_block/cnn_block_7/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#res_block/cnn_block_7/conv2d_7/bias
?
7res_block/cnn_block_7/conv2d_7/bias/Read/ReadVariableOpReadVariableOp#res_block/cnn_block_7/conv2d_7/bias*
_output_shapes
: *
dtype0
?
1res_block/cnn_block_7/batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *B
shared_name31res_block/cnn_block_7/batch_normalization_7/gamma
?
Eres_block/cnn_block_7/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOp1res_block/cnn_block_7/batch_normalization_7/gamma*
_output_shapes
: *
dtype0
?
0res_block/cnn_block_7/batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *A
shared_name20res_block/cnn_block_7/batch_normalization_7/beta
?
Dres_block/cnn_block_7/batch_normalization_7/beta/Read/ReadVariableOpReadVariableOp0res_block/cnn_block_7/batch_normalization_7/beta*
_output_shapes
: *
dtype0
?
%res_block/cnn_block_8/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*6
shared_name'%res_block/cnn_block_8/conv2d_8/kernel
?
9res_block/cnn_block_8/conv2d_8/kernel/Read/ReadVariableOpReadVariableOp%res_block/cnn_block_8/conv2d_8/kernel*&
_output_shapes
: @*
dtype0
?
#res_block/cnn_block_8/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#res_block/cnn_block_8/conv2d_8/bias
?
7res_block/cnn_block_8/conv2d_8/bias/Read/ReadVariableOpReadVariableOp#res_block/cnn_block_8/conv2d_8/bias*
_output_shapes
:@*
dtype0
?
1res_block/cnn_block_8/batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31res_block/cnn_block_8/batch_normalization_8/gamma
?
Eres_block/cnn_block_8/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOp1res_block/cnn_block_8/batch_normalization_8/gamma*
_output_shapes
:@*
dtype0
?
0res_block/cnn_block_8/batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*A
shared_name20res_block/cnn_block_8/batch_normalization_8/beta
?
Dres_block/cnn_block_8/batch_normalization_8/beta/Read/ReadVariableOpReadVariableOp0res_block/cnn_block_8/batch_normalization_8/beta*
_output_shapes
:@*
dtype0
?
res_block/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameres_block/conv2d_9/kernel
?
-res_block/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpres_block/conv2d_9/kernel*&
_output_shapes
: *
dtype0
?
res_block/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameres_block/conv2d_9/bias

+res_block/conv2d_9/bias/Read/ReadVariableOpReadVariableOpres_block/conv2d_9/bias*
_output_shapes
: *
dtype0
?
7res_block/cnn_block_6/batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97res_block/cnn_block_6/batch_normalization_6/moving_mean
?
Kres_block/cnn_block_6/batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp7res_block/cnn_block_6/batch_normalization_6/moving_mean*
_output_shapes
: *
dtype0
?
;res_block/cnn_block_6/batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *L
shared_name=;res_block/cnn_block_6/batch_normalization_6/moving_variance
?
Ores_block/cnn_block_6/batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp;res_block/cnn_block_6/batch_normalization_6/moving_variance*
_output_shapes
: *
dtype0
?
7res_block/cnn_block_7/batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97res_block/cnn_block_7/batch_normalization_7/moving_mean
?
Kres_block/cnn_block_7/batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp7res_block/cnn_block_7/batch_normalization_7/moving_mean*
_output_shapes
: *
dtype0
?
;res_block/cnn_block_7/batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *L
shared_name=;res_block/cnn_block_7/batch_normalization_7/moving_variance
?
Ores_block/cnn_block_7/batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp;res_block/cnn_block_7/batch_normalization_7/moving_variance*
_output_shapes
: *
dtype0
?
7res_block/cnn_block_8/batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*H
shared_name97res_block/cnn_block_8/batch_normalization_8/moving_mean
?
Kres_block/cnn_block_8/batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp7res_block/cnn_block_8/batch_normalization_8/moving_mean*
_output_shapes
:@*
dtype0
?
;res_block/cnn_block_8/batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;res_block/cnn_block_8/batch_normalization_8/moving_variance
?
Ores_block/cnn_block_8/batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp;res_block/cnn_block_8/batch_normalization_8/moving_variance*
_output_shapes
:@*
dtype0
?
(res_block_1/cnn_block_9/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*9
shared_name*(res_block_1/cnn_block_9/conv2d_10/kernel
?
<res_block_1/cnn_block_9/conv2d_10/kernel/Read/ReadVariableOpReadVariableOp(res_block_1/cnn_block_9/conv2d_10/kernel*'
_output_shapes
:@?*
dtype0
?
&res_block_1/cnn_block_9/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&res_block_1/cnn_block_9/conv2d_10/bias
?
:res_block_1/cnn_block_9/conv2d_10/bias/Read/ReadVariableOpReadVariableOp&res_block_1/cnn_block_9/conv2d_10/bias*
_output_shapes	
:?*
dtype0
?
3res_block_1/cnn_block_9/batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*D
shared_name53res_block_1/cnn_block_9/batch_normalization_9/gamma
?
Gres_block_1/cnn_block_9/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOp3res_block_1/cnn_block_9/batch_normalization_9/gamma*
_output_shapes	
:?*
dtype0
?
2res_block_1/cnn_block_9/batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*C
shared_name42res_block_1/cnn_block_9/batch_normalization_9/beta
?
Fres_block_1/cnn_block_9/batch_normalization_9/beta/Read/ReadVariableOpReadVariableOp2res_block_1/cnn_block_9/batch_normalization_9/beta*
_output_shapes	
:?*
dtype0
?
)res_block_1/cnn_block_10/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*:
shared_name+)res_block_1/cnn_block_10/conv2d_11/kernel
?
=res_block_1/cnn_block_10/conv2d_11/kernel/Read/ReadVariableOpReadVariableOp)res_block_1/cnn_block_10/conv2d_11/kernel*(
_output_shapes
:??*
dtype0
?
'res_block_1/cnn_block_10/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'res_block_1/cnn_block_10/conv2d_11/bias
?
;res_block_1/cnn_block_10/conv2d_11/bias/Read/ReadVariableOpReadVariableOp'res_block_1/cnn_block_10/conv2d_11/bias*
_output_shapes	
:?*
dtype0
?
5res_block_1/cnn_block_10/batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75res_block_1/cnn_block_10/batch_normalization_10/gamma
?
Ires_block_1/cnn_block_10/batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOp5res_block_1/cnn_block_10/batch_normalization_10/gamma*
_output_shapes	
:?*
dtype0
?
4res_block_1/cnn_block_10/batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64res_block_1/cnn_block_10/batch_normalization_10/beta
?
Hres_block_1/cnn_block_10/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOp4res_block_1/cnn_block_10/batch_normalization_10/beta*
_output_shapes	
:?*
dtype0
?
)res_block_1/cnn_block_11/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*:
shared_name+)res_block_1/cnn_block_11/conv2d_12/kernel
?
=res_block_1/cnn_block_11/conv2d_12/kernel/Read/ReadVariableOpReadVariableOp)res_block_1/cnn_block_11/conv2d_12/kernel*(
_output_shapes
:??*
dtype0
?
'res_block_1/cnn_block_11/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'res_block_1/cnn_block_11/conv2d_12/bias
?
;res_block_1/cnn_block_11/conv2d_12/bias/Read/ReadVariableOpReadVariableOp'res_block_1/cnn_block_11/conv2d_12/bias*
_output_shapes	
:?*
dtype0
?
5res_block_1/cnn_block_11/batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75res_block_1/cnn_block_11/batch_normalization_11/gamma
?
Ires_block_1/cnn_block_11/batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOp5res_block_1/cnn_block_11/batch_normalization_11/gamma*
_output_shapes	
:?*
dtype0
?
4res_block_1/cnn_block_11/batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64res_block_1/cnn_block_11/batch_normalization_11/beta
?
Hres_block_1/cnn_block_11/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOp4res_block_1/cnn_block_11/batch_normalization_11/beta*
_output_shapes	
:?*
dtype0
?
res_block_1/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*-
shared_nameres_block_1/conv2d_13/kernel
?
0res_block_1/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpres_block_1/conv2d_13/kernel*'
_output_shapes
:@?*
dtype0
?
res_block_1/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameres_block_1/conv2d_13/bias
?
.res_block_1/conv2d_13/bias/Read/ReadVariableOpReadVariableOpres_block_1/conv2d_13/bias*
_output_shapes	
:?*
dtype0
?
9res_block_1/cnn_block_9/batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*J
shared_name;9res_block_1/cnn_block_9/batch_normalization_9/moving_mean
?
Mres_block_1/cnn_block_9/batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp9res_block_1/cnn_block_9/batch_normalization_9/moving_mean*
_output_shapes	
:?*
dtype0
?
=res_block_1/cnn_block_9/batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=res_block_1/cnn_block_9/batch_normalization_9/moving_variance
?
Qres_block_1/cnn_block_9/batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp=res_block_1/cnn_block_9/batch_normalization_9/moving_variance*
_output_shapes	
:?*
dtype0
?
;res_block_1/cnn_block_10/batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;res_block_1/cnn_block_10/batch_normalization_10/moving_mean
?
Ores_block_1/cnn_block_10/batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp;res_block_1/cnn_block_10/batch_normalization_10/moving_mean*
_output_shapes	
:?*
dtype0
?
?res_block_1/cnn_block_10/batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?res_block_1/cnn_block_10/batch_normalization_10/moving_variance
?
Sres_block_1/cnn_block_10/batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp?res_block_1/cnn_block_10/batch_normalization_10/moving_variance*
_output_shapes	
:?*
dtype0
?
;res_block_1/cnn_block_11/batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;res_block_1/cnn_block_11/batch_normalization_11/moving_mean
?
Ores_block_1/cnn_block_11/batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp;res_block_1/cnn_block_11/batch_normalization_11/moving_mean*
_output_shapes	
:?*
dtype0
?
?res_block_1/cnn_block_11/batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?res_block_1/cnn_block_11/batch_normalization_11/moving_variance
?
Sres_block_1/cnn_block_11/batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp?res_block_1/cnn_block_11/batch_normalization_11/moving_variance*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?b
*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?b
*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:
*
dtype0
?
,Adam/res_block/cnn_block_6/conv2d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/res_block/cnn_block_6/conv2d_6/kernel/m
?
@Adam/res_block/cnn_block_6/conv2d_6/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/res_block/cnn_block_6/conv2d_6/kernel/m*&
_output_shapes
: *
dtype0
?
*Adam/res_block/cnn_block_6/conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/res_block/cnn_block_6/conv2d_6/bias/m
?
>Adam/res_block/cnn_block_6/conv2d_6/bias/m/Read/ReadVariableOpReadVariableOp*Adam/res_block/cnn_block_6/conv2d_6/bias/m*
_output_shapes
: *
dtype0
?
8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *I
shared_name:8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/m
?
LAdam/res_block/cnn_block_6/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/m*
_output_shapes
: *
dtype0
?
7Adam/res_block/cnn_block_6/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/res_block/cnn_block_6/batch_normalization_6/beta/m
?
KAdam/res_block/cnn_block_6/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp7Adam/res_block/cnn_block_6/batch_normalization_6/beta/m*
_output_shapes
: *
dtype0
?
,Adam/res_block/cnn_block_7/conv2d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *=
shared_name.,Adam/res_block/cnn_block_7/conv2d_7/kernel/m
?
@Adam/res_block/cnn_block_7/conv2d_7/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/res_block/cnn_block_7/conv2d_7/kernel/m*&
_output_shapes
:  *
dtype0
?
*Adam/res_block/cnn_block_7/conv2d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/res_block/cnn_block_7/conv2d_7/bias/m
?
>Adam/res_block/cnn_block_7/conv2d_7/bias/m/Read/ReadVariableOpReadVariableOp*Adam/res_block/cnn_block_7/conv2d_7/bias/m*
_output_shapes
: *
dtype0
?
8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *I
shared_name:8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/m
?
LAdam/res_block/cnn_block_7/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/m*
_output_shapes
: *
dtype0
?
7Adam/res_block/cnn_block_7/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/res_block/cnn_block_7/batch_normalization_7/beta/m
?
KAdam/res_block/cnn_block_7/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp7Adam/res_block/cnn_block_7/batch_normalization_7/beta/m*
_output_shapes
: *
dtype0
?
,Adam/res_block/cnn_block_8/conv2d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*=
shared_name.,Adam/res_block/cnn_block_8/conv2d_8/kernel/m
?
@Adam/res_block/cnn_block_8/conv2d_8/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/res_block/cnn_block_8/conv2d_8/kernel/m*&
_output_shapes
: @*
dtype0
?
*Adam/res_block/cnn_block_8/conv2d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/res_block/cnn_block_8/conv2d_8/bias/m
?
>Adam/res_block/cnn_block_8/conv2d_8/bias/m/Read/ReadVariableOpReadVariableOp*Adam/res_block/cnn_block_8/conv2d_8/bias/m*
_output_shapes
:@*
dtype0
?
8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/m
?
LAdam/res_block/cnn_block_8/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/m*
_output_shapes
:@*
dtype0
?
7Adam/res_block/cnn_block_8/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*H
shared_name97Adam/res_block/cnn_block_8/batch_normalization_8/beta/m
?
KAdam/res_block/cnn_block_8/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp7Adam/res_block/cnn_block_8/batch_normalization_8/beta/m*
_output_shapes
:@*
dtype0
?
 Adam/res_block/conv2d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/res_block/conv2d_9/kernel/m
?
4Adam/res_block/conv2d_9/kernel/m/Read/ReadVariableOpReadVariableOp Adam/res_block/conv2d_9/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/res_block/conv2d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/res_block/conv2d_9/bias/m
?
2Adam/res_block/conv2d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/res_block/conv2d_9/bias/m*
_output_shapes
: *
dtype0
?
/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*@
shared_name1/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/m
?
CAdam/res_block_1/cnn_block_9/conv2d_10/kernel/m/Read/ReadVariableOpReadVariableOp/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/m*'
_output_shapes
:@?*
dtype0
?
-Adam/res_block_1/cnn_block_9/conv2d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-Adam/res_block_1/cnn_block_9/conv2d_10/bias/m
?
AAdam/res_block_1/cnn_block_9/conv2d_10/bias/m/Read/ReadVariableOpReadVariableOp-Adam/res_block_1/cnn_block_9/conv2d_10/bias/m*
_output_shapes	
:?*
dtype0
?
:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*K
shared_name<:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/m
?
NAdam/res_block_1/cnn_block_9/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/m*
_output_shapes	
:?*
dtype0
?
9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*J
shared_name;9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/m
?
MAdam/res_block_1/cnn_block_9/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/m*
_output_shapes	
:?*
dtype0
?
0Adam/res_block_1/cnn_block_10/conv2d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*A
shared_name20Adam/res_block_1/cnn_block_10/conv2d_11/kernel/m
?
DAdam/res_block_1/cnn_block_10/conv2d_11/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/res_block_1/cnn_block_10/conv2d_11/kernel/m*(
_output_shapes
:??*
dtype0
?
.Adam/res_block_1/cnn_block_10/conv2d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.Adam/res_block_1/cnn_block_10/conv2d_11/bias/m
?
BAdam/res_block_1/cnn_block_10/conv2d_11/bias/m/Read/ReadVariableOpReadVariableOp.Adam/res_block_1/cnn_block_10/conv2d_11/bias/m*
_output_shapes	
:?*
dtype0
?
<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*M
shared_name><Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/m
?
PAdam/res_block_1/cnn_block_10/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/m*
_output_shapes	
:?*
dtype0
?
;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/m
?
OAdam/res_block_1/cnn_block_10/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/m*
_output_shapes	
:?*
dtype0
?
0Adam/res_block_1/cnn_block_11/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*A
shared_name20Adam/res_block_1/cnn_block_11/conv2d_12/kernel/m
?
DAdam/res_block_1/cnn_block_11/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/res_block_1/cnn_block_11/conv2d_12/kernel/m*(
_output_shapes
:??*
dtype0
?
.Adam/res_block_1/cnn_block_11/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.Adam/res_block_1/cnn_block_11/conv2d_12/bias/m
?
BAdam/res_block_1/cnn_block_11/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOp.Adam/res_block_1/cnn_block_11/conv2d_12/bias/m*
_output_shapes	
:?*
dtype0
?
<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*M
shared_name><Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/m
?
PAdam/res_block_1/cnn_block_11/batch_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/m*
_output_shapes	
:?*
dtype0
?
;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/m
?
OAdam/res_block_1/cnn_block_11/batch_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/m*
_output_shapes	
:?*
dtype0
?
#Adam/res_block_1/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*4
shared_name%#Adam/res_block_1/conv2d_13/kernel/m
?
7Adam/res_block_1/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/res_block_1/conv2d_13/kernel/m*'
_output_shapes
:@?*
dtype0
?
!Adam/res_block_1/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/res_block_1/conv2d_13/bias/m
?
5Adam/res_block_1/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOp!Adam/res_block_1/conv2d_13/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?b
*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?b
*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:
*
dtype0
?
,Adam/res_block/cnn_block_6/conv2d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/res_block/cnn_block_6/conv2d_6/kernel/v
?
@Adam/res_block/cnn_block_6/conv2d_6/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/res_block/cnn_block_6/conv2d_6/kernel/v*&
_output_shapes
: *
dtype0
?
*Adam/res_block/cnn_block_6/conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/res_block/cnn_block_6/conv2d_6/bias/v
?
>Adam/res_block/cnn_block_6/conv2d_6/bias/v/Read/ReadVariableOpReadVariableOp*Adam/res_block/cnn_block_6/conv2d_6/bias/v*
_output_shapes
: *
dtype0
?
8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *I
shared_name:8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/v
?
LAdam/res_block/cnn_block_6/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/v*
_output_shapes
: *
dtype0
?
7Adam/res_block/cnn_block_6/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/res_block/cnn_block_6/batch_normalization_6/beta/v
?
KAdam/res_block/cnn_block_6/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp7Adam/res_block/cnn_block_6/batch_normalization_6/beta/v*
_output_shapes
: *
dtype0
?
,Adam/res_block/cnn_block_7/conv2d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *=
shared_name.,Adam/res_block/cnn_block_7/conv2d_7/kernel/v
?
@Adam/res_block/cnn_block_7/conv2d_7/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/res_block/cnn_block_7/conv2d_7/kernel/v*&
_output_shapes
:  *
dtype0
?
*Adam/res_block/cnn_block_7/conv2d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/res_block/cnn_block_7/conv2d_7/bias/v
?
>Adam/res_block/cnn_block_7/conv2d_7/bias/v/Read/ReadVariableOpReadVariableOp*Adam/res_block/cnn_block_7/conv2d_7/bias/v*
_output_shapes
: *
dtype0
?
8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *I
shared_name:8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/v
?
LAdam/res_block/cnn_block_7/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/v*
_output_shapes
: *
dtype0
?
7Adam/res_block/cnn_block_7/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *H
shared_name97Adam/res_block/cnn_block_7/batch_normalization_7/beta/v
?
KAdam/res_block/cnn_block_7/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp7Adam/res_block/cnn_block_7/batch_normalization_7/beta/v*
_output_shapes
: *
dtype0
?
,Adam/res_block/cnn_block_8/conv2d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*=
shared_name.,Adam/res_block/cnn_block_8/conv2d_8/kernel/v
?
@Adam/res_block/cnn_block_8/conv2d_8/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/res_block/cnn_block_8/conv2d_8/kernel/v*&
_output_shapes
: @*
dtype0
?
*Adam/res_block/cnn_block_8/conv2d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/res_block/cnn_block_8/conv2d_8/bias/v
?
>Adam/res_block/cnn_block_8/conv2d_8/bias/v/Read/ReadVariableOpReadVariableOp*Adam/res_block/cnn_block_8/conv2d_8/bias/v*
_output_shapes
:@*
dtype0
?
8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/v
?
LAdam/res_block/cnn_block_8/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/v*
_output_shapes
:@*
dtype0
?
7Adam/res_block/cnn_block_8/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*H
shared_name97Adam/res_block/cnn_block_8/batch_normalization_8/beta/v
?
KAdam/res_block/cnn_block_8/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp7Adam/res_block/cnn_block_8/batch_normalization_8/beta/v*
_output_shapes
:@*
dtype0
?
 Adam/res_block/conv2d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/res_block/conv2d_9/kernel/v
?
4Adam/res_block/conv2d_9/kernel/v/Read/ReadVariableOpReadVariableOp Adam/res_block/conv2d_9/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/res_block/conv2d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/res_block/conv2d_9/bias/v
?
2Adam/res_block/conv2d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/res_block/conv2d_9/bias/v*
_output_shapes
: *
dtype0
?
/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*@
shared_name1/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/v
?
CAdam/res_block_1/cnn_block_9/conv2d_10/kernel/v/Read/ReadVariableOpReadVariableOp/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/v*'
_output_shapes
:@?*
dtype0
?
-Adam/res_block_1/cnn_block_9/conv2d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-Adam/res_block_1/cnn_block_9/conv2d_10/bias/v
?
AAdam/res_block_1/cnn_block_9/conv2d_10/bias/v/Read/ReadVariableOpReadVariableOp-Adam/res_block_1/cnn_block_9/conv2d_10/bias/v*
_output_shapes	
:?*
dtype0
?
:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*K
shared_name<:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/v
?
NAdam/res_block_1/cnn_block_9/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/v*
_output_shapes	
:?*
dtype0
?
9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*J
shared_name;9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/v
?
MAdam/res_block_1/cnn_block_9/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/v*
_output_shapes	
:?*
dtype0
?
0Adam/res_block_1/cnn_block_10/conv2d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*A
shared_name20Adam/res_block_1/cnn_block_10/conv2d_11/kernel/v
?
DAdam/res_block_1/cnn_block_10/conv2d_11/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/res_block_1/cnn_block_10/conv2d_11/kernel/v*(
_output_shapes
:??*
dtype0
?
.Adam/res_block_1/cnn_block_10/conv2d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.Adam/res_block_1/cnn_block_10/conv2d_11/bias/v
?
BAdam/res_block_1/cnn_block_10/conv2d_11/bias/v/Read/ReadVariableOpReadVariableOp.Adam/res_block_1/cnn_block_10/conv2d_11/bias/v*
_output_shapes	
:?*
dtype0
?
<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*M
shared_name><Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/v
?
PAdam/res_block_1/cnn_block_10/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/v*
_output_shapes	
:?*
dtype0
?
;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/v
?
OAdam/res_block_1/cnn_block_10/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/v*
_output_shapes	
:?*
dtype0
?
0Adam/res_block_1/cnn_block_11/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*A
shared_name20Adam/res_block_1/cnn_block_11/conv2d_12/kernel/v
?
DAdam/res_block_1/cnn_block_11/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/res_block_1/cnn_block_11/conv2d_12/kernel/v*(
_output_shapes
:??*
dtype0
?
.Adam/res_block_1/cnn_block_11/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.Adam/res_block_1/cnn_block_11/conv2d_12/bias/v
?
BAdam/res_block_1/cnn_block_11/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOp.Adam/res_block_1/cnn_block_11/conv2d_12/bias/v*
_output_shapes	
:?*
dtype0
?
<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*M
shared_name><Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/v
?
PAdam/res_block_1/cnn_block_11/batch_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/v*
_output_shapes	
:?*
dtype0
?
;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/v
?
OAdam/res_block_1/cnn_block_11/batch_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/v*
_output_shapes	
:?*
dtype0
?
#Adam/res_block_1/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*4
shared_name%#Adam/res_block_1/conv2d_13/kernel/v
?
7Adam/res_block_1/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/res_block_1/conv2d_13/kernel/v*'
_output_shapes
:@?*
dtype0
?
!Adam/res_block_1/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/res_block_1/conv2d_13/bias/v
?
5Adam/res_block_1/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOp!Adam/res_block_1/conv2d_13/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
 
?
channels
cnn1
cnn2
cnn3
pooling
identity_mapping
regularization_losses
	variables
trainable_variables
	keras_api
?
channels
cnn1
cnn2
cnn3
pooling
identity_mapping
regularization_losses
	variables
trainable_variables
	keras_api
R
 regularization_losses
!	variables
"trainable_variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
?
*iter

+beta_1

,beta_2
	-decay
.learning_rate$m?%m?/m?0m?1m?2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?<m?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?Pm?$v?%v?/v?0v?1v?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?<v?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?Pv?
 
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21
E22
F23
G24
H25
I26
J27
K28
L29
M30
N31
O32
P33
Q34
R35
S36
T37
U38
V39
$40
%41
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
O26
P27
$28
%29
?
Wmetrics
Xlayer_regularization_losses
regularization_losses
Ylayer_metrics
Znon_trainable_variables
	variables

[layers
	trainable_variables
 
 
d
\conv
]bn
^regularization_losses
_	variables
`trainable_variables
a	keras_api
d
bconv
cbn
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
d
hconv
ibn
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
R
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
h

;kernel
<bias
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
 
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
f
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
?
vmetrics
wlayer_regularization_losses
regularization_losses
xlayer_metrics
ynon_trainable_variables
	variables

zlayers
trainable_variables
 
e
{conv
|bn
}regularization_losses
~	variables
trainable_variables
?	keras_api
j
	?conv
?bn
?regularization_losses
?	variables
?trainable_variables
?	keras_api
j
	?conv
?bn
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

Okernel
Pbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
?
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17
U18
V19
f
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
?
?metrics
 ?layer_regularization_losses
regularization_losses
?layer_metrics
?non_trainable_variables
	variables
?layers
trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
 regularization_losses
?layer_metrics
?non_trainable_variables
!	variables
?layers
"trainable_variables
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
?
?metrics
 ?layer_regularization_losses
&regularization_losses
?layer_metrics
?non_trainable_variables
'	variables
?layers
(trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%res_block/cnn_block_6/conv2d_6/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#res_block/cnn_block_6/conv2d_6/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1res_block/cnn_block_6/batch_normalization_6/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0res_block/cnn_block_6/batch_normalization_6/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%res_block/cnn_block_7/conv2d_7/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#res_block/cnn_block_7/conv2d_7/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1res_block/cnn_block_7/batch_normalization_7/gamma&variables/6/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0res_block/cnn_block_7/batch_normalization_7/beta&variables/7/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%res_block/cnn_block_8/conv2d_8/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#res_block/cnn_block_8/conv2d_8/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1res_block/cnn_block_8/batch_normalization_8/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE0res_block/cnn_block_8/batch_normalization_8/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEres_block/conv2d_9/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEres_block/conv2d_9/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7res_block/cnn_block_6/batch_normalization_6/moving_mean'variables/14/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE;res_block/cnn_block_6/batch_normalization_6/moving_variance'variables/15/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7res_block/cnn_block_7/batch_normalization_7/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE;res_block/cnn_block_7/batch_normalization_7/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7res_block/cnn_block_8/batch_normalization_8/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE;res_block/cnn_block_8/batch_normalization_8/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE(res_block_1/cnn_block_9/conv2d_10/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&res_block_1/cnn_block_9/conv2d_10/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3res_block_1/cnn_block_9/batch_normalization_9/gamma'variables/22/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2res_block_1/cnn_block_9/batch_normalization_9/beta'variables/23/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)res_block_1/cnn_block_10/conv2d_11/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE'res_block_1/cnn_block_10/conv2d_11/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE5res_block_1/cnn_block_10/batch_normalization_10/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE4res_block_1/cnn_block_10/batch_normalization_10/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE)res_block_1/cnn_block_11/conv2d_12/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE'res_block_1/cnn_block_11/conv2d_12/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE5res_block_1/cnn_block_11/batch_normalization_11/gamma'variables/30/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE4res_block_1/cnn_block_11/batch_normalization_11/beta'variables/31/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEres_block_1/conv2d_13/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEres_block_1/conv2d_13/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE9res_block_1/cnn_block_9/batch_normalization_9/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE=res_block_1/cnn_block_9/batch_normalization_9/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE;res_block_1/cnn_block_10/batch_normalization_10/moving_mean'variables/36/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE?res_block_1/cnn_block_10/batch_normalization_10/moving_variance'variables/37/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE;res_block_1/cnn_block_11/batch_normalization_11/moving_mean'variables/38/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE?res_block_1/cnn_block_11/batch_normalization_11/moving_variance'variables/39/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
 
V
=0
>1
?2
@3
A4
B5
Q6
R7
S8
T9
U10
V11
#
0
1
2
3
4
l

/kernel
0bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?axis
	1gamma
2beta
=moving_mean
>moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
*
/0
01
12
23
=4
>5

/0
01
12
23
?
?metrics
 ?layer_regularization_losses
^regularization_losses
?layer_metrics
?non_trainable_variables
_	variables
?layers
`trainable_variables
l

3kernel
4bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?axis
	5gamma
6beta
?moving_mean
@moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
*
30
41
52
63
?4
@5

30
41
52
63
?
?metrics
 ?layer_regularization_losses
dregularization_losses
?layer_metrics
?non_trainable_variables
e	variables
?layers
ftrainable_variables
l

7kernel
8bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?axis
	9gamma
:beta
Amoving_mean
Bmoving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
*
70
81
92
:3
A4
B5

70
81
92
:3
?
?metrics
 ?layer_regularization_losses
jregularization_losses
?layer_metrics
?non_trainable_variables
k	variables
?layers
ltrainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
nregularization_losses
?layer_metrics
?non_trainable_variables
o	variables
?layers
ptrainable_variables
 

;0
<1

;0
<1
?
?metrics
 ?layer_regularization_losses
rregularization_losses
?layer_metrics
?non_trainable_variables
s	variables
?layers
ttrainable_variables
 
 
 
*
=0
>1
?2
@3
A4
B5
#
0
1
2
3
4
l

Ckernel
Dbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?axis
	Egamma
Fbeta
Qmoving_mean
Rmoving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
*
C0
D1
E2
F3
Q4
R5

C0
D1
E2
F3
?
?metrics
 ?layer_regularization_losses
}regularization_losses
?layer_metrics
?non_trainable_variables
~	variables
?layers
trainable_variables
l

Gkernel
Hbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?axis
	Igamma
Jbeta
Smoving_mean
Tmoving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
*
G0
H1
I2
J3
S4
T5

G0
H1
I2
J3
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
l

Kkernel
Lbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?axis
	Mgamma
Nbeta
Umoving_mean
Vmoving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
*
K0
L1
M2
N3
U4
V5

K0
L1
M2
N3
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 
 
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 

O0
P1

O0
P1
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 
 
*
Q0
R1
S2
T3
U4
V5
#
0
1
2
3
4
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 

/0
01

/0
01
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 

10
21
=2
>3

10
21
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 
 

=0
>1

\0
]1
 

30
41

30
41
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 

50
61
?2
@3

50
61
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 
 

?0
@1

b0
c1
 

70
81

70
81
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 

90
:1
A2
B3

90
:1
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 
 

A0
B1

h0
i1
 
 
 
 
 
 
 
 
 
 
 

C0
D1

C0
D1
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 

E0
F1
Q2
R3

E0
F1
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 
 

Q0
R1

{0
|1
 

G0
H1

G0
H1
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 

I0
J1
S2
T3

I0
J1
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 
 

S0
T1

?0
?1
 

K0
L1

K0
L1
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 

M0
N1
U2
V3

M0
N1
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
 
 
 

U0
V1

?0
?1
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
 
 
 
 
 
 
 
 

=0
>1
 
 
 
 
 
 
 
 
 

?0
@1
 
 
 
 
 
 
 
 
 

A0
B1
 
 
 
 
 
 
 
 
 

Q0
R1
 
 
 
 
 
 
 
 
 

S0
T1
 
 
 
 
 
 
 
 
 

U0
V1
 
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/res_block/cnn_block_6/conv2d_6/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/res_block/cnn_block_6/conv2d_6/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/res_block/cnn_block_6/batch_normalization_6/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/res_block/cnn_block_7/conv2d_7/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/res_block/cnn_block_7/conv2d_7/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/res_block/cnn_block_7/batch_normalization_7/beta/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/res_block/cnn_block_8/conv2d_8/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/res_block/cnn_block_8/conv2d_8/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/res_block/cnn_block_8/batch_normalization_8/beta/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/res_block/conv2d_9/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/res_block/conv2d_9/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE-Adam/res_block_1/cnn_block_9/conv2d_10/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/res_block_1/cnn_block_10/conv2d_11/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/res_block_1/cnn_block_10/conv2d_11/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/res_block_1/cnn_block_11/conv2d_12/kernel/mCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/res_block_1/cnn_block_11/conv2d_12/bias/mCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/res_block_1/conv2d_13/kernel/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!Adam/res_block_1/conv2d_13/bias/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/res_block/cnn_block_6/conv2d_6/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/res_block/cnn_block_6/conv2d_6/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/res_block/cnn_block_6/batch_normalization_6/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/res_block/cnn_block_7/conv2d_7/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/res_block/cnn_block_7/conv2d_7/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/res_block/cnn_block_7/batch_normalization_7/beta/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/res_block/cnn_block_8/conv2d_8/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/res_block/cnn_block_8/conv2d_8/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE7Adam/res_block/cnn_block_8/batch_normalization_8/beta/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/res_block/conv2d_9/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/res_block/conv2d_9/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE-Adam/res_block_1/cnn_block_9/conv2d_10/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/res_block_1/cnn_block_10/conv2d_11/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/res_block_1/cnn_block_10/conv2d_11/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE0Adam/res_block_1/cnn_block_11/conv2d_12/kernel/vCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/res_block_1/cnn_block_11/conv2d_12/bias/vCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/res_block_1/conv2d_13/kernel/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!Adam/res_block_1/conv2d_13/bias/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1%res_block/cnn_block_6/conv2d_6/kernel#res_block/cnn_block_6/conv2d_6/bias1res_block/cnn_block_6/batch_normalization_6/gamma0res_block/cnn_block_6/batch_normalization_6/beta7res_block/cnn_block_6/batch_normalization_6/moving_mean;res_block/cnn_block_6/batch_normalization_6/moving_variance%res_block/cnn_block_7/conv2d_7/kernel#res_block/cnn_block_7/conv2d_7/bias1res_block/cnn_block_7/batch_normalization_7/gamma0res_block/cnn_block_7/batch_normalization_7/beta7res_block/cnn_block_7/batch_normalization_7/moving_mean;res_block/cnn_block_7/batch_normalization_7/moving_varianceres_block/conv2d_9/kernelres_block/conv2d_9/bias%res_block/cnn_block_8/conv2d_8/kernel#res_block/cnn_block_8/conv2d_8/bias1res_block/cnn_block_8/batch_normalization_8/gamma0res_block/cnn_block_8/batch_normalization_8/beta7res_block/cnn_block_8/batch_normalization_8/moving_mean;res_block/cnn_block_8/batch_normalization_8/moving_variance(res_block_1/cnn_block_9/conv2d_10/kernel&res_block_1/cnn_block_9/conv2d_10/bias3res_block_1/cnn_block_9/batch_normalization_9/gamma2res_block_1/cnn_block_9/batch_normalization_9/beta9res_block_1/cnn_block_9/batch_normalization_9/moving_mean=res_block_1/cnn_block_9/batch_normalization_9/moving_variance)res_block_1/cnn_block_10/conv2d_11/kernel'res_block_1/cnn_block_10/conv2d_11/bias5res_block_1/cnn_block_10/batch_normalization_10/gamma4res_block_1/cnn_block_10/batch_normalization_10/beta;res_block_1/cnn_block_10/batch_normalization_10/moving_mean?res_block_1/cnn_block_10/batch_normalization_10/moving_varianceres_block_1/conv2d_13/kernelres_block_1/conv2d_13/bias)res_block_1/cnn_block_11/conv2d_12/kernel'res_block_1/cnn_block_11/conv2d_12/bias5res_block_1/cnn_block_11/batch_normalization_11/gamma4res_block_1/cnn_block_11/batch_normalization_11/beta;res_block_1/cnn_block_11/batch_normalization_11/moving_mean?res_block_1/cnn_block_11/batch_normalization_11/moving_variancedense_3/kerneldense_3/bias*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_13767
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?;
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp9res_block/cnn_block_6/conv2d_6/kernel/Read/ReadVariableOp7res_block/cnn_block_6/conv2d_6/bias/Read/ReadVariableOpEres_block/cnn_block_6/batch_normalization_6/gamma/Read/ReadVariableOpDres_block/cnn_block_6/batch_normalization_6/beta/Read/ReadVariableOp9res_block/cnn_block_7/conv2d_7/kernel/Read/ReadVariableOp7res_block/cnn_block_7/conv2d_7/bias/Read/ReadVariableOpEres_block/cnn_block_7/batch_normalization_7/gamma/Read/ReadVariableOpDres_block/cnn_block_7/batch_normalization_7/beta/Read/ReadVariableOp9res_block/cnn_block_8/conv2d_8/kernel/Read/ReadVariableOp7res_block/cnn_block_8/conv2d_8/bias/Read/ReadVariableOpEres_block/cnn_block_8/batch_normalization_8/gamma/Read/ReadVariableOpDres_block/cnn_block_8/batch_normalization_8/beta/Read/ReadVariableOp-res_block/conv2d_9/kernel/Read/ReadVariableOp+res_block/conv2d_9/bias/Read/ReadVariableOpKres_block/cnn_block_6/batch_normalization_6/moving_mean/Read/ReadVariableOpOres_block/cnn_block_6/batch_normalization_6/moving_variance/Read/ReadVariableOpKres_block/cnn_block_7/batch_normalization_7/moving_mean/Read/ReadVariableOpOres_block/cnn_block_7/batch_normalization_7/moving_variance/Read/ReadVariableOpKres_block/cnn_block_8/batch_normalization_8/moving_mean/Read/ReadVariableOpOres_block/cnn_block_8/batch_normalization_8/moving_variance/Read/ReadVariableOp<res_block_1/cnn_block_9/conv2d_10/kernel/Read/ReadVariableOp:res_block_1/cnn_block_9/conv2d_10/bias/Read/ReadVariableOpGres_block_1/cnn_block_9/batch_normalization_9/gamma/Read/ReadVariableOpFres_block_1/cnn_block_9/batch_normalization_9/beta/Read/ReadVariableOp=res_block_1/cnn_block_10/conv2d_11/kernel/Read/ReadVariableOp;res_block_1/cnn_block_10/conv2d_11/bias/Read/ReadVariableOpIres_block_1/cnn_block_10/batch_normalization_10/gamma/Read/ReadVariableOpHres_block_1/cnn_block_10/batch_normalization_10/beta/Read/ReadVariableOp=res_block_1/cnn_block_11/conv2d_12/kernel/Read/ReadVariableOp;res_block_1/cnn_block_11/conv2d_12/bias/Read/ReadVariableOpIres_block_1/cnn_block_11/batch_normalization_11/gamma/Read/ReadVariableOpHres_block_1/cnn_block_11/batch_normalization_11/beta/Read/ReadVariableOp0res_block_1/conv2d_13/kernel/Read/ReadVariableOp.res_block_1/conv2d_13/bias/Read/ReadVariableOpMres_block_1/cnn_block_9/batch_normalization_9/moving_mean/Read/ReadVariableOpQres_block_1/cnn_block_9/batch_normalization_9/moving_variance/Read/ReadVariableOpOres_block_1/cnn_block_10/batch_normalization_10/moving_mean/Read/ReadVariableOpSres_block_1/cnn_block_10/batch_normalization_10/moving_variance/Read/ReadVariableOpOres_block_1/cnn_block_11/batch_normalization_11/moving_mean/Read/ReadVariableOpSres_block_1/cnn_block_11/batch_normalization_11/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp@Adam/res_block/cnn_block_6/conv2d_6/kernel/m/Read/ReadVariableOp>Adam/res_block/cnn_block_6/conv2d_6/bias/m/Read/ReadVariableOpLAdam/res_block/cnn_block_6/batch_normalization_6/gamma/m/Read/ReadVariableOpKAdam/res_block/cnn_block_6/batch_normalization_6/beta/m/Read/ReadVariableOp@Adam/res_block/cnn_block_7/conv2d_7/kernel/m/Read/ReadVariableOp>Adam/res_block/cnn_block_7/conv2d_7/bias/m/Read/ReadVariableOpLAdam/res_block/cnn_block_7/batch_normalization_7/gamma/m/Read/ReadVariableOpKAdam/res_block/cnn_block_7/batch_normalization_7/beta/m/Read/ReadVariableOp@Adam/res_block/cnn_block_8/conv2d_8/kernel/m/Read/ReadVariableOp>Adam/res_block/cnn_block_8/conv2d_8/bias/m/Read/ReadVariableOpLAdam/res_block/cnn_block_8/batch_normalization_8/gamma/m/Read/ReadVariableOpKAdam/res_block/cnn_block_8/batch_normalization_8/beta/m/Read/ReadVariableOp4Adam/res_block/conv2d_9/kernel/m/Read/ReadVariableOp2Adam/res_block/conv2d_9/bias/m/Read/ReadVariableOpCAdam/res_block_1/cnn_block_9/conv2d_10/kernel/m/Read/ReadVariableOpAAdam/res_block_1/cnn_block_9/conv2d_10/bias/m/Read/ReadVariableOpNAdam/res_block_1/cnn_block_9/batch_normalization_9/gamma/m/Read/ReadVariableOpMAdam/res_block_1/cnn_block_9/batch_normalization_9/beta/m/Read/ReadVariableOpDAdam/res_block_1/cnn_block_10/conv2d_11/kernel/m/Read/ReadVariableOpBAdam/res_block_1/cnn_block_10/conv2d_11/bias/m/Read/ReadVariableOpPAdam/res_block_1/cnn_block_10/batch_normalization_10/gamma/m/Read/ReadVariableOpOAdam/res_block_1/cnn_block_10/batch_normalization_10/beta/m/Read/ReadVariableOpDAdam/res_block_1/cnn_block_11/conv2d_12/kernel/m/Read/ReadVariableOpBAdam/res_block_1/cnn_block_11/conv2d_12/bias/m/Read/ReadVariableOpPAdam/res_block_1/cnn_block_11/batch_normalization_11/gamma/m/Read/ReadVariableOpOAdam/res_block_1/cnn_block_11/batch_normalization_11/beta/m/Read/ReadVariableOp7Adam/res_block_1/conv2d_13/kernel/m/Read/ReadVariableOp5Adam/res_block_1/conv2d_13/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp@Adam/res_block/cnn_block_6/conv2d_6/kernel/v/Read/ReadVariableOp>Adam/res_block/cnn_block_6/conv2d_6/bias/v/Read/ReadVariableOpLAdam/res_block/cnn_block_6/batch_normalization_6/gamma/v/Read/ReadVariableOpKAdam/res_block/cnn_block_6/batch_normalization_6/beta/v/Read/ReadVariableOp@Adam/res_block/cnn_block_7/conv2d_7/kernel/v/Read/ReadVariableOp>Adam/res_block/cnn_block_7/conv2d_7/bias/v/Read/ReadVariableOpLAdam/res_block/cnn_block_7/batch_normalization_7/gamma/v/Read/ReadVariableOpKAdam/res_block/cnn_block_7/batch_normalization_7/beta/v/Read/ReadVariableOp@Adam/res_block/cnn_block_8/conv2d_8/kernel/v/Read/ReadVariableOp>Adam/res_block/cnn_block_8/conv2d_8/bias/v/Read/ReadVariableOpLAdam/res_block/cnn_block_8/batch_normalization_8/gamma/v/Read/ReadVariableOpKAdam/res_block/cnn_block_8/batch_normalization_8/beta/v/Read/ReadVariableOp4Adam/res_block/conv2d_9/kernel/v/Read/ReadVariableOp2Adam/res_block/conv2d_9/bias/v/Read/ReadVariableOpCAdam/res_block_1/cnn_block_9/conv2d_10/kernel/v/Read/ReadVariableOpAAdam/res_block_1/cnn_block_9/conv2d_10/bias/v/Read/ReadVariableOpNAdam/res_block_1/cnn_block_9/batch_normalization_9/gamma/v/Read/ReadVariableOpMAdam/res_block_1/cnn_block_9/batch_normalization_9/beta/v/Read/ReadVariableOpDAdam/res_block_1/cnn_block_10/conv2d_11/kernel/v/Read/ReadVariableOpBAdam/res_block_1/cnn_block_10/conv2d_11/bias/v/Read/ReadVariableOpPAdam/res_block_1/cnn_block_10/batch_normalization_10/gamma/v/Read/ReadVariableOpOAdam/res_block_1/cnn_block_10/batch_normalization_10/beta/v/Read/ReadVariableOpDAdam/res_block_1/cnn_block_11/conv2d_12/kernel/v/Read/ReadVariableOpBAdam/res_block_1/cnn_block_11/conv2d_12/bias/v/Read/ReadVariableOpPAdam/res_block_1/cnn_block_11/batch_normalization_11/gamma/v/Read/ReadVariableOpOAdam/res_block_1/cnn_block_11/batch_normalization_11/beta/v/Read/ReadVariableOp7Adam/res_block_1/conv2d_13/kernel/v/Read/ReadVariableOp5Adam/res_block_1/conv2d_13/bias/v/Read/ReadVariableOpConst*|
Tinu
s2q	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_15515
?)
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate%res_block/cnn_block_6/conv2d_6/kernel#res_block/cnn_block_6/conv2d_6/bias1res_block/cnn_block_6/batch_normalization_6/gamma0res_block/cnn_block_6/batch_normalization_6/beta%res_block/cnn_block_7/conv2d_7/kernel#res_block/cnn_block_7/conv2d_7/bias1res_block/cnn_block_7/batch_normalization_7/gamma0res_block/cnn_block_7/batch_normalization_7/beta%res_block/cnn_block_8/conv2d_8/kernel#res_block/cnn_block_8/conv2d_8/bias1res_block/cnn_block_8/batch_normalization_8/gamma0res_block/cnn_block_8/batch_normalization_8/betares_block/conv2d_9/kernelres_block/conv2d_9/bias7res_block/cnn_block_6/batch_normalization_6/moving_mean;res_block/cnn_block_6/batch_normalization_6/moving_variance7res_block/cnn_block_7/batch_normalization_7/moving_mean;res_block/cnn_block_7/batch_normalization_7/moving_variance7res_block/cnn_block_8/batch_normalization_8/moving_mean;res_block/cnn_block_8/batch_normalization_8/moving_variance(res_block_1/cnn_block_9/conv2d_10/kernel&res_block_1/cnn_block_9/conv2d_10/bias3res_block_1/cnn_block_9/batch_normalization_9/gamma2res_block_1/cnn_block_9/batch_normalization_9/beta)res_block_1/cnn_block_10/conv2d_11/kernel'res_block_1/cnn_block_10/conv2d_11/bias5res_block_1/cnn_block_10/batch_normalization_10/gamma4res_block_1/cnn_block_10/batch_normalization_10/beta)res_block_1/cnn_block_11/conv2d_12/kernel'res_block_1/cnn_block_11/conv2d_12/bias5res_block_1/cnn_block_11/batch_normalization_11/gamma4res_block_1/cnn_block_11/batch_normalization_11/betares_block_1/conv2d_13/kernelres_block_1/conv2d_13/bias9res_block_1/cnn_block_9/batch_normalization_9/moving_mean=res_block_1/cnn_block_9/batch_normalization_9/moving_variance;res_block_1/cnn_block_10/batch_normalization_10/moving_mean?res_block_1/cnn_block_10/batch_normalization_10/moving_variance;res_block_1/cnn_block_11/batch_normalization_11/moving_mean?res_block_1/cnn_block_11/batch_normalization_11/moving_variancetotalcounttotal_1count_1Adam/dense_3/kernel/mAdam/dense_3/bias/m,Adam/res_block/cnn_block_6/conv2d_6/kernel/m*Adam/res_block/cnn_block_6/conv2d_6/bias/m8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/m7Adam/res_block/cnn_block_6/batch_normalization_6/beta/m,Adam/res_block/cnn_block_7/conv2d_7/kernel/m*Adam/res_block/cnn_block_7/conv2d_7/bias/m8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/m7Adam/res_block/cnn_block_7/batch_normalization_7/beta/m,Adam/res_block/cnn_block_8/conv2d_8/kernel/m*Adam/res_block/cnn_block_8/conv2d_8/bias/m8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/m7Adam/res_block/cnn_block_8/batch_normalization_8/beta/m Adam/res_block/conv2d_9/kernel/mAdam/res_block/conv2d_9/bias/m/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/m-Adam/res_block_1/cnn_block_9/conv2d_10/bias/m:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/m9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/m0Adam/res_block_1/cnn_block_10/conv2d_11/kernel/m.Adam/res_block_1/cnn_block_10/conv2d_11/bias/m<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/m;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/m0Adam/res_block_1/cnn_block_11/conv2d_12/kernel/m.Adam/res_block_1/cnn_block_11/conv2d_12/bias/m<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/m;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/m#Adam/res_block_1/conv2d_13/kernel/m!Adam/res_block_1/conv2d_13/bias/mAdam/dense_3/kernel/vAdam/dense_3/bias/v,Adam/res_block/cnn_block_6/conv2d_6/kernel/v*Adam/res_block/cnn_block_6/conv2d_6/bias/v8Adam/res_block/cnn_block_6/batch_normalization_6/gamma/v7Adam/res_block/cnn_block_6/batch_normalization_6/beta/v,Adam/res_block/cnn_block_7/conv2d_7/kernel/v*Adam/res_block/cnn_block_7/conv2d_7/bias/v8Adam/res_block/cnn_block_7/batch_normalization_7/gamma/v7Adam/res_block/cnn_block_7/batch_normalization_7/beta/v,Adam/res_block/cnn_block_8/conv2d_8/kernel/v*Adam/res_block/cnn_block_8/conv2d_8/bias/v8Adam/res_block/cnn_block_8/batch_normalization_8/gamma/v7Adam/res_block/cnn_block_8/batch_normalization_8/beta/v Adam/res_block/conv2d_9/kernel/vAdam/res_block/conv2d_9/bias/v/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/v-Adam/res_block_1/cnn_block_9/conv2d_10/bias/v:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/v9Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/v0Adam/res_block_1/cnn_block_10/conv2d_11/kernel/v.Adam/res_block_1/cnn_block_10/conv2d_11/bias/v<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/v;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/v0Adam/res_block_1/cnn_block_11/conv2d_12/kernel/v.Adam/res_block_1/cnn_block_11/conv2d_12/bias/v<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/v;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/v#Adam/res_block_1/conv2d_13/kernel/v!Adam/res_block_1/conv2d_13/bias/v*{
Tint
r2p*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_15858??
?
?
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_14987

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_model_1_layer_call_fn_13668
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_135812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?t
?
D__inference_res_block_layer_call_and_return_conditional_losses_12750
input_tensor7
3cnn_block_6_conv2d_6_conv2d_readvariableop_resource8
4cnn_block_6_conv2d_6_biasadd_readvariableop_resource=
9cnn_block_6_batch_normalization_6_readvariableop_resource?
;cnn_block_6_batch_normalization_6_readvariableop_1_resourceN
Jcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7
3cnn_block_7_conv2d_7_conv2d_readvariableop_resource8
4cnn_block_7_conv2d_7_biasadd_readvariableop_resource=
9cnn_block_7_batch_normalization_7_readvariableop_resource?
;cnn_block_7_batch_normalization_7_readvariableop_1_resourceN
Jcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_9_conv2d_readvariableop_resource,
(conv2d_9_biasadd_readvariableop_resource7
3cnn_block_8_conv2d_8_conv2d_readvariableop_resource8
4cnn_block_8_conv2d_8_biasadd_readvariableop_resource=
9cnn_block_8_batch_normalization_8_readvariableop_resource?
;cnn_block_8_batch_normalization_8_readvariableop_1_resourceN
Jcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource
identity??Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_6/batch_normalization_6/ReadVariableOp?2cnn_block_6/batch_normalization_6/ReadVariableOp_1?+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_7/batch_normalization_7/ReadVariableOp?2cnn_block_7/batch_normalization_7/ReadVariableOp_1?+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_8/batch_normalization_8/ReadVariableOp?2cnn_block_8/batch_normalization_8/ReadVariableOp_1?+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp3cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02,
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?
cnn_block_6/conv2d_6/Conv2DConv2Dinput_tensor2cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
cnn_block_6/conv2d_6/Conv2D?
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?
cnn_block_6/conv2d_6/BiasAddBiasAdd$cnn_block_6/conv2d_6/Conv2D:output:03cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
cnn_block_6/conv2d_6/BiasAdd?
0cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOp9cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype022
0cnn_block_6/batch_normalization_6/ReadVariableOp?
2cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp;cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype024
2cnn_block_6/batch_normalization_6/ReadVariableOp_1?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3%cnn_block_6/conv2d_6/BiasAdd:output:08cnn_block_6/batch_normalization_6/ReadVariableOp:value:0:cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Icnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 24
2cnn_block_6/batch_normalization_6/FusedBatchNormV3?
cnn_block_6/ReluRelu6cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
cnn_block_6/Relu?
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp3cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02,
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?
cnn_block_7/conv2d_7/Conv2DConv2Dcnn_block_6/Relu:activations:02cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
cnn_block_7/conv2d_7/Conv2D?
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?
cnn_block_7/conv2d_7/BiasAddBiasAdd$cnn_block_7/conv2d_7/Conv2D:output:03cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
cnn_block_7/conv2d_7/BiasAdd?
0cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOp9cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype022
0cnn_block_7/batch_normalization_7/ReadVariableOp?
2cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp;cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype024
2cnn_block_7/batch_normalization_7/ReadVariableOp_1?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3%cnn_block_7/conv2d_7/BiasAdd:output:08cnn_block_7/batch_normalization_7/ReadVariableOp:value:0:cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Icnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 24
2cnn_block_7/batch_normalization_7/FusedBatchNormV3?
cnn_block_7/ReluRelu6cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
cnn_block_7/Relu?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2Dinput_tensor&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_9/BiasAdd?
addAddV2cnn_block_7/Relu:activations:0conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
add?
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp3cnn_block_8_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02,
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?
cnn_block_8/conv2d_8/Conv2DConv2Dadd:z:02cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
cnn_block_8/conv2d_8/Conv2D?
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?
cnn_block_8/conv2d_8/BiasAddBiasAdd$cnn_block_8/conv2d_8/Conv2D:output:03cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
cnn_block_8/conv2d_8/BiasAdd?
0cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOp9cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype022
0cnn_block_8/batch_normalization_8/ReadVariableOp?
2cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp;cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype024
2cnn_block_8/batch_normalization_8/ReadVariableOp_1?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02C
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02E
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3%cnn_block_8/conv2d_8/BiasAdd:output:08cnn_block_8/batch_normalization_8/ReadVariableOp:value:0:cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Icnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 24
2cnn_block_8/batch_normalization_8/FusedBatchNormV3?
cnn_block_8/ReluRelu6cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
cnn_block_8/Relu?
max_pooling2d/MaxPoolMaxPoolcnn_block_8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?	
IdentityIdentitymax_pooling2d/MaxPool:output:0B^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpD^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_11^cnn_block_6/batch_normalization_6/ReadVariableOp3^cnn_block_6/batch_normalization_6/ReadVariableOp_1,^cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+^cnn_block_6/conv2d_6/Conv2D/ReadVariableOpB^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpD^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_11^cnn_block_7/batch_normalization_7/ReadVariableOp3^cnn_block_7/batch_normalization_7/ReadVariableOp_1,^cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+^cnn_block_7/conv2d_7/Conv2D/ReadVariableOpB^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpD^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_11^cnn_block_8/batch_normalization_8/ReadVariableOp3^cnn_block_8/batch_normalization_8/ReadVariableOp_1,^cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+^cnn_block_8/conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????::::::::::::::::::::2?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpAcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_6/batch_normalization_6/ReadVariableOp0cnn_block_6/batch_normalization_6/ReadVariableOp2h
2cnn_block_6/batch_normalization_6/ReadVariableOp_12cnn_block_6/batch_normalization_6/ReadVariableOp_12Z
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2X
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpAcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_7/batch_normalization_7/ReadVariableOp0cnn_block_7/batch_normalization_7/ReadVariableOp2h
2cnn_block_7/batch_normalization_7/ReadVariableOp_12cnn_block_7/batch_normalization_7/ReadVariableOp_12Z
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2X
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpAcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_8/batch_normalization_8/ReadVariableOp0cnn_block_8/batch_normalization_8/ReadVariableOp2h
2cnn_block_8/batch_normalization_8/ReadVariableOp_12cnn_block_8/batch_normalization_8/ReadVariableOp_12Z
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2X
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?
?
'__inference_model_1_layer_call_fn_13487
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_134002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
'__inference_model_1_layer_call_fn_14164

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_134002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?w
?
F__inference_res_block_1_layer_call_and_return_conditional_losses_13039
input_tensor8
4cnn_block_9_conv2d_10_conv2d_readvariableop_resource9
5cnn_block_9_conv2d_10_biasadd_readvariableop_resource=
9cnn_block_9_batch_normalization_9_readvariableop_resource?
;cnn_block_9_batch_normalization_9_readvariableop_1_resourceN
Jcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource9
5cnn_block_10_conv2d_11_conv2d_readvariableop_resource:
6cnn_block_10_conv2d_11_biasadd_readvariableop_resource?
;cnn_block_10_batch_normalization_10_readvariableop_resourceA
=cnn_block_10_batch_normalization_10_readvariableop_1_resourceP
Lcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resourceR
Ncnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource9
5cnn_block_11_conv2d_12_conv2d_readvariableop_resource:
6cnn_block_11_conv2d_12_biasadd_readvariableop_resource?
;cnn_block_11_batch_normalization_11_readvariableop_resourceA
=cnn_block_11_batch_normalization_11_readvariableop_1_resourceP
Lcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resourceR
Ncnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource
identity??Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?2cnn_block_10/batch_normalization_10/ReadVariableOp?4cnn_block_10/batch_normalization_10/ReadVariableOp_1?-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?2cnn_block_11/batch_normalization_11/ReadVariableOp?4cnn_block_11/batch_normalization_11/ReadVariableOp_1?-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_9/batch_normalization_9/ReadVariableOp?2cnn_block_9/batch_normalization_9/ReadVariableOp_1?,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp?
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOpReadVariableOp4cnn_block_9_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?
cnn_block_9/conv2d_10/Conv2DConv2Dinput_tensor3cnn_block_9/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_9/conv2d_10/Conv2D?
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp5cnn_block_9_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?
cnn_block_9/conv2d_10/BiasAddBiasAdd%cnn_block_9/conv2d_10/Conv2D:output:04cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
cnn_block_9/conv2d_10/BiasAdd?
0cnn_block_9/batch_normalization_9/ReadVariableOpReadVariableOp9cnn_block_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype022
0cnn_block_9/batch_normalization_9/ReadVariableOp?
2cnn_block_9/batch_normalization_9/ReadVariableOp_1ReadVariableOp;cnn_block_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2cnn_block_9/batch_normalization_9/ReadVariableOp_1?
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3&cnn_block_9/conv2d_10/BiasAdd:output:08cnn_block_9/batch_normalization_9/ReadVariableOp:value:0:cnn_block_9/batch_normalization_9/ReadVariableOp_1:value:0Icnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 24
2cnn_block_9/batch_normalization_9/FusedBatchNormV3?
cnn_block_9/ReluRelu6cnn_block_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_9/Relu?
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5cnn_block_10_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?
cnn_block_10/conv2d_11/Conv2DConv2Dcnn_block_9/Relu:activations:04cnn_block_10/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_10/conv2d_11/Conv2D?
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6cnn_block_10_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?
cnn_block_10/conv2d_11/BiasAddBiasAdd&cnn_block_10/conv2d_11/Conv2D:output:05cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
cnn_block_10/conv2d_11/BiasAdd?
2cnn_block_10/batch_normalization_10/ReadVariableOpReadVariableOp;cnn_block_10_batch_normalization_10_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_block_10/batch_normalization_10/ReadVariableOp?
4cnn_block_10/batch_normalization_10/ReadVariableOp_1ReadVariableOp=cnn_block_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4cnn_block_10/batch_normalization_10/ReadVariableOp_1?
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpLcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
4cnn_block_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3'cnn_block_10/conv2d_11/BiasAdd:output:0:cnn_block_10/batch_normalization_10/ReadVariableOp:value:0<cnn_block_10/batch_normalization_10/ReadVariableOp_1:value:0Kcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Mcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4cnn_block_10/batch_normalization_10/FusedBatchNormV3?
cnn_block_10/ReluRelu8cnn_block_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_10/Relu?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Dinput_tensor'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd?
addAddV2cnn_block_10/Relu:activations:0conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
add?
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5cnn_block_11_conv2d_12_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?
cnn_block_11/conv2d_12/Conv2DConv2Dadd:z:04cnn_block_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_11/conv2d_12/Conv2D?
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6cnn_block_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?
cnn_block_11/conv2d_12/BiasAddBiasAdd&cnn_block_11/conv2d_12/Conv2D:output:05cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
cnn_block_11/conv2d_12/BiasAdd?
2cnn_block_11/batch_normalization_11/ReadVariableOpReadVariableOp;cnn_block_11_batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_block_11/batch_normalization_11/ReadVariableOp?
4cnn_block_11/batch_normalization_11/ReadVariableOp_1ReadVariableOp=cnn_block_11_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4cnn_block_11/batch_normalization_11/ReadVariableOp_1?
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpLcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
4cnn_block_11/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3'cnn_block_11/conv2d_12/BiasAdd:output:0:cnn_block_11/batch_normalization_11/ReadVariableOp:value:0<cnn_block_11/batch_normalization_11/ReadVariableOp_1:value:0Kcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Mcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4cnn_block_11/batch_normalization_11/FusedBatchNormV3?
cnn_block_11/ReluRelu8cnn_block_11/batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_11/Relu?
max_pooling2d_1/MaxPoolMaxPoolcnn_block_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?	
IdentityIdentity max_pooling2d_1/MaxPool:output:0D^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpF^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_13^cnn_block_10/batch_normalization_10/ReadVariableOp5^cnn_block_10/batch_normalization_10/ReadVariableOp_1.^cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp-^cnn_block_10/conv2d_11/Conv2D/ReadVariableOpD^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpF^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_13^cnn_block_11/batch_normalization_11/ReadVariableOp5^cnn_block_11/batch_normalization_11/ReadVariableOp_1.^cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp-^cnn_block_11/conv2d_12/Conv2D/ReadVariableOpB^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpD^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_11^cnn_block_9/batch_normalization_9/ReadVariableOp3^cnn_block_9/batch_normalization_9/ReadVariableOp_1-^cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp,^cnn_block_9/conv2d_10/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????@::::::::::::::::::::2?
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpCcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12h
2cnn_block_10/batch_normalization_10/ReadVariableOp2cnn_block_10/batch_normalization_10/ReadVariableOp2l
4cnn_block_10/batch_normalization_10/ReadVariableOp_14cnn_block_10/batch_normalization_10/ReadVariableOp_12^
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp2\
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp2?
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpCcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12h
2cnn_block_11/batch_normalization_11/ReadVariableOp2cnn_block_11/batch_normalization_11/ReadVariableOp2l
4cnn_block_11/batch_normalization_11/ReadVariableOp_14cnn_block_11/batch_normalization_11/ReadVariableOp_12^
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp2\
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp2?
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpAcnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_9/batch_normalization_9/ReadVariableOp0cnn_block_9/batch_normalization_9/ReadVariableOp2h
2cnn_block_9/batch_normalization_9/ReadVariableOp_12cnn_block_9/batch_normalization_9/ReadVariableOp_12\
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp2Z
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?
?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_14923

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15005

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_14751

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????b2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_12432

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_9_layer_call_fn_15018

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_123282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_9_layer_call_fn_15031

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_123592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_6_layer_call_fn_14826

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_120042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_12212

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_1_layer_call_fn_12590

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_125842
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_12584

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?B
__inference__traced_save_15515
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopD
@savev2_res_block_cnn_block_6_conv2d_6_kernel_read_readvariableopB
>savev2_res_block_cnn_block_6_conv2d_6_bias_read_readvariableopP
Lsavev2_res_block_cnn_block_6_batch_normalization_6_gamma_read_readvariableopO
Ksavev2_res_block_cnn_block_6_batch_normalization_6_beta_read_readvariableopD
@savev2_res_block_cnn_block_7_conv2d_7_kernel_read_readvariableopB
>savev2_res_block_cnn_block_7_conv2d_7_bias_read_readvariableopP
Lsavev2_res_block_cnn_block_7_batch_normalization_7_gamma_read_readvariableopO
Ksavev2_res_block_cnn_block_7_batch_normalization_7_beta_read_readvariableopD
@savev2_res_block_cnn_block_8_conv2d_8_kernel_read_readvariableopB
>savev2_res_block_cnn_block_8_conv2d_8_bias_read_readvariableopP
Lsavev2_res_block_cnn_block_8_batch_normalization_8_gamma_read_readvariableopO
Ksavev2_res_block_cnn_block_8_batch_normalization_8_beta_read_readvariableop8
4savev2_res_block_conv2d_9_kernel_read_readvariableop6
2savev2_res_block_conv2d_9_bias_read_readvariableopV
Rsavev2_res_block_cnn_block_6_batch_normalization_6_moving_mean_read_readvariableopZ
Vsavev2_res_block_cnn_block_6_batch_normalization_6_moving_variance_read_readvariableopV
Rsavev2_res_block_cnn_block_7_batch_normalization_7_moving_mean_read_readvariableopZ
Vsavev2_res_block_cnn_block_7_batch_normalization_7_moving_variance_read_readvariableopV
Rsavev2_res_block_cnn_block_8_batch_normalization_8_moving_mean_read_readvariableopZ
Vsavev2_res_block_cnn_block_8_batch_normalization_8_moving_variance_read_readvariableopG
Csavev2_res_block_1_cnn_block_9_conv2d_10_kernel_read_readvariableopE
Asavev2_res_block_1_cnn_block_9_conv2d_10_bias_read_readvariableopR
Nsavev2_res_block_1_cnn_block_9_batch_normalization_9_gamma_read_readvariableopQ
Msavev2_res_block_1_cnn_block_9_batch_normalization_9_beta_read_readvariableopH
Dsavev2_res_block_1_cnn_block_10_conv2d_11_kernel_read_readvariableopF
Bsavev2_res_block_1_cnn_block_10_conv2d_11_bias_read_readvariableopT
Psavev2_res_block_1_cnn_block_10_batch_normalization_10_gamma_read_readvariableopS
Osavev2_res_block_1_cnn_block_10_batch_normalization_10_beta_read_readvariableopH
Dsavev2_res_block_1_cnn_block_11_conv2d_12_kernel_read_readvariableopF
Bsavev2_res_block_1_cnn_block_11_conv2d_12_bias_read_readvariableopT
Psavev2_res_block_1_cnn_block_11_batch_normalization_11_gamma_read_readvariableopS
Osavev2_res_block_1_cnn_block_11_batch_normalization_11_beta_read_readvariableop;
7savev2_res_block_1_conv2d_13_kernel_read_readvariableop9
5savev2_res_block_1_conv2d_13_bias_read_readvariableopX
Tsavev2_res_block_1_cnn_block_9_batch_normalization_9_moving_mean_read_readvariableop\
Xsavev2_res_block_1_cnn_block_9_batch_normalization_9_moving_variance_read_readvariableopZ
Vsavev2_res_block_1_cnn_block_10_batch_normalization_10_moving_mean_read_readvariableop^
Zsavev2_res_block_1_cnn_block_10_batch_normalization_10_moving_variance_read_readvariableopZ
Vsavev2_res_block_1_cnn_block_11_batch_normalization_11_moving_mean_read_readvariableop^
Zsavev2_res_block_1_cnn_block_11_batch_normalization_11_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopK
Gsavev2_adam_res_block_cnn_block_6_conv2d_6_kernel_m_read_readvariableopI
Esavev2_adam_res_block_cnn_block_6_conv2d_6_bias_m_read_readvariableopW
Ssavev2_adam_res_block_cnn_block_6_batch_normalization_6_gamma_m_read_readvariableopV
Rsavev2_adam_res_block_cnn_block_6_batch_normalization_6_beta_m_read_readvariableopK
Gsavev2_adam_res_block_cnn_block_7_conv2d_7_kernel_m_read_readvariableopI
Esavev2_adam_res_block_cnn_block_7_conv2d_7_bias_m_read_readvariableopW
Ssavev2_adam_res_block_cnn_block_7_batch_normalization_7_gamma_m_read_readvariableopV
Rsavev2_adam_res_block_cnn_block_7_batch_normalization_7_beta_m_read_readvariableopK
Gsavev2_adam_res_block_cnn_block_8_conv2d_8_kernel_m_read_readvariableopI
Esavev2_adam_res_block_cnn_block_8_conv2d_8_bias_m_read_readvariableopW
Ssavev2_adam_res_block_cnn_block_8_batch_normalization_8_gamma_m_read_readvariableopV
Rsavev2_adam_res_block_cnn_block_8_batch_normalization_8_beta_m_read_readvariableop?
;savev2_adam_res_block_conv2d_9_kernel_m_read_readvariableop=
9savev2_adam_res_block_conv2d_9_bias_m_read_readvariableopN
Jsavev2_adam_res_block_1_cnn_block_9_conv2d_10_kernel_m_read_readvariableopL
Hsavev2_adam_res_block_1_cnn_block_9_conv2d_10_bias_m_read_readvariableopY
Usavev2_adam_res_block_1_cnn_block_9_batch_normalization_9_gamma_m_read_readvariableopX
Tsavev2_adam_res_block_1_cnn_block_9_batch_normalization_9_beta_m_read_readvariableopO
Ksavev2_adam_res_block_1_cnn_block_10_conv2d_11_kernel_m_read_readvariableopM
Isavev2_adam_res_block_1_cnn_block_10_conv2d_11_bias_m_read_readvariableop[
Wsavev2_adam_res_block_1_cnn_block_10_batch_normalization_10_gamma_m_read_readvariableopZ
Vsavev2_adam_res_block_1_cnn_block_10_batch_normalization_10_beta_m_read_readvariableopO
Ksavev2_adam_res_block_1_cnn_block_11_conv2d_12_kernel_m_read_readvariableopM
Isavev2_adam_res_block_1_cnn_block_11_conv2d_12_bias_m_read_readvariableop[
Wsavev2_adam_res_block_1_cnn_block_11_batch_normalization_11_gamma_m_read_readvariableopZ
Vsavev2_adam_res_block_1_cnn_block_11_batch_normalization_11_beta_m_read_readvariableopB
>savev2_adam_res_block_1_conv2d_13_kernel_m_read_readvariableop@
<savev2_adam_res_block_1_conv2d_13_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopK
Gsavev2_adam_res_block_cnn_block_6_conv2d_6_kernel_v_read_readvariableopI
Esavev2_adam_res_block_cnn_block_6_conv2d_6_bias_v_read_readvariableopW
Ssavev2_adam_res_block_cnn_block_6_batch_normalization_6_gamma_v_read_readvariableopV
Rsavev2_adam_res_block_cnn_block_6_batch_normalization_6_beta_v_read_readvariableopK
Gsavev2_adam_res_block_cnn_block_7_conv2d_7_kernel_v_read_readvariableopI
Esavev2_adam_res_block_cnn_block_7_conv2d_7_bias_v_read_readvariableopW
Ssavev2_adam_res_block_cnn_block_7_batch_normalization_7_gamma_v_read_readvariableopV
Rsavev2_adam_res_block_cnn_block_7_batch_normalization_7_beta_v_read_readvariableopK
Gsavev2_adam_res_block_cnn_block_8_conv2d_8_kernel_v_read_readvariableopI
Esavev2_adam_res_block_cnn_block_8_conv2d_8_bias_v_read_readvariableopW
Ssavev2_adam_res_block_cnn_block_8_batch_normalization_8_gamma_v_read_readvariableopV
Rsavev2_adam_res_block_cnn_block_8_batch_normalization_8_beta_v_read_readvariableop?
;savev2_adam_res_block_conv2d_9_kernel_v_read_readvariableop=
9savev2_adam_res_block_conv2d_9_bias_v_read_readvariableopN
Jsavev2_adam_res_block_1_cnn_block_9_conv2d_10_kernel_v_read_readvariableopL
Hsavev2_adam_res_block_1_cnn_block_9_conv2d_10_bias_v_read_readvariableopY
Usavev2_adam_res_block_1_cnn_block_9_batch_normalization_9_gamma_v_read_readvariableopX
Tsavev2_adam_res_block_1_cnn_block_9_batch_normalization_9_beta_v_read_readvariableopO
Ksavev2_adam_res_block_1_cnn_block_10_conv2d_11_kernel_v_read_readvariableopM
Isavev2_adam_res_block_1_cnn_block_10_conv2d_11_bias_v_read_readvariableop[
Wsavev2_adam_res_block_1_cnn_block_10_batch_normalization_10_gamma_v_read_readvariableopZ
Vsavev2_adam_res_block_1_cnn_block_10_batch_normalization_10_beta_v_read_readvariableopO
Ksavev2_adam_res_block_1_cnn_block_11_conv2d_12_kernel_v_read_readvariableopM
Isavev2_adam_res_block_1_cnn_block_11_conv2d_12_bias_v_read_readvariableop[
Wsavev2_adam_res_block_1_cnn_block_11_batch_normalization_11_gamma_v_read_readvariableopZ
Vsavev2_adam_res_block_1_cnn_block_11_batch_normalization_11_beta_v_read_readvariableopB
>savev2_adam_res_block_1_conv2d_13_kernel_v_read_readvariableop@
<savev2_adam_res_block_1_conv2d_13_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?2
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:p*
dtype0*?2
value?2B?1pB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:p*
dtype0*?
value?B?pB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?@
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop@savev2_res_block_cnn_block_6_conv2d_6_kernel_read_readvariableop>savev2_res_block_cnn_block_6_conv2d_6_bias_read_readvariableopLsavev2_res_block_cnn_block_6_batch_normalization_6_gamma_read_readvariableopKsavev2_res_block_cnn_block_6_batch_normalization_6_beta_read_readvariableop@savev2_res_block_cnn_block_7_conv2d_7_kernel_read_readvariableop>savev2_res_block_cnn_block_7_conv2d_7_bias_read_readvariableopLsavev2_res_block_cnn_block_7_batch_normalization_7_gamma_read_readvariableopKsavev2_res_block_cnn_block_7_batch_normalization_7_beta_read_readvariableop@savev2_res_block_cnn_block_8_conv2d_8_kernel_read_readvariableop>savev2_res_block_cnn_block_8_conv2d_8_bias_read_readvariableopLsavev2_res_block_cnn_block_8_batch_normalization_8_gamma_read_readvariableopKsavev2_res_block_cnn_block_8_batch_normalization_8_beta_read_readvariableop4savev2_res_block_conv2d_9_kernel_read_readvariableop2savev2_res_block_conv2d_9_bias_read_readvariableopRsavev2_res_block_cnn_block_6_batch_normalization_6_moving_mean_read_readvariableopVsavev2_res_block_cnn_block_6_batch_normalization_6_moving_variance_read_readvariableopRsavev2_res_block_cnn_block_7_batch_normalization_7_moving_mean_read_readvariableopVsavev2_res_block_cnn_block_7_batch_normalization_7_moving_variance_read_readvariableopRsavev2_res_block_cnn_block_8_batch_normalization_8_moving_mean_read_readvariableopVsavev2_res_block_cnn_block_8_batch_normalization_8_moving_variance_read_readvariableopCsavev2_res_block_1_cnn_block_9_conv2d_10_kernel_read_readvariableopAsavev2_res_block_1_cnn_block_9_conv2d_10_bias_read_readvariableopNsavev2_res_block_1_cnn_block_9_batch_normalization_9_gamma_read_readvariableopMsavev2_res_block_1_cnn_block_9_batch_normalization_9_beta_read_readvariableopDsavev2_res_block_1_cnn_block_10_conv2d_11_kernel_read_readvariableopBsavev2_res_block_1_cnn_block_10_conv2d_11_bias_read_readvariableopPsavev2_res_block_1_cnn_block_10_batch_normalization_10_gamma_read_readvariableopOsavev2_res_block_1_cnn_block_10_batch_normalization_10_beta_read_readvariableopDsavev2_res_block_1_cnn_block_11_conv2d_12_kernel_read_readvariableopBsavev2_res_block_1_cnn_block_11_conv2d_12_bias_read_readvariableopPsavev2_res_block_1_cnn_block_11_batch_normalization_11_gamma_read_readvariableopOsavev2_res_block_1_cnn_block_11_batch_normalization_11_beta_read_readvariableop7savev2_res_block_1_conv2d_13_kernel_read_readvariableop5savev2_res_block_1_conv2d_13_bias_read_readvariableopTsavev2_res_block_1_cnn_block_9_batch_normalization_9_moving_mean_read_readvariableopXsavev2_res_block_1_cnn_block_9_batch_normalization_9_moving_variance_read_readvariableopVsavev2_res_block_1_cnn_block_10_batch_normalization_10_moving_mean_read_readvariableopZsavev2_res_block_1_cnn_block_10_batch_normalization_10_moving_variance_read_readvariableopVsavev2_res_block_1_cnn_block_11_batch_normalization_11_moving_mean_read_readvariableopZsavev2_res_block_1_cnn_block_11_batch_normalization_11_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableopGsavev2_adam_res_block_cnn_block_6_conv2d_6_kernel_m_read_readvariableopEsavev2_adam_res_block_cnn_block_6_conv2d_6_bias_m_read_readvariableopSsavev2_adam_res_block_cnn_block_6_batch_normalization_6_gamma_m_read_readvariableopRsavev2_adam_res_block_cnn_block_6_batch_normalization_6_beta_m_read_readvariableopGsavev2_adam_res_block_cnn_block_7_conv2d_7_kernel_m_read_readvariableopEsavev2_adam_res_block_cnn_block_7_conv2d_7_bias_m_read_readvariableopSsavev2_adam_res_block_cnn_block_7_batch_normalization_7_gamma_m_read_readvariableopRsavev2_adam_res_block_cnn_block_7_batch_normalization_7_beta_m_read_readvariableopGsavev2_adam_res_block_cnn_block_8_conv2d_8_kernel_m_read_readvariableopEsavev2_adam_res_block_cnn_block_8_conv2d_8_bias_m_read_readvariableopSsavev2_adam_res_block_cnn_block_8_batch_normalization_8_gamma_m_read_readvariableopRsavev2_adam_res_block_cnn_block_8_batch_normalization_8_beta_m_read_readvariableop;savev2_adam_res_block_conv2d_9_kernel_m_read_readvariableop9savev2_adam_res_block_conv2d_9_bias_m_read_readvariableopJsavev2_adam_res_block_1_cnn_block_9_conv2d_10_kernel_m_read_readvariableopHsavev2_adam_res_block_1_cnn_block_9_conv2d_10_bias_m_read_readvariableopUsavev2_adam_res_block_1_cnn_block_9_batch_normalization_9_gamma_m_read_readvariableopTsavev2_adam_res_block_1_cnn_block_9_batch_normalization_9_beta_m_read_readvariableopKsavev2_adam_res_block_1_cnn_block_10_conv2d_11_kernel_m_read_readvariableopIsavev2_adam_res_block_1_cnn_block_10_conv2d_11_bias_m_read_readvariableopWsavev2_adam_res_block_1_cnn_block_10_batch_normalization_10_gamma_m_read_readvariableopVsavev2_adam_res_block_1_cnn_block_10_batch_normalization_10_beta_m_read_readvariableopKsavev2_adam_res_block_1_cnn_block_11_conv2d_12_kernel_m_read_readvariableopIsavev2_adam_res_block_1_cnn_block_11_conv2d_12_bias_m_read_readvariableopWsavev2_adam_res_block_1_cnn_block_11_batch_normalization_11_gamma_m_read_readvariableopVsavev2_adam_res_block_1_cnn_block_11_batch_normalization_11_beta_m_read_readvariableop>savev2_adam_res_block_1_conv2d_13_kernel_m_read_readvariableop<savev2_adam_res_block_1_conv2d_13_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopGsavev2_adam_res_block_cnn_block_6_conv2d_6_kernel_v_read_readvariableopEsavev2_adam_res_block_cnn_block_6_conv2d_6_bias_v_read_readvariableopSsavev2_adam_res_block_cnn_block_6_batch_normalization_6_gamma_v_read_readvariableopRsavev2_adam_res_block_cnn_block_6_batch_normalization_6_beta_v_read_readvariableopGsavev2_adam_res_block_cnn_block_7_conv2d_7_kernel_v_read_readvariableopEsavev2_adam_res_block_cnn_block_7_conv2d_7_bias_v_read_readvariableopSsavev2_adam_res_block_cnn_block_7_batch_normalization_7_gamma_v_read_readvariableopRsavev2_adam_res_block_cnn_block_7_batch_normalization_7_beta_v_read_readvariableopGsavev2_adam_res_block_cnn_block_8_conv2d_8_kernel_v_read_readvariableopEsavev2_adam_res_block_cnn_block_8_conv2d_8_bias_v_read_readvariableopSsavev2_adam_res_block_cnn_block_8_batch_normalization_8_gamma_v_read_readvariableopRsavev2_adam_res_block_cnn_block_8_batch_normalization_8_beta_v_read_readvariableop;savev2_adam_res_block_conv2d_9_kernel_v_read_readvariableop9savev2_adam_res_block_conv2d_9_bias_v_read_readvariableopJsavev2_adam_res_block_1_cnn_block_9_conv2d_10_kernel_v_read_readvariableopHsavev2_adam_res_block_1_cnn_block_9_conv2d_10_bias_v_read_readvariableopUsavev2_adam_res_block_1_cnn_block_9_batch_normalization_9_gamma_v_read_readvariableopTsavev2_adam_res_block_1_cnn_block_9_batch_normalization_9_beta_v_read_readvariableopKsavev2_adam_res_block_1_cnn_block_10_conv2d_11_kernel_v_read_readvariableopIsavev2_adam_res_block_1_cnn_block_10_conv2d_11_bias_v_read_readvariableopWsavev2_adam_res_block_1_cnn_block_10_batch_normalization_10_gamma_v_read_readvariableopVsavev2_adam_res_block_1_cnn_block_10_batch_normalization_10_beta_v_read_readvariableopKsavev2_adam_res_block_1_cnn_block_11_conv2d_12_kernel_v_read_readvariableopIsavev2_adam_res_block_1_cnn_block_11_conv2d_12_bias_v_read_readvariableopWsavev2_adam_res_block_1_cnn_block_11_batch_normalization_11_gamma_v_read_readvariableopVsavev2_adam_res_block_1_cnn_block_11_batch_normalization_11_beta_v_read_readvariableop>savev2_adam_res_block_1_conv2d_13_kernel_v_read_readvariableop<savev2_adam_res_block_1_conv2d_13_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *~
dtypest
r2p	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?b
:
: : : : : : : : : :  : : : : @:@:@:@: : : : : : :@:@:@?:?:?:?:??:?:?:?:??:?:?:?:@?:?:?:?:?:?:?:?: : : : :	?b
:
: : : : :  : : : : @:@:@:@: : :@?:?:?:?:??:?:?:?:??:?:?:?:@?:?:	?b
:
: : : : :  : : : : @:@:@:@: : :@?:?:?:?:??:?:?:?:??:?:?:?:@?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?b
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:. *
(
_output_shapes
:??:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?:.$*
(
_output_shapes
:??:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:-()
'
_output_shapes
:@?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:!+

_output_shapes	
:?:!,

_output_shapes	
:?:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :%4!

_output_shapes
:	?b
: 5

_output_shapes
:
:,6(
&
_output_shapes
: : 7

_output_shapes
: : 8

_output_shapes
: : 9

_output_shapes
: :,:(
&
_output_shapes
:  : ;

_output_shapes
: : <

_output_shapes
: : =

_output_shapes
: :,>(
&
_output_shapes
: @: ?

_output_shapes
:@: @

_output_shapes
:@: A

_output_shapes
:@:,B(
&
_output_shapes
: : C

_output_shapes
: :-D)
'
_output_shapes
:@?:!E

_output_shapes	
:?:!F

_output_shapes	
:?:!G

_output_shapes	
:?:.H*
(
_output_shapes
:??:!I

_output_shapes	
:?:!J

_output_shapes	
:?:!K

_output_shapes	
:?:.L*
(
_output_shapes
:??:!M

_output_shapes	
:?:!N

_output_shapes	
:?:!O

_output_shapes	
:?:-P)
'
_output_shapes
:@?:!Q

_output_shapes	
:?:%R!

_output_shapes
:	?b
: S

_output_shapes
:
:,T(
&
_output_shapes
: : U

_output_shapes
: : V

_output_shapes
: : W

_output_shapes
: :,X(
&
_output_shapes
:  : Y

_output_shapes
: : Z

_output_shapes
: : [

_output_shapes
: :,\(
&
_output_shapes
: @: ]

_output_shapes
:@: ^

_output_shapes
:@: _

_output_shapes
:@:,`(
&
_output_shapes
: : a

_output_shapes
: :-b)
'
_output_shapes
:@?:!c

_output_shapes	
:?:!d

_output_shapes	
:?:!e

_output_shapes	
:?:.f*
(
_output_shapes
:??:!g

_output_shapes	
:?:!h

_output_shapes	
:?:!i

_output_shapes	
:?:.j*
(
_output_shapes
:??:!k

_output_shapes	
:?:!l

_output_shapes	
:?:!m

_output_shapes	
:?:-n)
'
_output_shapes
:@?:!o

_output_shapes	
:?:p

_output_shapes
: 
?
?
6__inference_batch_normalization_11_layer_call_fn_15159

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_125672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?w
?
F__inference_res_block_1_layer_call_and_return_conditional_losses_14655
input_tensor8
4cnn_block_9_conv2d_10_conv2d_readvariableop_resource9
5cnn_block_9_conv2d_10_biasadd_readvariableop_resource=
9cnn_block_9_batch_normalization_9_readvariableop_resource?
;cnn_block_9_batch_normalization_9_readvariableop_1_resourceN
Jcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource9
5cnn_block_10_conv2d_11_conv2d_readvariableop_resource:
6cnn_block_10_conv2d_11_biasadd_readvariableop_resource?
;cnn_block_10_batch_normalization_10_readvariableop_resourceA
=cnn_block_10_batch_normalization_10_readvariableop_1_resourceP
Lcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resourceR
Ncnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource9
5cnn_block_11_conv2d_12_conv2d_readvariableop_resource:
6cnn_block_11_conv2d_12_biasadd_readvariableop_resource?
;cnn_block_11_batch_normalization_11_readvariableop_resourceA
=cnn_block_11_batch_normalization_11_readvariableop_1_resourceP
Lcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resourceR
Ncnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource
identity??Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?2cnn_block_10/batch_normalization_10/ReadVariableOp?4cnn_block_10/batch_normalization_10/ReadVariableOp_1?-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?2cnn_block_11/batch_normalization_11/ReadVariableOp?4cnn_block_11/batch_normalization_11/ReadVariableOp_1?-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_9/batch_normalization_9/ReadVariableOp?2cnn_block_9/batch_normalization_9/ReadVariableOp_1?,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp?
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOpReadVariableOp4cnn_block_9_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?
cnn_block_9/conv2d_10/Conv2DConv2Dinput_tensor3cnn_block_9/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_9/conv2d_10/Conv2D?
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp5cnn_block_9_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?
cnn_block_9/conv2d_10/BiasAddBiasAdd%cnn_block_9/conv2d_10/Conv2D:output:04cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
cnn_block_9/conv2d_10/BiasAdd?
0cnn_block_9/batch_normalization_9/ReadVariableOpReadVariableOp9cnn_block_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype022
0cnn_block_9/batch_normalization_9/ReadVariableOp?
2cnn_block_9/batch_normalization_9/ReadVariableOp_1ReadVariableOp;cnn_block_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2cnn_block_9/batch_normalization_9/ReadVariableOp_1?
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3&cnn_block_9/conv2d_10/BiasAdd:output:08cnn_block_9/batch_normalization_9/ReadVariableOp:value:0:cnn_block_9/batch_normalization_9/ReadVariableOp_1:value:0Icnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 24
2cnn_block_9/batch_normalization_9/FusedBatchNormV3?
cnn_block_9/ReluRelu6cnn_block_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_9/Relu?
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5cnn_block_10_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?
cnn_block_10/conv2d_11/Conv2DConv2Dcnn_block_9/Relu:activations:04cnn_block_10/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_10/conv2d_11/Conv2D?
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6cnn_block_10_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?
cnn_block_10/conv2d_11/BiasAddBiasAdd&cnn_block_10/conv2d_11/Conv2D:output:05cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
cnn_block_10/conv2d_11/BiasAdd?
2cnn_block_10/batch_normalization_10/ReadVariableOpReadVariableOp;cnn_block_10_batch_normalization_10_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_block_10/batch_normalization_10/ReadVariableOp?
4cnn_block_10/batch_normalization_10/ReadVariableOp_1ReadVariableOp=cnn_block_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4cnn_block_10/batch_normalization_10/ReadVariableOp_1?
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpLcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
4cnn_block_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3'cnn_block_10/conv2d_11/BiasAdd:output:0:cnn_block_10/batch_normalization_10/ReadVariableOp:value:0<cnn_block_10/batch_normalization_10/ReadVariableOp_1:value:0Kcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Mcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4cnn_block_10/batch_normalization_10/FusedBatchNormV3?
cnn_block_10/ReluRelu8cnn_block_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_10/Relu?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Dinput_tensor'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd?
addAddV2cnn_block_10/Relu:activations:0conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
add?
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5cnn_block_11_conv2d_12_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?
cnn_block_11/conv2d_12/Conv2DConv2Dadd:z:04cnn_block_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_11/conv2d_12/Conv2D?
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6cnn_block_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?
cnn_block_11/conv2d_12/BiasAddBiasAdd&cnn_block_11/conv2d_12/Conv2D:output:05cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
cnn_block_11/conv2d_12/BiasAdd?
2cnn_block_11/batch_normalization_11/ReadVariableOpReadVariableOp;cnn_block_11_batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_block_11/batch_normalization_11/ReadVariableOp?
4cnn_block_11/batch_normalization_11/ReadVariableOp_1ReadVariableOp=cnn_block_11_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4cnn_block_11/batch_normalization_11/ReadVariableOp_1?
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpLcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
4cnn_block_11/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3'cnn_block_11/conv2d_12/BiasAdd:output:0:cnn_block_11/batch_normalization_11/ReadVariableOp:value:0<cnn_block_11/batch_normalization_11/ReadVariableOp_1:value:0Kcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Mcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4cnn_block_11/batch_normalization_11/FusedBatchNormV3?
cnn_block_11/ReluRelu8cnn_block_11/batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_11/Relu?
max_pooling2d_1/MaxPoolMaxPoolcnn_block_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?	
IdentityIdentity max_pooling2d_1/MaxPool:output:0D^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpF^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_13^cnn_block_10/batch_normalization_10/ReadVariableOp5^cnn_block_10/batch_normalization_10/ReadVariableOp_1.^cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp-^cnn_block_10/conv2d_11/Conv2D/ReadVariableOpD^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpF^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_13^cnn_block_11/batch_normalization_11/ReadVariableOp5^cnn_block_11/batch_normalization_11/ReadVariableOp_1.^cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp-^cnn_block_11/conv2d_12/Conv2D/ReadVariableOpB^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpD^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_11^cnn_block_9/batch_normalization_9/ReadVariableOp3^cnn_block_9/batch_normalization_9/ReadVariableOp_1-^cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp,^cnn_block_9/conv2d_10/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????@::::::::::::::::::::2?
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpCcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12h
2cnn_block_10/batch_normalization_10/ReadVariableOp2cnn_block_10/batch_normalization_10/ReadVariableOp2l
4cnn_block_10/batch_normalization_10/ReadVariableOp_14cnn_block_10/batch_normalization_10/ReadVariableOp_12^
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp2\
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp2?
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpCcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12h
2cnn_block_11/batch_normalization_11/ReadVariableOp2cnn_block_11/batch_normalization_11/ReadVariableOp2l
4cnn_block_11/batch_normalization_11/ReadVariableOp_14cnn_block_11/batch_normalization_11/ReadVariableOp_12^
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp2\
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp2?
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpAcnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_9/batch_normalization_9/ReadVariableOp0cnn_block_9/batch_normalization_9/ReadVariableOp2h
2cnn_block_9/batch_normalization_9/ReadVariableOp_12cnn_block_9/batch_normalization_9/ReadVariableOp_12\
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp2Z
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?!
?
B__inference_model_1_layer_call_and_return_conditional_losses_13305
input_1
res_block_13216
res_block_13218
res_block_13220
res_block_13222
res_block_13224
res_block_13226
res_block_13228
res_block_13230
res_block_13232
res_block_13234
res_block_13236
res_block_13238
res_block_13240
res_block_13242
res_block_13244
res_block_13246
res_block_13248
res_block_13250
res_block_13252
res_block_13254
res_block_1_13257
res_block_1_13259
res_block_1_13261
res_block_1_13263
res_block_1_13265
res_block_1_13267
res_block_1_13269
res_block_1_13271
res_block_1_13273
res_block_1_13275
res_block_1_13277
res_block_1_13279
res_block_1_13281
res_block_1_13283
res_block_1_13285
res_block_1_13287
res_block_1_13289
res_block_1_13291
res_block_1_13293
res_block_1_13295
dense_3_13299
dense_3_13301
identity??dense_3/StatefulPartitionedCall?!res_block/StatefulPartitionedCall?#res_block_1/StatefulPartitionedCall?
!res_block/StatefulPartitionedCallStatefulPartitionedCallinput_1res_block_13216res_block_13218res_block_13220res_block_13222res_block_13224res_block_13226res_block_13228res_block_13230res_block_13232res_block_13234res_block_13236res_block_13238res_block_13240res_block_13242res_block_13244res_block_13246res_block_13248res_block_13250res_block_13252res_block_13254* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_res_block_layer_call_and_return_conditional_losses_127502#
!res_block/StatefulPartitionedCall?
#res_block_1/StatefulPartitionedCallStatefulPartitionedCall*res_block/StatefulPartitionedCall:output:0res_block_1_13257res_block_1_13259res_block_1_13261res_block_1_13263res_block_1_13265res_block_1_13267res_block_1_13269res_block_1_13271res_block_1_13273res_block_1_13275res_block_1_13277res_block_1_13279res_block_1_13281res_block_1_13283res_block_1_13285res_block_1_13287res_block_1_13289res_block_1_13291res_block_1_13293res_block_1_13295* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_res_block_1_layer_call_and_return_conditional_losses_130392%
#res_block_1/StatefulPartitionedCall?
flatten_2/PartitionedCallPartitionedCall,res_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_131782
flatten_2/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_3_13299dense_3_13301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_131962!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall"^res_block/StatefulPartitionedCall$^res_block_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!res_block/StatefulPartitionedCall!res_block/StatefulPartitionedCall2J
#res_block_1/StatefulPartitionedCall#res_block_1/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_14859

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_12567

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?
D__inference_res_block_layer_call_and_return_conditional_losses_14334
input_tensor7
3cnn_block_6_conv2d_6_conv2d_readvariableop_resource8
4cnn_block_6_conv2d_6_biasadd_readvariableop_resource=
9cnn_block_6_batch_normalization_6_readvariableop_resource?
;cnn_block_6_batch_normalization_6_readvariableop_1_resourceN
Jcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7
3cnn_block_7_conv2d_7_conv2d_readvariableop_resource8
4cnn_block_7_conv2d_7_biasadd_readvariableop_resource=
9cnn_block_7_batch_normalization_7_readvariableop_resource?
;cnn_block_7_batch_normalization_7_readvariableop_1_resourceN
Jcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_9_conv2d_readvariableop_resource,
(conv2d_9_biasadd_readvariableop_resource7
3cnn_block_8_conv2d_8_conv2d_readvariableop_resource8
4cnn_block_8_conv2d_8_biasadd_readvariableop_resource=
9cnn_block_8_batch_normalization_8_readvariableop_resource?
;cnn_block_8_batch_normalization_8_readvariableop_1_resourceN
Jcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource
identity??0cnn_block_6/batch_normalization_6/AssignNewValue?2cnn_block_6/batch_normalization_6/AssignNewValue_1?Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_6/batch_normalization_6/ReadVariableOp?2cnn_block_6/batch_normalization_6/ReadVariableOp_1?+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?0cnn_block_7/batch_normalization_7/AssignNewValue?2cnn_block_7/batch_normalization_7/AssignNewValue_1?Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_7/batch_normalization_7/ReadVariableOp?2cnn_block_7/batch_normalization_7/ReadVariableOp_1?+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?0cnn_block_8/batch_normalization_8/AssignNewValue?2cnn_block_8/batch_normalization_8/AssignNewValue_1?Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_8/batch_normalization_8/ReadVariableOp?2cnn_block_8/batch_normalization_8/ReadVariableOp_1?+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp3cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02,
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?
cnn_block_6/conv2d_6/Conv2DConv2Dinput_tensor2cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
cnn_block_6/conv2d_6/Conv2D?
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?
cnn_block_6/conv2d_6/BiasAddBiasAdd$cnn_block_6/conv2d_6/Conv2D:output:03cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
cnn_block_6/conv2d_6/BiasAdd?
0cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOp9cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype022
0cnn_block_6/batch_normalization_6/ReadVariableOp?
2cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp;cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype024
2cnn_block_6/batch_normalization_6/ReadVariableOp_1?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3%cnn_block_6/conv2d_6/BiasAdd:output:08cnn_block_6/batch_normalization_6/ReadVariableOp:value:0:cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Icnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<24
2cnn_block_6/batch_normalization_6/FusedBatchNormV3?
0cnn_block_6/batch_normalization_6/AssignNewValueAssignVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource?cnn_block_6/batch_normalization_6/FusedBatchNormV3:batch_mean:0B^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype022
0cnn_block_6/batch_normalization_6/AssignNewValue?
2cnn_block_6/batch_normalization_6/AssignNewValue_1AssignVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_6/batch_normalization_6/FusedBatchNormV3:batch_variance:0D^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype024
2cnn_block_6/batch_normalization_6/AssignNewValue_1?
cnn_block_6/ReluRelu6cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
cnn_block_6/Relu?
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp3cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02,
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?
cnn_block_7/conv2d_7/Conv2DConv2Dcnn_block_6/Relu:activations:02cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
cnn_block_7/conv2d_7/Conv2D?
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?
cnn_block_7/conv2d_7/BiasAddBiasAdd$cnn_block_7/conv2d_7/Conv2D:output:03cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
cnn_block_7/conv2d_7/BiasAdd?
0cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOp9cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype022
0cnn_block_7/batch_normalization_7/ReadVariableOp?
2cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp;cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype024
2cnn_block_7/batch_normalization_7/ReadVariableOp_1?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3%cnn_block_7/conv2d_7/BiasAdd:output:08cnn_block_7/batch_normalization_7/ReadVariableOp:value:0:cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Icnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<24
2cnn_block_7/batch_normalization_7/FusedBatchNormV3?
0cnn_block_7/batch_normalization_7/AssignNewValueAssignVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource?cnn_block_7/batch_normalization_7/FusedBatchNormV3:batch_mean:0B^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype022
0cnn_block_7/batch_normalization_7/AssignNewValue?
2cnn_block_7/batch_normalization_7/AssignNewValue_1AssignVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_7/batch_normalization_7/FusedBatchNormV3:batch_variance:0D^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype024
2cnn_block_7/batch_normalization_7/AssignNewValue_1?
cnn_block_7/ReluRelu6cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
cnn_block_7/Relu?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2Dinput_tensor&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_9/BiasAdd?
addAddV2cnn_block_7/Relu:activations:0conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
add?
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp3cnn_block_8_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02,
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?
cnn_block_8/conv2d_8/Conv2DConv2Dadd:z:02cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
cnn_block_8/conv2d_8/Conv2D?
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?
cnn_block_8/conv2d_8/BiasAddBiasAdd$cnn_block_8/conv2d_8/Conv2D:output:03cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
cnn_block_8/conv2d_8/BiasAdd?
0cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOp9cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype022
0cnn_block_8/batch_normalization_8/ReadVariableOp?
2cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp;cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype024
2cnn_block_8/batch_normalization_8/ReadVariableOp_1?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02C
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02E
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3%cnn_block_8/conv2d_8/BiasAdd:output:08cnn_block_8/batch_normalization_8/ReadVariableOp:value:0:cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Icnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<24
2cnn_block_8/batch_normalization_8/FusedBatchNormV3?
0cnn_block_8/batch_normalization_8/AssignNewValueAssignVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource?cnn_block_8/batch_normalization_8/FusedBatchNormV3:batch_mean:0B^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype022
0cnn_block_8/batch_normalization_8/AssignNewValue?
2cnn_block_8/batch_normalization_8/AssignNewValue_1AssignVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_8/batch_normalization_8/FusedBatchNormV3:batch_variance:0D^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype024
2cnn_block_8/batch_normalization_8/AssignNewValue_1?
cnn_block_8/ReluRelu6cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
cnn_block_8/Relu?
max_pooling2d/MaxPoolMaxPoolcnn_block_8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
IdentityIdentitymax_pooling2d/MaxPool:output:01^cnn_block_6/batch_normalization_6/AssignNewValue3^cnn_block_6/batch_normalization_6/AssignNewValue_1B^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpD^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_11^cnn_block_6/batch_normalization_6/ReadVariableOp3^cnn_block_6/batch_normalization_6/ReadVariableOp_1,^cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+^cnn_block_6/conv2d_6/Conv2D/ReadVariableOp1^cnn_block_7/batch_normalization_7/AssignNewValue3^cnn_block_7/batch_normalization_7/AssignNewValue_1B^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpD^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_11^cnn_block_7/batch_normalization_7/ReadVariableOp3^cnn_block_7/batch_normalization_7/ReadVariableOp_1,^cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+^cnn_block_7/conv2d_7/Conv2D/ReadVariableOp1^cnn_block_8/batch_normalization_8/AssignNewValue3^cnn_block_8/batch_normalization_8/AssignNewValue_1B^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpD^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_11^cnn_block_8/batch_normalization_8/ReadVariableOp3^cnn_block_8/batch_normalization_8/ReadVariableOp_1,^cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+^cnn_block_8/conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????::::::::::::::::::::2d
0cnn_block_6/batch_normalization_6/AssignNewValue0cnn_block_6/batch_normalization_6/AssignNewValue2h
2cnn_block_6/batch_normalization_6/AssignNewValue_12cnn_block_6/batch_normalization_6/AssignNewValue_12?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpAcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_6/batch_normalization_6/ReadVariableOp0cnn_block_6/batch_normalization_6/ReadVariableOp2h
2cnn_block_6/batch_normalization_6/ReadVariableOp_12cnn_block_6/batch_normalization_6/ReadVariableOp_12Z
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2X
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2d
0cnn_block_7/batch_normalization_7/AssignNewValue0cnn_block_7/batch_normalization_7/AssignNewValue2h
2cnn_block_7/batch_normalization_7/AssignNewValue_12cnn_block_7/batch_normalization_7/AssignNewValue_12?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpAcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_7/batch_normalization_7/ReadVariableOp0cnn_block_7/batch_normalization_7/ReadVariableOp2h
2cnn_block_7/batch_normalization_7/ReadVariableOp_12cnn_block_7/batch_normalization_7/ReadVariableOp_12Z
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2X
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2d
0cnn_block_8/batch_normalization_8/AssignNewValue0cnn_block_8/batch_normalization_8/AssignNewValue2h
2cnn_block_8/batch_normalization_8/AssignNewValue_12cnn_block_8/batch_normalization_8/AssignNewValue_12?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpAcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_8/batch_normalization_8/ReadVariableOp0cnn_block_8/batch_normalization_8/ReadVariableOp2h
2cnn_block_8/batch_normalization_8/ReadVariableOp_12cnn_block_8/batch_normalization_8/ReadVariableOp_12Z
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2X
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?
?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15115

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15051

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?!
?
B__inference_model_1_layer_call_and_return_conditional_losses_13581

inputs
res_block_13492
res_block_13494
res_block_13496
res_block_13498
res_block_13500
res_block_13502
res_block_13504
res_block_13506
res_block_13508
res_block_13510
res_block_13512
res_block_13514
res_block_13516
res_block_13518
res_block_13520
res_block_13522
res_block_13524
res_block_13526
res_block_13528
res_block_13530
res_block_1_13533
res_block_1_13535
res_block_1_13537
res_block_1_13539
res_block_1_13541
res_block_1_13543
res_block_1_13545
res_block_1_13547
res_block_1_13549
res_block_1_13551
res_block_1_13553
res_block_1_13555
res_block_1_13557
res_block_1_13559
res_block_1_13561
res_block_1_13563
res_block_1_13565
res_block_1_13567
res_block_1_13569
res_block_1_13571
dense_3_13575
dense_3_13577
identity??dense_3/StatefulPartitionedCall?!res_block/StatefulPartitionedCall?#res_block_1/StatefulPartitionedCall?
!res_block/StatefulPartitionedCallStatefulPartitionedCallinputsres_block_13492res_block_13494res_block_13496res_block_13498res_block_13500res_block_13502res_block_13504res_block_13506res_block_13508res_block_13510res_block_13512res_block_13514res_block_13516res_block_13518res_block_13520res_block_13522res_block_13524res_block_13526res_block_13528res_block_13530* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_res_block_layer_call_and_return_conditional_losses_127502#
!res_block/StatefulPartitionedCall?
#res_block_1/StatefulPartitionedCallStatefulPartitionedCall*res_block/StatefulPartitionedCall:output:0res_block_1_13533res_block_1_13535res_block_1_13537res_block_1_13539res_block_1_13541res_block_1_13543res_block_1_13545res_block_1_13547res_block_1_13549res_block_1_13551res_block_1_13553res_block_1_13555res_block_1_13557res_block_1_13559res_block_1_13561res_block_1_13563res_block_1_13565res_block_1_13567res_block_1_13569res_block_1_13571* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_res_block_1_layer_call_and_return_conditional_losses_130392%
#res_block_1/StatefulPartitionedCall?
flatten_2/PartitionedCallPartitionedCall,res_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_131782
flatten_2/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_3_13575dense_3_13577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_131962!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall"^res_block/StatefulPartitionedCall$^res_block_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!res_block/StatefulPartitionedCall!res_block/StatefulPartitionedCall2J
#res_block_1/StatefulPartitionedCall#res_block_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
D__inference_res_block_layer_call_and_return_conditional_losses_12675
input_tensor7
3cnn_block_6_conv2d_6_conv2d_readvariableop_resource8
4cnn_block_6_conv2d_6_biasadd_readvariableop_resource=
9cnn_block_6_batch_normalization_6_readvariableop_resource?
;cnn_block_6_batch_normalization_6_readvariableop_1_resourceN
Jcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7
3cnn_block_7_conv2d_7_conv2d_readvariableop_resource8
4cnn_block_7_conv2d_7_biasadd_readvariableop_resource=
9cnn_block_7_batch_normalization_7_readvariableop_resource?
;cnn_block_7_batch_normalization_7_readvariableop_1_resourceN
Jcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_9_conv2d_readvariableop_resource,
(conv2d_9_biasadd_readvariableop_resource7
3cnn_block_8_conv2d_8_conv2d_readvariableop_resource8
4cnn_block_8_conv2d_8_biasadd_readvariableop_resource=
9cnn_block_8_batch_normalization_8_readvariableop_resource?
;cnn_block_8_batch_normalization_8_readvariableop_1_resourceN
Jcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource
identity??0cnn_block_6/batch_normalization_6/AssignNewValue?2cnn_block_6/batch_normalization_6/AssignNewValue_1?Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_6/batch_normalization_6/ReadVariableOp?2cnn_block_6/batch_normalization_6/ReadVariableOp_1?+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?0cnn_block_7/batch_normalization_7/AssignNewValue?2cnn_block_7/batch_normalization_7/AssignNewValue_1?Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_7/batch_normalization_7/ReadVariableOp?2cnn_block_7/batch_normalization_7/ReadVariableOp_1?+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?0cnn_block_8/batch_normalization_8/AssignNewValue?2cnn_block_8/batch_normalization_8/AssignNewValue_1?Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_8/batch_normalization_8/ReadVariableOp?2cnn_block_8/batch_normalization_8/ReadVariableOp_1?+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp3cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02,
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?
cnn_block_6/conv2d_6/Conv2DConv2Dinput_tensor2cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
cnn_block_6/conv2d_6/Conv2D?
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?
cnn_block_6/conv2d_6/BiasAddBiasAdd$cnn_block_6/conv2d_6/Conv2D:output:03cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
cnn_block_6/conv2d_6/BiasAdd?
0cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOp9cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype022
0cnn_block_6/batch_normalization_6/ReadVariableOp?
2cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp;cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype024
2cnn_block_6/batch_normalization_6/ReadVariableOp_1?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3%cnn_block_6/conv2d_6/BiasAdd:output:08cnn_block_6/batch_normalization_6/ReadVariableOp:value:0:cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Icnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<24
2cnn_block_6/batch_normalization_6/FusedBatchNormV3?
0cnn_block_6/batch_normalization_6/AssignNewValueAssignVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource?cnn_block_6/batch_normalization_6/FusedBatchNormV3:batch_mean:0B^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype022
0cnn_block_6/batch_normalization_6/AssignNewValue?
2cnn_block_6/batch_normalization_6/AssignNewValue_1AssignVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_6/batch_normalization_6/FusedBatchNormV3:batch_variance:0D^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype024
2cnn_block_6/batch_normalization_6/AssignNewValue_1?
cnn_block_6/ReluRelu6cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
cnn_block_6/Relu?
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp3cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02,
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?
cnn_block_7/conv2d_7/Conv2DConv2Dcnn_block_6/Relu:activations:02cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
cnn_block_7/conv2d_7/Conv2D?
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?
cnn_block_7/conv2d_7/BiasAddBiasAdd$cnn_block_7/conv2d_7/Conv2D:output:03cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
cnn_block_7/conv2d_7/BiasAdd?
0cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOp9cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype022
0cnn_block_7/batch_normalization_7/ReadVariableOp?
2cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp;cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype024
2cnn_block_7/batch_normalization_7/ReadVariableOp_1?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3%cnn_block_7/conv2d_7/BiasAdd:output:08cnn_block_7/batch_normalization_7/ReadVariableOp:value:0:cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Icnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<24
2cnn_block_7/batch_normalization_7/FusedBatchNormV3?
0cnn_block_7/batch_normalization_7/AssignNewValueAssignVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource?cnn_block_7/batch_normalization_7/FusedBatchNormV3:batch_mean:0B^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype022
0cnn_block_7/batch_normalization_7/AssignNewValue?
2cnn_block_7/batch_normalization_7/AssignNewValue_1AssignVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_7/batch_normalization_7/FusedBatchNormV3:batch_variance:0D^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype024
2cnn_block_7/batch_normalization_7/AssignNewValue_1?
cnn_block_7/ReluRelu6cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
cnn_block_7/Relu?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2Dinput_tensor&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_9/BiasAdd?
addAddV2cnn_block_7/Relu:activations:0conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
add?
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp3cnn_block_8_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02,
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?
cnn_block_8/conv2d_8/Conv2DConv2Dadd:z:02cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
cnn_block_8/conv2d_8/Conv2D?
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?
cnn_block_8/conv2d_8/BiasAddBiasAdd$cnn_block_8/conv2d_8/Conv2D:output:03cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
cnn_block_8/conv2d_8/BiasAdd?
0cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOp9cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype022
0cnn_block_8/batch_normalization_8/ReadVariableOp?
2cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp;cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype024
2cnn_block_8/batch_normalization_8/ReadVariableOp_1?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02C
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02E
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3%cnn_block_8/conv2d_8/BiasAdd:output:08cnn_block_8/batch_normalization_8/ReadVariableOp:value:0:cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Icnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<24
2cnn_block_8/batch_normalization_8/FusedBatchNormV3?
0cnn_block_8/batch_normalization_8/AssignNewValueAssignVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource?cnn_block_8/batch_normalization_8/FusedBatchNormV3:batch_mean:0B^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype022
0cnn_block_8/batch_normalization_8/AssignNewValue?
2cnn_block_8/batch_normalization_8/AssignNewValue_1AssignVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_8/batch_normalization_8/FusedBatchNormV3:batch_variance:0D^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype024
2cnn_block_8/batch_normalization_8/AssignNewValue_1?
cnn_block_8/ReluRelu6cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
cnn_block_8/Relu?
max_pooling2d/MaxPoolMaxPoolcnn_block_8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
IdentityIdentitymax_pooling2d/MaxPool:output:01^cnn_block_6/batch_normalization_6/AssignNewValue3^cnn_block_6/batch_normalization_6/AssignNewValue_1B^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpD^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_11^cnn_block_6/batch_normalization_6/ReadVariableOp3^cnn_block_6/batch_normalization_6/ReadVariableOp_1,^cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+^cnn_block_6/conv2d_6/Conv2D/ReadVariableOp1^cnn_block_7/batch_normalization_7/AssignNewValue3^cnn_block_7/batch_normalization_7/AssignNewValue_1B^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpD^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_11^cnn_block_7/batch_normalization_7/ReadVariableOp3^cnn_block_7/batch_normalization_7/ReadVariableOp_1,^cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+^cnn_block_7/conv2d_7/Conv2D/ReadVariableOp1^cnn_block_8/batch_normalization_8/AssignNewValue3^cnn_block_8/batch_normalization_8/AssignNewValue_1B^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpD^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_11^cnn_block_8/batch_normalization_8/ReadVariableOp3^cnn_block_8/batch_normalization_8/ReadVariableOp_1,^cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+^cnn_block_8/conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????::::::::::::::::::::2d
0cnn_block_6/batch_normalization_6/AssignNewValue0cnn_block_6/batch_normalization_6/AssignNewValue2h
2cnn_block_6/batch_normalization_6/AssignNewValue_12cnn_block_6/batch_normalization_6/AssignNewValue_12?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpAcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_6/batch_normalization_6/ReadVariableOp0cnn_block_6/batch_normalization_6/ReadVariableOp2h
2cnn_block_6/batch_normalization_6/ReadVariableOp_12cnn_block_6/batch_normalization_6/ReadVariableOp_12Z
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2X
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2d
0cnn_block_7/batch_normalization_7/AssignNewValue0cnn_block_7/batch_normalization_7/AssignNewValue2h
2cnn_block_7/batch_normalization_7/AssignNewValue_12cnn_block_7/batch_normalization_7/AssignNewValue_12?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpAcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_7/batch_normalization_7/ReadVariableOp0cnn_block_7/batch_normalization_7/ReadVariableOp2h
2cnn_block_7/batch_normalization_7/ReadVariableOp_12cnn_block_7/batch_normalization_7/ReadVariableOp_12Z
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2X
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2d
0cnn_block_8/batch_normalization_8/AssignNewValue0cnn_block_8/batch_normalization_8/AssignNewValue2h
2cnn_block_8/batch_normalization_8/AssignNewValue_12cnn_block_8/batch_normalization_8/AssignNewValue_12?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpAcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_8/batch_normalization_8/ReadVariableOp0cnn_block_8/batch_normalization_8/ReadVariableOp2h
2cnn_block_8/batch_normalization_8/ReadVariableOp_12cnn_block_8/batch_normalization_8/ReadVariableOp_12Z
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2X
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?
?
'__inference_model_1_layer_call_fn_14253

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_135812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_3_layer_call_and_return_conditional_losses_13196

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?b
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????b::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
E
)__inference_flatten_2_layer_call_fn_14756

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_131782
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_13178

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????b2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????b2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_10_layer_call_fn_15095

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_124632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_14877

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_res_block_1_layer_call_fn_14745
input_tensor
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_res_block_1_layer_call_and_return_conditional_losses_130392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????@::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?
?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15133

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?3
 __inference__wrapped_model_11942
input_1I
Emodel_1_res_block_cnn_block_6_conv2d_6_conv2d_readvariableop_resourceJ
Fmodel_1_res_block_cnn_block_6_conv2d_6_biasadd_readvariableop_resourceO
Kmodel_1_res_block_cnn_block_6_batch_normalization_6_readvariableop_resourceQ
Mmodel_1_res_block_cnn_block_6_batch_normalization_6_readvariableop_1_resource`
\model_1_res_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceb
^model_1_res_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceI
Emodel_1_res_block_cnn_block_7_conv2d_7_conv2d_readvariableop_resourceJ
Fmodel_1_res_block_cnn_block_7_conv2d_7_biasadd_readvariableop_resourceO
Kmodel_1_res_block_cnn_block_7_batch_normalization_7_readvariableop_resourceQ
Mmodel_1_res_block_cnn_block_7_batch_normalization_7_readvariableop_1_resource`
\model_1_res_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceb
^model_1_res_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource=
9model_1_res_block_conv2d_9_conv2d_readvariableop_resource>
:model_1_res_block_conv2d_9_biasadd_readvariableop_resourceI
Emodel_1_res_block_cnn_block_8_conv2d_8_conv2d_readvariableop_resourceJ
Fmodel_1_res_block_cnn_block_8_conv2d_8_biasadd_readvariableop_resourceO
Kmodel_1_res_block_cnn_block_8_batch_normalization_8_readvariableop_resourceQ
Mmodel_1_res_block_cnn_block_8_batch_normalization_8_readvariableop_1_resource`
\model_1_res_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceb
^model_1_res_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceL
Hmodel_1_res_block_1_cnn_block_9_conv2d_10_conv2d_readvariableop_resourceM
Imodel_1_res_block_1_cnn_block_9_conv2d_10_biasadd_readvariableop_resourceQ
Mmodel_1_res_block_1_cnn_block_9_batch_normalization_9_readvariableop_resourceS
Omodel_1_res_block_1_cnn_block_9_batch_normalization_9_readvariableop_1_resourceb
^model_1_res_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resourced
`model_1_res_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resourceM
Imodel_1_res_block_1_cnn_block_10_conv2d_11_conv2d_readvariableop_resourceN
Jmodel_1_res_block_1_cnn_block_10_conv2d_11_biasadd_readvariableop_resourceS
Omodel_1_res_block_1_cnn_block_10_batch_normalization_10_readvariableop_resourceU
Qmodel_1_res_block_1_cnn_block_10_batch_normalization_10_readvariableop_1_resourced
`model_1_res_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resourcef
bmodel_1_res_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource@
<model_1_res_block_1_conv2d_13_conv2d_readvariableop_resourceA
=model_1_res_block_1_conv2d_13_biasadd_readvariableop_resourceM
Imodel_1_res_block_1_cnn_block_11_conv2d_12_conv2d_readvariableop_resourceN
Jmodel_1_res_block_1_cnn_block_11_conv2d_12_biasadd_readvariableop_resourceS
Omodel_1_res_block_1_cnn_block_11_batch_normalization_11_readvariableop_resourceU
Qmodel_1_res_block_1_cnn_block_11_batch_normalization_11_readvariableop_1_resourced
`model_1_res_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resourcef
bmodel_1_res_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource2
.model_1_dense_3_matmul_readvariableop_resource3
/model_1_dense_3_biasadd_readvariableop_resource
identity??&model_1/dense_3/BiasAdd/ReadVariableOp?%model_1/dense_3/MatMul/ReadVariableOp?Smodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Umodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?Bmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp?Dmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1?=model_1/res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?<model_1/res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?Smodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Umodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?Bmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp?Dmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1?=model_1/res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?<model_1/res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?Smodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Umodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?Bmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp?Dmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1?=model_1/res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?<model_1/res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?1model_1/res_block/conv2d_9/BiasAdd/ReadVariableOp?0model_1/res_block/conv2d_9/Conv2D/ReadVariableOp?Wmodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Ymodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?Fmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp?Hmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1?Amodel_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?@model_1/res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?Wmodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?Ymodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?Fmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp?Hmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1?Amodel_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?@model_1/res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?Umodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Wmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?Dmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp?Fmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1?@model_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp??model_1/res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?4model_1/res_block_1/conv2d_13/BiasAdd/ReadVariableOp?3model_1/res_block_1/conv2d_13/Conv2D/ReadVariableOp?
<model_1/res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOpEmodel_1_res_block_cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02>
<model_1/res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?
-model_1/res_block/cnn_block_6/conv2d_6/Conv2DConv2Dinput_1Dmodel_1/res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2/
-model_1/res_block/cnn_block_6/conv2d_6/Conv2D?
=model_1/res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOpFmodel_1_res_block_cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02?
=model_1/res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?
.model_1/res_block/cnn_block_6/conv2d_6/BiasAddBiasAdd6model_1/res_block/cnn_block_6/conv2d_6/Conv2D:output:0Emodel_1/res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 20
.model_1/res_block/cnn_block_6/conv2d_6/BiasAdd?
Bmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOpKmodel_1_res_block_cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02D
Bmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp?
Dmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOpMmodel_1_res_block_cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1?
Smodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp\model_1_res_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02U
Smodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Umodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^model_1_res_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02W
Umodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
Dmodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV37model_1/res_block/cnn_block_6/conv2d_6/BiasAdd:output:0Jmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp:value:0Lmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0[model_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0]model_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2F
Dmodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3?
"model_1/res_block/cnn_block_6/ReluReluHmodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2$
"model_1/res_block/cnn_block_6/Relu?
<model_1/res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOpEmodel_1_res_block_cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02>
<model_1/res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?
-model_1/res_block/cnn_block_7/conv2d_7/Conv2DConv2D0model_1/res_block/cnn_block_6/Relu:activations:0Dmodel_1/res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2/
-model_1/res_block/cnn_block_7/conv2d_7/Conv2D?
=model_1/res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOpFmodel_1_res_block_cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02?
=model_1/res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?
.model_1/res_block/cnn_block_7/conv2d_7/BiasAddBiasAdd6model_1/res_block/cnn_block_7/conv2d_7/Conv2D:output:0Emodel_1/res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 20
.model_1/res_block/cnn_block_7/conv2d_7/BiasAdd?
Bmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOpKmodel_1_res_block_cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype02D
Bmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp?
Dmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOpMmodel_1_res_block_cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1?
Smodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp\model_1_res_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02U
Smodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Umodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^model_1_res_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02W
Umodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
Dmodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV37model_1/res_block/cnn_block_7/conv2d_7/BiasAdd:output:0Jmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp:value:0Lmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0[model_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0]model_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2F
Dmodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3?
"model_1/res_block/cnn_block_7/ReluReluHmodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2$
"model_1/res_block/cnn_block_7/Relu?
0model_1/res_block/conv2d_9/Conv2D/ReadVariableOpReadVariableOp9model_1_res_block_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype022
0model_1/res_block/conv2d_9/Conv2D/ReadVariableOp?
!model_1/res_block/conv2d_9/Conv2DConv2Dinput_18model_1/res_block/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2#
!model_1/res_block/conv2d_9/Conv2D?
1model_1/res_block/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp:model_1_res_block_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype023
1model_1/res_block/conv2d_9/BiasAdd/ReadVariableOp?
"model_1/res_block/conv2d_9/BiasAddBiasAdd*model_1/res_block/conv2d_9/Conv2D:output:09model_1/res_block/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2$
"model_1/res_block/conv2d_9/BiasAdd?
model_1/res_block/addAddV20model_1/res_block/cnn_block_7/Relu:activations:0+model_1/res_block/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
model_1/res_block/add?
<model_1/res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOpEmodel_1_res_block_cnn_block_8_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02>
<model_1/res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?
-model_1/res_block/cnn_block_8/conv2d_8/Conv2DConv2Dmodel_1/res_block/add:z:0Dmodel_1/res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2/
-model_1/res_block/cnn_block_8/conv2d_8/Conv2D?
=model_1/res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOpFmodel_1_res_block_cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02?
=model_1/res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?
.model_1/res_block/cnn_block_8/conv2d_8/BiasAddBiasAdd6model_1/res_block/cnn_block_8/conv2d_8/Conv2D:output:0Emodel_1/res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@20
.model_1/res_block/cnn_block_8/conv2d_8/BiasAdd?
Bmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOpKmodel_1_res_block_cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp?
Dmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOpMmodel_1_res_block_cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1?
Smodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp\model_1_res_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02U
Smodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Umodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^model_1_res_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02W
Umodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
Dmodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV37model_1/res_block/cnn_block_8/conv2d_8/BiasAdd:output:0Jmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp:value:0Lmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0[model_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0]model_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2F
Dmodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3?
"model_1/res_block/cnn_block_8/ReluReluHmodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2$
"model_1/res_block/cnn_block_8/Relu?
'model_1/res_block/max_pooling2d/MaxPoolMaxPool0model_1/res_block/cnn_block_8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2)
'model_1/res_block/max_pooling2d/MaxPool?
?model_1/res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOpReadVariableOpHmodel_1_res_block_1_cnn_block_9_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02A
?model_1/res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?
0model_1/res_block_1/cnn_block_9/conv2d_10/Conv2DConv2D0model_1/res_block/max_pooling2d/MaxPool:output:0Gmodel_1/res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
22
0model_1/res_block_1/cnn_block_9/conv2d_10/Conv2D?
@model_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOpReadVariableOpImodel_1_res_block_1_cnn_block_9_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@model_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?
1model_1/res_block_1/cnn_block_9/conv2d_10/BiasAddBiasAdd9model_1/res_block_1/cnn_block_9/conv2d_10/Conv2D:output:0Hmodel_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????23
1model_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd?
Dmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOpReadVariableOpMmodel_1_res_block_1_cnn_block_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype02F
Dmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp?
Fmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1ReadVariableOpOmodel_1_res_block_1_cnn_block_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype02H
Fmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1?
Umodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp^model_1_res_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02W
Umodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Wmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`model_1_res_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02Y
Wmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
Fmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3:model_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd:output:0Lmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp:value:0Nmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1:value:0]model_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0_model_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2H
Fmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3?
$model_1/res_block_1/cnn_block_9/ReluReluJmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2&
$model_1/res_block_1/cnn_block_9/Relu?
@model_1/res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOpReadVariableOpImodel_1_res_block_1_cnn_block_10_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02B
@model_1/res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?
1model_1/res_block_1/cnn_block_10/conv2d_11/Conv2DConv2D2model_1/res_block_1/cnn_block_9/Relu:activations:0Hmodel_1/res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
23
1model_1/res_block_1/cnn_block_10/conv2d_11/Conv2D?
Amodel_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpReadVariableOpJmodel_1_res_block_1_cnn_block_10_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodel_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?
2model_1/res_block_1/cnn_block_10/conv2d_11/BiasAddBiasAdd:model_1/res_block_1/cnn_block_10/conv2d_11/Conv2D:output:0Imodel_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????24
2model_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd?
Fmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOpReadVariableOpOmodel_1_res_block_1_cnn_block_10_batch_normalization_10_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp?
Hmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1ReadVariableOpQmodel_1_res_block_1_cnn_block_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:?*
dtype02J
Hmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1?
Wmodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp`model_1_res_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wmodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Ymodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpbmodel_1_res_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02[
Ymodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
Hmodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3;model_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd:output:0Nmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp:value:0Pmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1:value:0_model_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0amodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2J
Hmodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3?
%model_1/res_block_1/cnn_block_10/ReluReluLmodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2'
%model_1/res_block_1/cnn_block_10/Relu?
3model_1/res_block_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp<model_1_res_block_1_conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3model_1/res_block_1/conv2d_13/Conv2D/ReadVariableOp?
$model_1/res_block_1/conv2d_13/Conv2DConv2D0model_1/res_block/max_pooling2d/MaxPool:output:0;model_1/res_block_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$model_1/res_block_1/conv2d_13/Conv2D?
4model_1/res_block_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp=model_1_res_block_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_1/res_block_1/conv2d_13/BiasAdd/ReadVariableOp?
%model_1/res_block_1/conv2d_13/BiasAddBiasAdd-model_1/res_block_1/conv2d_13/Conv2D:output:0<model_1/res_block_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2'
%model_1/res_block_1/conv2d_13/BiasAdd?
model_1/res_block_1/addAddV23model_1/res_block_1/cnn_block_10/Relu:activations:0.model_1/res_block_1/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
model_1/res_block_1/add?
@model_1/res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOpImodel_1_res_block_1_cnn_block_11_conv2d_12_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02B
@model_1/res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?
1model_1/res_block_1/cnn_block_11/conv2d_12/Conv2DConv2Dmodel_1/res_block_1/add:z:0Hmodel_1/res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
23
1model_1/res_block_1/cnn_block_11/conv2d_12/Conv2D?
Amodel_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOpJmodel_1_res_block_1_cnn_block_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Amodel_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?
2model_1/res_block_1/cnn_block_11/conv2d_12/BiasAddBiasAdd:model_1/res_block_1/cnn_block_11/conv2d_12/Conv2D:output:0Imodel_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????24
2model_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd?
Fmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOpReadVariableOpOmodel_1_res_block_1_cnn_block_11_batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype02H
Fmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp?
Hmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1ReadVariableOpQmodel_1_res_block_1_cnn_block_11_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype02J
Hmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1?
Wmodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp`model_1_res_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wmodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
Ymodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpbmodel_1_res_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02[
Ymodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
Hmodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3;model_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd:output:0Nmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp:value:0Pmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1:value:0_model_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0amodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2J
Hmodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3?
%model_1/res_block_1/cnn_block_11/ReluReluLmodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2'
%model_1/res_block_1/cnn_block_11/Relu?
+model_1/res_block_1/max_pooling2d_1/MaxPoolMaxPool3model_1/res_block_1/cnn_block_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2-
+model_1/res_block_1/max_pooling2d_1/MaxPool?
model_1/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
model_1/flatten_2/Const?
model_1/flatten_2/ReshapeReshape4model_1/res_block_1/max_pooling2d_1/MaxPool:output:0 model_1/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????b2
model_1/flatten_2/Reshape?
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?b
*
dtype02'
%model_1/dense_3/MatMul/ReadVariableOp?
model_1/dense_3/MatMulMatMul"model_1/flatten_2/Reshape:output:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model_1/dense_3/MatMul?
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&model_1/dense_3/BiasAdd/ReadVariableOp?
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model_1/dense_3/BiasAdd?
IdentityIdentity model_1/dense_3/BiasAdd:output:0'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOpT^model_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpV^model_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1C^model_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOpE^model_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1>^model_1/res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp=^model_1/res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOpT^model_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpV^model_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1C^model_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOpE^model_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1>^model_1/res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp=^model_1/res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOpT^model_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpV^model_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1C^model_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOpE^model_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1>^model_1/res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp=^model_1/res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2^model_1/res_block/conv2d_9/BiasAdd/ReadVariableOp1^model_1/res_block/conv2d_9/Conv2D/ReadVariableOpX^model_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpZ^model_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1G^model_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOpI^model_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1B^model_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpA^model_1/res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOpX^model_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpZ^model_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1G^model_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOpI^model_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1B^model_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpA^model_1/res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOpV^model_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpX^model_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1E^model_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOpG^model_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1A^model_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp@^model_1/res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp5^model_1/res_block_1/conv2d_13/BiasAdd/ReadVariableOp4^model_1/res_block_1/conv2d_13/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp2?
Smodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpSmodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Umodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Umodel_1/res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12?
Bmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOpBmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp2?
Dmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1Dmodel_1/res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_12~
=model_1/res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp=model_1/res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2|
<model_1/res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp<model_1/res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2?
Smodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpSmodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Umodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Umodel_1/res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12?
Bmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOpBmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp2?
Dmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1Dmodel_1/res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_12~
=model_1/res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp=model_1/res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2|
<model_1/res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp<model_1/res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2?
Smodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpSmodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Umodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Umodel_1/res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12?
Bmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOpBmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp2?
Dmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1Dmodel_1/res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_12~
=model_1/res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp=model_1/res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2|
<model_1/res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp<model_1/res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2f
1model_1/res_block/conv2d_9/BiasAdd/ReadVariableOp1model_1/res_block/conv2d_9/BiasAdd/ReadVariableOp2d
0model_1/res_block/conv2d_9/Conv2D/ReadVariableOp0model_1/res_block/conv2d_9/Conv2D/ReadVariableOp2?
Wmodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpWmodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Ymodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Ymodel_1/res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12?
Fmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOpFmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp2?
Hmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1Hmodel_1/res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_12?
Amodel_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpAmodel_1/res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp2?
@model_1/res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp@model_1/res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp2?
Wmodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpWmodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
Ymodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Ymodel_1/res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12?
Fmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOpFmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp2?
Hmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1Hmodel_1/res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_12?
Amodel_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpAmodel_1/res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp2?
@model_1/res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp@model_1/res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp2?
Umodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpUmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Wmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Wmodel_1/res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12?
Dmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOpDmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp2?
Fmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1Fmodel_1/res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_12?
@model_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp@model_1/res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp2?
?model_1/res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?model_1/res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp2l
4model_1/res_block_1/conv2d_13/BiasAdd/ReadVariableOp4model_1/res_block_1/conv2d_13/BiasAdd/ReadVariableOp2j
3model_1/res_block_1/conv2d_13/Conv2D/ReadVariableOp3model_1/res_block_1/conv2d_13/Conv2D/ReadVariableOp:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
ƚ
?
F__inference_res_block_1_layer_call_and_return_conditional_losses_14580
input_tensor8
4cnn_block_9_conv2d_10_conv2d_readvariableop_resource9
5cnn_block_9_conv2d_10_biasadd_readvariableop_resource=
9cnn_block_9_batch_normalization_9_readvariableop_resource?
;cnn_block_9_batch_normalization_9_readvariableop_1_resourceN
Jcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource9
5cnn_block_10_conv2d_11_conv2d_readvariableop_resource:
6cnn_block_10_conv2d_11_biasadd_readvariableop_resource?
;cnn_block_10_batch_normalization_10_readvariableop_resourceA
=cnn_block_10_batch_normalization_10_readvariableop_1_resourceP
Lcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resourceR
Ncnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource9
5cnn_block_11_conv2d_12_conv2d_readvariableop_resource:
6cnn_block_11_conv2d_12_biasadd_readvariableop_resource?
;cnn_block_11_batch_normalization_11_readvariableop_resourceA
=cnn_block_11_batch_normalization_11_readvariableop_1_resourceP
Lcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resourceR
Ncnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource
identity??2cnn_block_10/batch_normalization_10/AssignNewValue?4cnn_block_10/batch_normalization_10/AssignNewValue_1?Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?2cnn_block_10/batch_normalization_10/ReadVariableOp?4cnn_block_10/batch_normalization_10/ReadVariableOp_1?-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?2cnn_block_11/batch_normalization_11/AssignNewValue?4cnn_block_11/batch_normalization_11/AssignNewValue_1?Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?2cnn_block_11/batch_normalization_11/ReadVariableOp?4cnn_block_11/batch_normalization_11/ReadVariableOp_1?-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?0cnn_block_9/batch_normalization_9/AssignNewValue?2cnn_block_9/batch_normalization_9/AssignNewValue_1?Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_9/batch_normalization_9/ReadVariableOp?2cnn_block_9/batch_normalization_9/ReadVariableOp_1?,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp?
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOpReadVariableOp4cnn_block_9_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?
cnn_block_9/conv2d_10/Conv2DConv2Dinput_tensor3cnn_block_9/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_9/conv2d_10/Conv2D?
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp5cnn_block_9_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?
cnn_block_9/conv2d_10/BiasAddBiasAdd%cnn_block_9/conv2d_10/Conv2D:output:04cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
cnn_block_9/conv2d_10/BiasAdd?
0cnn_block_9/batch_normalization_9/ReadVariableOpReadVariableOp9cnn_block_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype022
0cnn_block_9/batch_normalization_9/ReadVariableOp?
2cnn_block_9/batch_normalization_9/ReadVariableOp_1ReadVariableOp;cnn_block_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2cnn_block_9/batch_normalization_9/ReadVariableOp_1?
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3&cnn_block_9/conv2d_10/BiasAdd:output:08cnn_block_9/batch_normalization_9/ReadVariableOp:value:0:cnn_block_9/batch_normalization_9/ReadVariableOp_1:value:0Icnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<24
2cnn_block_9/batch_normalization_9/FusedBatchNormV3?
0cnn_block_9/batch_normalization_9/AssignNewValueAssignVariableOpJcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource?cnn_block_9/batch_normalization_9/FusedBatchNormV3:batch_mean:0B^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype022
0cnn_block_9/batch_normalization_9/AssignNewValue?
2cnn_block_9/batch_normalization_9/AssignNewValue_1AssignVariableOpLcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_9/batch_normalization_9/FusedBatchNormV3:batch_variance:0D^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype024
2cnn_block_9/batch_normalization_9/AssignNewValue_1?
cnn_block_9/ReluRelu6cnn_block_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_9/Relu?
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5cnn_block_10_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?
cnn_block_10/conv2d_11/Conv2DConv2Dcnn_block_9/Relu:activations:04cnn_block_10/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_10/conv2d_11/Conv2D?
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6cnn_block_10_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?
cnn_block_10/conv2d_11/BiasAddBiasAdd&cnn_block_10/conv2d_11/Conv2D:output:05cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
cnn_block_10/conv2d_11/BiasAdd?
2cnn_block_10/batch_normalization_10/ReadVariableOpReadVariableOp;cnn_block_10_batch_normalization_10_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_block_10/batch_normalization_10/ReadVariableOp?
4cnn_block_10/batch_normalization_10/ReadVariableOp_1ReadVariableOp=cnn_block_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4cnn_block_10/batch_normalization_10/ReadVariableOp_1?
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpLcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
4cnn_block_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3'cnn_block_10/conv2d_11/BiasAdd:output:0:cnn_block_10/batch_normalization_10/ReadVariableOp:value:0<cnn_block_10/batch_normalization_10/ReadVariableOp_1:value:0Kcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Mcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<26
4cnn_block_10/batch_normalization_10/FusedBatchNormV3?
2cnn_block_10/batch_normalization_10/AssignNewValueAssignVariableOpLcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resourceAcnn_block_10/batch_normalization_10/FusedBatchNormV3:batch_mean:0D^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2cnn_block_10/batch_normalization_10/AssignNewValue?
4cnn_block_10/batch_normalization_10/AssignNewValue_1AssignVariableOpNcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resourceEcnn_block_10/batch_normalization_10/FusedBatchNormV3:batch_variance:0F^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4cnn_block_10/batch_normalization_10/AssignNewValue_1?
cnn_block_10/ReluRelu8cnn_block_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_10/Relu?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Dinput_tensor'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd?
addAddV2cnn_block_10/Relu:activations:0conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
add?
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5cnn_block_11_conv2d_12_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?
cnn_block_11/conv2d_12/Conv2DConv2Dadd:z:04cnn_block_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_11/conv2d_12/Conv2D?
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6cnn_block_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?
cnn_block_11/conv2d_12/BiasAddBiasAdd&cnn_block_11/conv2d_12/Conv2D:output:05cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
cnn_block_11/conv2d_12/BiasAdd?
2cnn_block_11/batch_normalization_11/ReadVariableOpReadVariableOp;cnn_block_11_batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_block_11/batch_normalization_11/ReadVariableOp?
4cnn_block_11/batch_normalization_11/ReadVariableOp_1ReadVariableOp=cnn_block_11_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4cnn_block_11/batch_normalization_11/ReadVariableOp_1?
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpLcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
4cnn_block_11/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3'cnn_block_11/conv2d_12/BiasAdd:output:0:cnn_block_11/batch_normalization_11/ReadVariableOp:value:0<cnn_block_11/batch_normalization_11/ReadVariableOp_1:value:0Kcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Mcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<26
4cnn_block_11/batch_normalization_11/FusedBatchNormV3?
2cnn_block_11/batch_normalization_11/AssignNewValueAssignVariableOpLcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resourceAcnn_block_11/batch_normalization_11/FusedBatchNormV3:batch_mean:0D^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2cnn_block_11/batch_normalization_11/AssignNewValue?
4cnn_block_11/batch_normalization_11/AssignNewValue_1AssignVariableOpNcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resourceEcnn_block_11/batch_normalization_11/FusedBatchNormV3:batch_variance:0F^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4cnn_block_11/batch_normalization_11/AssignNewValue_1?
cnn_block_11/ReluRelu8cnn_block_11/batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_11/Relu?
max_pooling2d_1/MaxPoolMaxPoolcnn_block_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
IdentityIdentity max_pooling2d_1/MaxPool:output:03^cnn_block_10/batch_normalization_10/AssignNewValue5^cnn_block_10/batch_normalization_10/AssignNewValue_1D^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpF^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_13^cnn_block_10/batch_normalization_10/ReadVariableOp5^cnn_block_10/batch_normalization_10/ReadVariableOp_1.^cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp-^cnn_block_10/conv2d_11/Conv2D/ReadVariableOp3^cnn_block_11/batch_normalization_11/AssignNewValue5^cnn_block_11/batch_normalization_11/AssignNewValue_1D^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpF^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_13^cnn_block_11/batch_normalization_11/ReadVariableOp5^cnn_block_11/batch_normalization_11/ReadVariableOp_1.^cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp-^cnn_block_11/conv2d_12/Conv2D/ReadVariableOp1^cnn_block_9/batch_normalization_9/AssignNewValue3^cnn_block_9/batch_normalization_9/AssignNewValue_1B^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpD^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_11^cnn_block_9/batch_normalization_9/ReadVariableOp3^cnn_block_9/batch_normalization_9/ReadVariableOp_1-^cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp,^cnn_block_9/conv2d_10/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????@::::::::::::::::::::2h
2cnn_block_10/batch_normalization_10/AssignNewValue2cnn_block_10/batch_normalization_10/AssignNewValue2l
4cnn_block_10/batch_normalization_10/AssignNewValue_14cnn_block_10/batch_normalization_10/AssignNewValue_12?
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpCcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12h
2cnn_block_10/batch_normalization_10/ReadVariableOp2cnn_block_10/batch_normalization_10/ReadVariableOp2l
4cnn_block_10/batch_normalization_10/ReadVariableOp_14cnn_block_10/batch_normalization_10/ReadVariableOp_12^
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp2\
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp2h
2cnn_block_11/batch_normalization_11/AssignNewValue2cnn_block_11/batch_normalization_11/AssignNewValue2l
4cnn_block_11/batch_normalization_11/AssignNewValue_14cnn_block_11/batch_normalization_11/AssignNewValue_12?
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpCcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12h
2cnn_block_11/batch_normalization_11/ReadVariableOp2cnn_block_11/batch_normalization_11/ReadVariableOp2l
4cnn_block_11/batch_normalization_11/ReadVariableOp_14cnn_block_11/batch_normalization_11/ReadVariableOp_12^
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp2\
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp2d
0cnn_block_9/batch_normalization_9/AssignNewValue0cnn_block_9/batch_normalization_9/AssignNewValue2h
2cnn_block_9/batch_normalization_9/AssignNewValue_12cnn_block_9/batch_normalization_9/AssignNewValue_12?
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpAcnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_9/batch_normalization_9/ReadVariableOp0cnn_block_9/batch_normalization_9/ReadVariableOp2h
2cnn_block_9/batch_normalization_9/ReadVariableOp_12cnn_block_9/batch_normalization_9/ReadVariableOp_12\
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp2Z
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15069

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_11_layer_call_fn_15146

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_125362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_14813

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_8_layer_call_fn_14967

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_122432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?O
!__inference__traced_restore_15858
file_prefix#
assignvariableop_dense_3_kernel#
assignvariableop_1_dense_3_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate<
8assignvariableop_7_res_block_cnn_block_6_conv2d_6_kernel:
6assignvariableop_8_res_block_cnn_block_6_conv2d_6_biasH
Dassignvariableop_9_res_block_cnn_block_6_batch_normalization_6_gammaH
Dassignvariableop_10_res_block_cnn_block_6_batch_normalization_6_beta=
9assignvariableop_11_res_block_cnn_block_7_conv2d_7_kernel;
7assignvariableop_12_res_block_cnn_block_7_conv2d_7_biasI
Eassignvariableop_13_res_block_cnn_block_7_batch_normalization_7_gammaH
Dassignvariableop_14_res_block_cnn_block_7_batch_normalization_7_beta=
9assignvariableop_15_res_block_cnn_block_8_conv2d_8_kernel;
7assignvariableop_16_res_block_cnn_block_8_conv2d_8_biasI
Eassignvariableop_17_res_block_cnn_block_8_batch_normalization_8_gammaH
Dassignvariableop_18_res_block_cnn_block_8_batch_normalization_8_beta1
-assignvariableop_19_res_block_conv2d_9_kernel/
+assignvariableop_20_res_block_conv2d_9_biasO
Kassignvariableop_21_res_block_cnn_block_6_batch_normalization_6_moving_meanS
Oassignvariableop_22_res_block_cnn_block_6_batch_normalization_6_moving_varianceO
Kassignvariableop_23_res_block_cnn_block_7_batch_normalization_7_moving_meanS
Oassignvariableop_24_res_block_cnn_block_7_batch_normalization_7_moving_varianceO
Kassignvariableop_25_res_block_cnn_block_8_batch_normalization_8_moving_meanS
Oassignvariableop_26_res_block_cnn_block_8_batch_normalization_8_moving_variance@
<assignvariableop_27_res_block_1_cnn_block_9_conv2d_10_kernel>
:assignvariableop_28_res_block_1_cnn_block_9_conv2d_10_biasK
Gassignvariableop_29_res_block_1_cnn_block_9_batch_normalization_9_gammaJ
Fassignvariableop_30_res_block_1_cnn_block_9_batch_normalization_9_betaA
=assignvariableop_31_res_block_1_cnn_block_10_conv2d_11_kernel?
;assignvariableop_32_res_block_1_cnn_block_10_conv2d_11_biasM
Iassignvariableop_33_res_block_1_cnn_block_10_batch_normalization_10_gammaL
Hassignvariableop_34_res_block_1_cnn_block_10_batch_normalization_10_betaA
=assignvariableop_35_res_block_1_cnn_block_11_conv2d_12_kernel?
;assignvariableop_36_res_block_1_cnn_block_11_conv2d_12_biasM
Iassignvariableop_37_res_block_1_cnn_block_11_batch_normalization_11_gammaL
Hassignvariableop_38_res_block_1_cnn_block_11_batch_normalization_11_beta4
0assignvariableop_39_res_block_1_conv2d_13_kernel2
.assignvariableop_40_res_block_1_conv2d_13_biasQ
Massignvariableop_41_res_block_1_cnn_block_9_batch_normalization_9_moving_meanU
Qassignvariableop_42_res_block_1_cnn_block_9_batch_normalization_9_moving_varianceS
Oassignvariableop_43_res_block_1_cnn_block_10_batch_normalization_10_moving_meanW
Sassignvariableop_44_res_block_1_cnn_block_10_batch_normalization_10_moving_varianceS
Oassignvariableop_45_res_block_1_cnn_block_11_batch_normalization_11_moving_meanW
Sassignvariableop_46_res_block_1_cnn_block_11_batch_normalization_11_moving_variance
assignvariableop_47_total
assignvariableop_48_count
assignvariableop_49_total_1
assignvariableop_50_count_1-
)assignvariableop_51_adam_dense_3_kernel_m+
'assignvariableop_52_adam_dense_3_bias_mD
@assignvariableop_53_adam_res_block_cnn_block_6_conv2d_6_kernel_mB
>assignvariableop_54_adam_res_block_cnn_block_6_conv2d_6_bias_mP
Lassignvariableop_55_adam_res_block_cnn_block_6_batch_normalization_6_gamma_mO
Kassignvariableop_56_adam_res_block_cnn_block_6_batch_normalization_6_beta_mD
@assignvariableop_57_adam_res_block_cnn_block_7_conv2d_7_kernel_mB
>assignvariableop_58_adam_res_block_cnn_block_7_conv2d_7_bias_mP
Lassignvariableop_59_adam_res_block_cnn_block_7_batch_normalization_7_gamma_mO
Kassignvariableop_60_adam_res_block_cnn_block_7_batch_normalization_7_beta_mD
@assignvariableop_61_adam_res_block_cnn_block_8_conv2d_8_kernel_mB
>assignvariableop_62_adam_res_block_cnn_block_8_conv2d_8_bias_mP
Lassignvariableop_63_adam_res_block_cnn_block_8_batch_normalization_8_gamma_mO
Kassignvariableop_64_adam_res_block_cnn_block_8_batch_normalization_8_beta_m8
4assignvariableop_65_adam_res_block_conv2d_9_kernel_m6
2assignvariableop_66_adam_res_block_conv2d_9_bias_mG
Cassignvariableop_67_adam_res_block_1_cnn_block_9_conv2d_10_kernel_mE
Aassignvariableop_68_adam_res_block_1_cnn_block_9_conv2d_10_bias_mR
Nassignvariableop_69_adam_res_block_1_cnn_block_9_batch_normalization_9_gamma_mQ
Massignvariableop_70_adam_res_block_1_cnn_block_9_batch_normalization_9_beta_mH
Dassignvariableop_71_adam_res_block_1_cnn_block_10_conv2d_11_kernel_mF
Bassignvariableop_72_adam_res_block_1_cnn_block_10_conv2d_11_bias_mT
Passignvariableop_73_adam_res_block_1_cnn_block_10_batch_normalization_10_gamma_mS
Oassignvariableop_74_adam_res_block_1_cnn_block_10_batch_normalization_10_beta_mH
Dassignvariableop_75_adam_res_block_1_cnn_block_11_conv2d_12_kernel_mF
Bassignvariableop_76_adam_res_block_1_cnn_block_11_conv2d_12_bias_mT
Passignvariableop_77_adam_res_block_1_cnn_block_11_batch_normalization_11_gamma_mS
Oassignvariableop_78_adam_res_block_1_cnn_block_11_batch_normalization_11_beta_m;
7assignvariableop_79_adam_res_block_1_conv2d_13_kernel_m9
5assignvariableop_80_adam_res_block_1_conv2d_13_bias_m-
)assignvariableop_81_adam_dense_3_kernel_v+
'assignvariableop_82_adam_dense_3_bias_vD
@assignvariableop_83_adam_res_block_cnn_block_6_conv2d_6_kernel_vB
>assignvariableop_84_adam_res_block_cnn_block_6_conv2d_6_bias_vP
Lassignvariableop_85_adam_res_block_cnn_block_6_batch_normalization_6_gamma_vO
Kassignvariableop_86_adam_res_block_cnn_block_6_batch_normalization_6_beta_vD
@assignvariableop_87_adam_res_block_cnn_block_7_conv2d_7_kernel_vB
>assignvariableop_88_adam_res_block_cnn_block_7_conv2d_7_bias_vP
Lassignvariableop_89_adam_res_block_cnn_block_7_batch_normalization_7_gamma_vO
Kassignvariableop_90_adam_res_block_cnn_block_7_batch_normalization_7_beta_vD
@assignvariableop_91_adam_res_block_cnn_block_8_conv2d_8_kernel_vB
>assignvariableop_92_adam_res_block_cnn_block_8_conv2d_8_bias_vP
Lassignvariableop_93_adam_res_block_cnn_block_8_batch_normalization_8_gamma_vO
Kassignvariableop_94_adam_res_block_cnn_block_8_batch_normalization_8_beta_v8
4assignvariableop_95_adam_res_block_conv2d_9_kernel_v6
2assignvariableop_96_adam_res_block_conv2d_9_bias_vG
Cassignvariableop_97_adam_res_block_1_cnn_block_9_conv2d_10_kernel_vE
Aassignvariableop_98_adam_res_block_1_cnn_block_9_conv2d_10_bias_vR
Nassignvariableop_99_adam_res_block_1_cnn_block_9_batch_normalization_9_gamma_vR
Nassignvariableop_100_adam_res_block_1_cnn_block_9_batch_normalization_9_beta_vI
Eassignvariableop_101_adam_res_block_1_cnn_block_10_conv2d_11_kernel_vG
Cassignvariableop_102_adam_res_block_1_cnn_block_10_conv2d_11_bias_vU
Qassignvariableop_103_adam_res_block_1_cnn_block_10_batch_normalization_10_gamma_vT
Passignvariableop_104_adam_res_block_1_cnn_block_10_batch_normalization_10_beta_vI
Eassignvariableop_105_adam_res_block_1_cnn_block_11_conv2d_12_kernel_vG
Cassignvariableop_106_adam_res_block_1_cnn_block_11_conv2d_12_bias_vU
Qassignvariableop_107_adam_res_block_1_cnn_block_11_batch_normalization_11_gamma_vT
Passignvariableop_108_adam_res_block_1_cnn_block_11_batch_normalization_11_beta_v<
8assignvariableop_109_adam_res_block_1_conv2d_13_kernel_v:
6assignvariableop_110_adam_res_block_1_conv2d_13_bias_v
identity_112??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?3
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:p*
dtype0*?2
value?2B?1pB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/28/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/29/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:p*
dtype0*?
value?B?pB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*~
dtypest
r2p	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp8assignvariableop_7_res_block_cnn_block_6_conv2d_6_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp6assignvariableop_8_res_block_cnn_block_6_conv2d_6_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpDassignvariableop_9_res_block_cnn_block_6_batch_normalization_6_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpDassignvariableop_10_res_block_cnn_block_6_batch_normalization_6_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp9assignvariableop_11_res_block_cnn_block_7_conv2d_7_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp7assignvariableop_12_res_block_cnn_block_7_conv2d_7_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpEassignvariableop_13_res_block_cnn_block_7_batch_normalization_7_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpDassignvariableop_14_res_block_cnn_block_7_batch_normalization_7_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp9assignvariableop_15_res_block_cnn_block_8_conv2d_8_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_res_block_cnn_block_8_conv2d_8_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpEassignvariableop_17_res_block_cnn_block_8_batch_normalization_8_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpDassignvariableop_18_res_block_cnn_block_8_batch_normalization_8_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp-assignvariableop_19_res_block_conv2d_9_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_res_block_conv2d_9_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpKassignvariableop_21_res_block_cnn_block_6_batch_normalization_6_moving_meanIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpOassignvariableop_22_res_block_cnn_block_6_batch_normalization_6_moving_varianceIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpKassignvariableop_23_res_block_cnn_block_7_batch_normalization_7_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpOassignvariableop_24_res_block_cnn_block_7_batch_normalization_7_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpKassignvariableop_25_res_block_cnn_block_8_batch_normalization_8_moving_meanIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpOassignvariableop_26_res_block_cnn_block_8_batch_normalization_8_moving_varianceIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp<assignvariableop_27_res_block_1_cnn_block_9_conv2d_10_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp:assignvariableop_28_res_block_1_cnn_block_9_conv2d_10_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpGassignvariableop_29_res_block_1_cnn_block_9_batch_normalization_9_gammaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpFassignvariableop_30_res_block_1_cnn_block_9_batch_normalization_9_betaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp=assignvariableop_31_res_block_1_cnn_block_10_conv2d_11_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp;assignvariableop_32_res_block_1_cnn_block_10_conv2d_11_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpIassignvariableop_33_res_block_1_cnn_block_10_batch_normalization_10_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpHassignvariableop_34_res_block_1_cnn_block_10_batch_normalization_10_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp=assignvariableop_35_res_block_1_cnn_block_11_conv2d_12_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp;assignvariableop_36_res_block_1_cnn_block_11_conv2d_12_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpIassignvariableop_37_res_block_1_cnn_block_11_batch_normalization_11_gammaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpHassignvariableop_38_res_block_1_cnn_block_11_batch_normalization_11_betaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp0assignvariableop_39_res_block_1_conv2d_13_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp.assignvariableop_40_res_block_1_conv2d_13_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpMassignvariableop_41_res_block_1_cnn_block_9_batch_normalization_9_moving_meanIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpQassignvariableop_42_res_block_1_cnn_block_9_batch_normalization_9_moving_varianceIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpOassignvariableop_43_res_block_1_cnn_block_10_batch_normalization_10_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpSassignvariableop_44_res_block_1_cnn_block_10_batch_normalization_10_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpOassignvariableop_45_res_block_1_cnn_block_11_batch_normalization_11_moving_meanIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpSassignvariableop_46_res_block_1_cnn_block_11_batch_normalization_11_moving_varianceIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpassignvariableop_47_totalIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpassignvariableop_48_countIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpassignvariableop_49_total_1Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpassignvariableop_50_count_1Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_3_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_3_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp@assignvariableop_53_adam_res_block_cnn_block_6_conv2d_6_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp>assignvariableop_54_adam_res_block_cnn_block_6_conv2d_6_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOpLassignvariableop_55_adam_res_block_cnn_block_6_batch_normalization_6_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOpKassignvariableop_56_adam_res_block_cnn_block_6_batch_normalization_6_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp@assignvariableop_57_adam_res_block_cnn_block_7_conv2d_7_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp>assignvariableop_58_adam_res_block_cnn_block_7_conv2d_7_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOpLassignvariableop_59_adam_res_block_cnn_block_7_batch_normalization_7_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOpKassignvariableop_60_adam_res_block_cnn_block_7_batch_normalization_7_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp@assignvariableop_61_adam_res_block_cnn_block_8_conv2d_8_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp>assignvariableop_62_adam_res_block_cnn_block_8_conv2d_8_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOpLassignvariableop_63_adam_res_block_cnn_block_8_batch_normalization_8_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOpKassignvariableop_64_adam_res_block_cnn_block_8_batch_normalization_8_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp4assignvariableop_65_adam_res_block_conv2d_9_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp2assignvariableop_66_adam_res_block_conv2d_9_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOpCassignvariableop_67_adam_res_block_1_cnn_block_9_conv2d_10_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOpAassignvariableop_68_adam_res_block_1_cnn_block_9_conv2d_10_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOpNassignvariableop_69_adam_res_block_1_cnn_block_9_batch_normalization_9_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOpMassignvariableop_70_adam_res_block_1_cnn_block_9_batch_normalization_9_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOpDassignvariableop_71_adam_res_block_1_cnn_block_10_conv2d_11_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOpBassignvariableop_72_adam_res_block_1_cnn_block_10_conv2d_11_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOpPassignvariableop_73_adam_res_block_1_cnn_block_10_batch_normalization_10_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOpOassignvariableop_74_adam_res_block_1_cnn_block_10_batch_normalization_10_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOpDassignvariableop_75_adam_res_block_1_cnn_block_11_conv2d_12_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOpBassignvariableop_76_adam_res_block_1_cnn_block_11_conv2d_12_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOpPassignvariableop_77_adam_res_block_1_cnn_block_11_batch_normalization_11_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOpOassignvariableop_78_adam_res_block_1_cnn_block_11_batch_normalization_11_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp7assignvariableop_79_adam_res_block_1_conv2d_13_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp5assignvariableop_80_adam_res_block_1_conv2d_13_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp)assignvariableop_81_adam_dense_3_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp'assignvariableop_82_adam_dense_3_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp@assignvariableop_83_adam_res_block_cnn_block_6_conv2d_6_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp>assignvariableop_84_adam_res_block_cnn_block_6_conv2d_6_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOpLassignvariableop_85_adam_res_block_cnn_block_6_batch_normalization_6_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOpKassignvariableop_86_adam_res_block_cnn_block_6_batch_normalization_6_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp@assignvariableop_87_adam_res_block_cnn_block_7_conv2d_7_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp>assignvariableop_88_adam_res_block_cnn_block_7_conv2d_7_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOpLassignvariableop_89_adam_res_block_cnn_block_7_batch_normalization_7_gamma_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOpKassignvariableop_90_adam_res_block_cnn_block_7_batch_normalization_7_beta_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp@assignvariableop_91_adam_res_block_cnn_block_8_conv2d_8_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp>assignvariableop_92_adam_res_block_cnn_block_8_conv2d_8_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOpLassignvariableop_93_adam_res_block_cnn_block_8_batch_normalization_8_gamma_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOpKassignvariableop_94_adam_res_block_cnn_block_8_batch_normalization_8_beta_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp4assignvariableop_95_adam_res_block_conv2d_9_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp2assignvariableop_96_adam_res_block_conv2d_9_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOpCassignvariableop_97_adam_res_block_1_cnn_block_9_conv2d_10_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOpAassignvariableop_98_adam_res_block_1_cnn_block_9_conv2d_10_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOpNassignvariableop_99_adam_res_block_1_cnn_block_9_batch_normalization_9_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOpNassignvariableop_100_adam_res_block_1_cnn_block_9_batch_normalization_9_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOpEassignvariableop_101_adam_res_block_1_cnn_block_10_conv2d_11_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOpCassignvariableop_102_adam_res_block_1_cnn_block_10_conv2d_11_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOpQassignvariableop_103_adam_res_block_1_cnn_block_10_batch_normalization_10_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOpPassignvariableop_104_adam_res_block_1_cnn_block_10_batch_normalization_10_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOpEassignvariableop_105_adam_res_block_1_cnn_block_11_conv2d_12_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOpCassignvariableop_106_adam_res_block_1_cnn_block_11_conv2d_12_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOpQassignvariableop_107_adam_res_block_1_cnn_block_11_batch_normalization_11_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOpPassignvariableop_108_adam_res_block_1_cnn_block_11_batch_normalization_11_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp8assignvariableop_109_adam_res_block_1_conv2d_13_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp6assignvariableop_110_adam_res_block_1_conv2d_13_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1109
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_111Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_111?
Identity_112IdentityIdentity_111:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_112"%
identity_112Identity_112:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_12260

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2d_layer_call_fn_12266

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_122602
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_10_layer_call_fn_15082

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_124322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_12359

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_12463

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_res_block_layer_call_fn_14499
input_tensor
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_res_block_layer_call_and_return_conditional_losses_127502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?!
?
B__inference_model_1_layer_call_and_return_conditional_losses_13400

inputs
res_block_13311
res_block_13313
res_block_13315
res_block_13317
res_block_13319
res_block_13321
res_block_13323
res_block_13325
res_block_13327
res_block_13329
res_block_13331
res_block_13333
res_block_13335
res_block_13337
res_block_13339
res_block_13341
res_block_13343
res_block_13345
res_block_13347
res_block_13349
res_block_1_13352
res_block_1_13354
res_block_1_13356
res_block_1_13358
res_block_1_13360
res_block_1_13362
res_block_1_13364
res_block_1_13366
res_block_1_13368
res_block_1_13370
res_block_1_13372
res_block_1_13374
res_block_1_13376
res_block_1_13378
res_block_1_13380
res_block_1_13382
res_block_1_13384
res_block_1_13386
res_block_1_13388
res_block_1_13390
dense_3_13394
dense_3_13396
identity??dense_3/StatefulPartitionedCall?!res_block/StatefulPartitionedCall?#res_block_1/StatefulPartitionedCall?
!res_block/StatefulPartitionedCallStatefulPartitionedCallinputsres_block_13311res_block_13313res_block_13315res_block_13317res_block_13319res_block_13321res_block_13323res_block_13325res_block_13327res_block_13329res_block_13331res_block_13333res_block_13335res_block_13337res_block_13339res_block_13341res_block_13343res_block_13345res_block_13347res_block_13349* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_res_block_layer_call_and_return_conditional_losses_127502#
!res_block/StatefulPartitionedCall?
#res_block_1/StatefulPartitionedCallStatefulPartitionedCall*res_block/StatefulPartitionedCall:output:0res_block_1_13352res_block_1_13354res_block_1_13356res_block_1_13358res_block_1_13360res_block_1_13362res_block_1_13364res_block_1_13366res_block_1_13368res_block_1_13370res_block_1_13372res_block_1_13374res_block_1_13376res_block_1_13378res_block_1_13380res_block_1_13382res_block_1_13384res_block_1_13386res_block_1_13388res_block_1_13390* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_res_block_1_layer_call_and_return_conditional_losses_130392%
#res_block_1/StatefulPartitionedCall?
flatten_2/PartitionedCallPartitionedCall,res_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_131782
flatten_2/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_3_13394dense_3_13396*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_131962!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall"^res_block/StatefulPartitionedCall$^res_block_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!res_block/StatefulPartitionedCall!res_block/StatefulPartitionedCall2J
#res_block_1/StatefulPartitionedCall#res_block_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?t
?
D__inference_res_block_layer_call_and_return_conditional_losses_14409
input_tensor7
3cnn_block_6_conv2d_6_conv2d_readvariableop_resource8
4cnn_block_6_conv2d_6_biasadd_readvariableop_resource=
9cnn_block_6_batch_normalization_6_readvariableop_resource?
;cnn_block_6_batch_normalization_6_readvariableop_1_resourceN
Jcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7
3cnn_block_7_conv2d_7_conv2d_readvariableop_resource8
4cnn_block_7_conv2d_7_biasadd_readvariableop_resource=
9cnn_block_7_batch_normalization_7_readvariableop_resource?
;cnn_block_7_batch_normalization_7_readvariableop_1_resourceN
Jcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_9_conv2d_readvariableop_resource,
(conv2d_9_biasadd_readvariableop_resource7
3cnn_block_8_conv2d_8_conv2d_readvariableop_resource8
4cnn_block_8_conv2d_8_biasadd_readvariableop_resource=
9cnn_block_8_batch_normalization_8_readvariableop_resource?
;cnn_block_8_batch_normalization_8_readvariableop_1_resourceN
Jcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource
identity??Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_6/batch_normalization_6/ReadVariableOp?2cnn_block_6/batch_normalization_6/ReadVariableOp_1?+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_7/batch_normalization_7/ReadVariableOp?2cnn_block_7/batch_normalization_7/ReadVariableOp_1?+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_8/batch_normalization_8/ReadVariableOp?2cnn_block_8/batch_normalization_8/ReadVariableOp_1?+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?conv2d_9/BiasAdd/ReadVariableOp?conv2d_9/Conv2D/ReadVariableOp?
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp3cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02,
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?
cnn_block_6/conv2d_6/Conv2DConv2Dinput_tensor2cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
cnn_block_6/conv2d_6/Conv2D?
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?
cnn_block_6/conv2d_6/BiasAddBiasAdd$cnn_block_6/conv2d_6/Conv2D:output:03cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
cnn_block_6/conv2d_6/BiasAdd?
0cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOp9cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype022
0cnn_block_6/batch_normalization_6/ReadVariableOp?
2cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp;cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype024
2cnn_block_6/batch_normalization_6/ReadVariableOp_1?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3%cnn_block_6/conv2d_6/BiasAdd:output:08cnn_block_6/batch_normalization_6/ReadVariableOp:value:0:cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Icnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 24
2cnn_block_6/batch_normalization_6/FusedBatchNormV3?
cnn_block_6/ReluRelu6cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
cnn_block_6/Relu?
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp3cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02,
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?
cnn_block_7/conv2d_7/Conv2DConv2Dcnn_block_6/Relu:activations:02cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
cnn_block_7/conv2d_7/Conv2D?
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?
cnn_block_7/conv2d_7/BiasAddBiasAdd$cnn_block_7/conv2d_7/Conv2D:output:03cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
cnn_block_7/conv2d_7/BiasAdd?
0cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOp9cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype022
0cnn_block_7/batch_normalization_7/ReadVariableOp?
2cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp;cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype024
2cnn_block_7/batch_normalization_7/ReadVariableOp_1?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3%cnn_block_7/conv2d_7/BiasAdd:output:08cnn_block_7/batch_normalization_7/ReadVariableOp:value:0:cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Icnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 24
2cnn_block_7/batch_normalization_7/FusedBatchNormV3?
cnn_block_7/ReluRelu6cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
cnn_block_7/Relu?
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_9/Conv2D/ReadVariableOp?
conv2d_9/Conv2DConv2Dinput_tensor&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_9/Conv2D?
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOp?
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_9/BiasAdd?
addAddV2cnn_block_7/Relu:activations:0conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
add?
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp3cnn_block_8_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02,
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?
cnn_block_8/conv2d_8/Conv2DConv2Dadd:z:02cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
cnn_block_8/conv2d_8/Conv2D?
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp4cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?
cnn_block_8/conv2d_8/BiasAddBiasAdd$cnn_block_8/conv2d_8/Conv2D:output:03cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
cnn_block_8/conv2d_8/BiasAdd?
0cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOp9cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype022
0cnn_block_8/batch_normalization_8/ReadVariableOp?
2cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp;cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype024
2cnn_block_8/batch_normalization_8/ReadVariableOp_1?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02C
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02E
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3%cnn_block_8/conv2d_8/BiasAdd:output:08cnn_block_8/batch_normalization_8/ReadVariableOp:value:0:cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Icnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 24
2cnn_block_8/batch_normalization_8/FusedBatchNormV3?
cnn_block_8/ReluRelu6cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
cnn_block_8/Relu?
max_pooling2d/MaxPoolMaxPoolcnn_block_8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?	
IdentityIdentitymax_pooling2d/MaxPool:output:0B^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpD^cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_11^cnn_block_6/batch_normalization_6/ReadVariableOp3^cnn_block_6/batch_normalization_6/ReadVariableOp_1,^cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+^cnn_block_6/conv2d_6/Conv2D/ReadVariableOpB^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpD^cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_11^cnn_block_7/batch_normalization_7/ReadVariableOp3^cnn_block_7/batch_normalization_7/ReadVariableOp_1,^cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+^cnn_block_7/conv2d_7/Conv2D/ReadVariableOpB^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpD^cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_11^cnn_block_8/batch_normalization_8/ReadVariableOp3^cnn_block_8/batch_normalization_8/ReadVariableOp_1,^cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+^cnn_block_8/conv2d_8/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????::::::::::::::::::::2?
Acnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpAcnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_6/batch_normalization_6/ReadVariableOp0cnn_block_6/batch_normalization_6/ReadVariableOp2h
2cnn_block_6/batch_normalization_6/ReadVariableOp_12cnn_block_6/batch_normalization_6/ReadVariableOp_12Z
+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp+cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2X
*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp*cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2?
Acnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpAcnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_7/batch_normalization_7/ReadVariableOp0cnn_block_7/batch_normalization_7/ReadVariableOp2h
2cnn_block_7/batch_normalization_7/ReadVariableOp_12cnn_block_7/batch_normalization_7/ReadVariableOp_12Z
+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp+cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2X
*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp*cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2?
Acnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpAcnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_8/batch_normalization_8/ReadVariableOp0cnn_block_8/batch_normalization_8/ReadVariableOp2h
2cnn_block_8/batch_normalization_8/ReadVariableOp_12cnn_block_8/batch_normalization_8/ReadVariableOp_12Z
+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp+cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2X
*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp*cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?	
?
B__inference_dense_3_layer_call_and_return_conditional_losses_14766

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?b
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????b::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_12004

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_13767
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_119422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_12139

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_14795

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_res_block_1_layer_call_fn_14700
input_tensor
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_res_block_1_layer_call_and_return_conditional_losses_129642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????@::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?
?
5__inference_batch_normalization_6_layer_call_fn_14839

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_120352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_12328

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
ƚ
?
F__inference_res_block_1_layer_call_and_return_conditional_losses_12964
input_tensor8
4cnn_block_9_conv2d_10_conv2d_readvariableop_resource9
5cnn_block_9_conv2d_10_biasadd_readvariableop_resource=
9cnn_block_9_batch_normalization_9_readvariableop_resource?
;cnn_block_9_batch_normalization_9_readvariableop_1_resourceN
Jcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resourceP
Lcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource9
5cnn_block_10_conv2d_11_conv2d_readvariableop_resource:
6cnn_block_10_conv2d_11_biasadd_readvariableop_resource?
;cnn_block_10_batch_normalization_10_readvariableop_resourceA
=cnn_block_10_batch_normalization_10_readvariableop_1_resourceP
Lcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resourceR
Ncnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource9
5cnn_block_11_conv2d_12_conv2d_readvariableop_resource:
6cnn_block_11_conv2d_12_biasadd_readvariableop_resource?
;cnn_block_11_batch_normalization_11_readvariableop_resourceA
=cnn_block_11_batch_normalization_11_readvariableop_1_resourceP
Lcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resourceR
Ncnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource
identity??2cnn_block_10/batch_normalization_10/AssignNewValue?4cnn_block_10/batch_normalization_10/AssignNewValue_1?Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?2cnn_block_10/batch_normalization_10/ReadVariableOp?4cnn_block_10/batch_normalization_10/ReadVariableOp_1?-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?2cnn_block_11/batch_normalization_11/AssignNewValue?4cnn_block_11/batch_normalization_11/AssignNewValue_1?Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?2cnn_block_11/batch_normalization_11/ReadVariableOp?4cnn_block_11/batch_normalization_11/ReadVariableOp_1?-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?0cnn_block_9/batch_normalization_9/AssignNewValue?2cnn_block_9/batch_normalization_9/AssignNewValue_1?Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?0cnn_block_9/batch_normalization_9/ReadVariableOp?2cnn_block_9/batch_normalization_9/ReadVariableOp_1?,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp?
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOpReadVariableOp4cnn_block_9_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?
cnn_block_9/conv2d_10/Conv2DConv2Dinput_tensor3cnn_block_9/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_9/conv2d_10/Conv2D?
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp5cnn_block_9_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?
cnn_block_9/conv2d_10/BiasAddBiasAdd%cnn_block_9/conv2d_10/Conv2D:output:04cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
cnn_block_9/conv2d_10/BiasAdd?
0cnn_block_9/batch_normalization_9/ReadVariableOpReadVariableOp9cnn_block_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype022
0cnn_block_9/batch_normalization_9/ReadVariableOp?
2cnn_block_9/batch_normalization_9/ReadVariableOp_1ReadVariableOp;cnn_block_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2cnn_block_9/batch_normalization_9/ReadVariableOp_1?
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpJcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
2cnn_block_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3&cnn_block_9/conv2d_10/BiasAdd:output:08cnn_block_9/batch_normalization_9/ReadVariableOp:value:0:cnn_block_9/batch_normalization_9/ReadVariableOp_1:value:0Icnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Kcnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<24
2cnn_block_9/batch_normalization_9/FusedBatchNormV3?
0cnn_block_9/batch_normalization_9/AssignNewValueAssignVariableOpJcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource?cnn_block_9/batch_normalization_9/FusedBatchNormV3:batch_mean:0B^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*]
_classS
QOloc:@cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype022
0cnn_block_9/batch_normalization_9/AssignNewValue?
2cnn_block_9/batch_normalization_9/AssignNewValue_1AssignVariableOpLcnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resourceCcnn_block_9/batch_normalization_9/FusedBatchNormV3:batch_variance:0D^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype024
2cnn_block_9/batch_normalization_9/AssignNewValue_1?
cnn_block_9/ReluRelu6cnn_block_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_9/Relu?
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5cnn_block_10_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?
cnn_block_10/conv2d_11/Conv2DConv2Dcnn_block_9/Relu:activations:04cnn_block_10/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_10/conv2d_11/Conv2D?
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6cnn_block_10_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?
cnn_block_10/conv2d_11/BiasAddBiasAdd&cnn_block_10/conv2d_11/Conv2D:output:05cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
cnn_block_10/conv2d_11/BiasAdd?
2cnn_block_10/batch_normalization_10/ReadVariableOpReadVariableOp;cnn_block_10_batch_normalization_10_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_block_10/batch_normalization_10/ReadVariableOp?
4cnn_block_10/batch_normalization_10/ReadVariableOp_1ReadVariableOp=cnn_block_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4cnn_block_10/batch_normalization_10/ReadVariableOp_1?
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpLcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
4cnn_block_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3'cnn_block_10/conv2d_11/BiasAdd:output:0:cnn_block_10/batch_normalization_10/ReadVariableOp:value:0<cnn_block_10/batch_normalization_10/ReadVariableOp_1:value:0Kcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Mcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<26
4cnn_block_10/batch_normalization_10/FusedBatchNormV3?
2cnn_block_10/batch_normalization_10/AssignNewValueAssignVariableOpLcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resourceAcnn_block_10/batch_normalization_10/FusedBatchNormV3:batch_mean:0D^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2cnn_block_10/batch_normalization_10/AssignNewValue?
4cnn_block_10/batch_normalization_10/AssignNewValue_1AssignVariableOpNcnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resourceEcnn_block_10/batch_normalization_10/FusedBatchNormV3:batch_variance:0F^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4cnn_block_10/batch_normalization_10/AssignNewValue_1?
cnn_block_10/ReluRelu8cnn_block_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_10/Relu?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Dinput_tensor'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_13/BiasAdd?
addAddV2cnn_block_10/Relu:activations:0conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
add?
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5cnn_block_11_conv2d_12_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?
cnn_block_11/conv2d_12/Conv2DConv2Dadd:z:04cnn_block_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
cnn_block_11/conv2d_12/Conv2D?
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6cnn_block_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?
cnn_block_11/conv2d_12/BiasAddBiasAdd&cnn_block_11/conv2d_12/Conv2D:output:05cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
cnn_block_11/conv2d_12/BiasAdd?
2cnn_block_11/batch_normalization_11/ReadVariableOpReadVariableOp;cnn_block_11_batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_block_11/batch_normalization_11/ReadVariableOp?
4cnn_block_11/batch_normalization_11/ReadVariableOp_1ReadVariableOp=cnn_block_11_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4cnn_block_11/batch_normalization_11/ReadVariableOp_1?
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpLcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
4cnn_block_11/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3'cnn_block_11/conv2d_12/BiasAdd:output:0:cnn_block_11/batch_normalization_11/ReadVariableOp:value:0<cnn_block_11/batch_normalization_11/ReadVariableOp_1:value:0Kcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Mcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<26
4cnn_block_11/batch_normalization_11/FusedBatchNormV3?
2cnn_block_11/batch_normalization_11/AssignNewValueAssignVariableOpLcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resourceAcnn_block_11/batch_normalization_11/FusedBatchNormV3:batch_mean:0D^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*_
_classU
SQloc:@cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype024
2cnn_block_11/batch_normalization_11/AssignNewValue?
4cnn_block_11/batch_normalization_11/AssignNewValue_1AssignVariableOpNcnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resourceEcnn_block_11/batch_normalization_11/FusedBatchNormV3:batch_variance:0F^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*a
_classW
USloc:@cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype026
4cnn_block_11/batch_normalization_11/AssignNewValue_1?
cnn_block_11/ReluRelu8cnn_block_11/batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
cnn_block_11/Relu?
max_pooling2d_1/MaxPoolMaxPoolcnn_block_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
IdentityIdentity max_pooling2d_1/MaxPool:output:03^cnn_block_10/batch_normalization_10/AssignNewValue5^cnn_block_10/batch_normalization_10/AssignNewValue_1D^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpF^cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_13^cnn_block_10/batch_normalization_10/ReadVariableOp5^cnn_block_10/batch_normalization_10/ReadVariableOp_1.^cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp-^cnn_block_10/conv2d_11/Conv2D/ReadVariableOp3^cnn_block_11/batch_normalization_11/AssignNewValue5^cnn_block_11/batch_normalization_11/AssignNewValue_1D^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpF^cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_13^cnn_block_11/batch_normalization_11/ReadVariableOp5^cnn_block_11/batch_normalization_11/ReadVariableOp_1.^cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp-^cnn_block_11/conv2d_12/Conv2D/ReadVariableOp1^cnn_block_9/batch_normalization_9/AssignNewValue3^cnn_block_9/batch_normalization_9/AssignNewValue_1B^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpD^cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_11^cnn_block_9/batch_normalization_9/ReadVariableOp3^cnn_block_9/batch_normalization_9/ReadVariableOp_1-^cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp,^cnn_block_9/conv2d_10/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????@::::::::::::::::::::2h
2cnn_block_10/batch_normalization_10/AssignNewValue2cnn_block_10/batch_normalization_10/AssignNewValue2l
4cnn_block_10/batch_normalization_10/AssignNewValue_14cnn_block_10/batch_normalization_10/AssignNewValue_12?
Ccnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpCcnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Ecnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12h
2cnn_block_10/batch_normalization_10/ReadVariableOp2cnn_block_10/batch_normalization_10/ReadVariableOp2l
4cnn_block_10/batch_normalization_10/ReadVariableOp_14cnn_block_10/batch_normalization_10/ReadVariableOp_12^
-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp-cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp2\
,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp,cnn_block_10/conv2d_11/Conv2D/ReadVariableOp2h
2cnn_block_11/batch_normalization_11/AssignNewValue2cnn_block_11/batch_normalization_11/AssignNewValue2l
4cnn_block_11/batch_normalization_11/AssignNewValue_14cnn_block_11/batch_normalization_11/AssignNewValue_12?
Ccnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpCcnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Ecnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12h
2cnn_block_11/batch_normalization_11/ReadVariableOp2cnn_block_11/batch_normalization_11/ReadVariableOp2l
4cnn_block_11/batch_normalization_11/ReadVariableOp_14cnn_block_11/batch_normalization_11/ReadVariableOp_12^
-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp-cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp2\
,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp,cnn_block_11/conv2d_12/Conv2D/ReadVariableOp2d
0cnn_block_9/batch_normalization_9/AssignNewValue0cnn_block_9/batch_normalization_9/AssignNewValue2h
2cnn_block_9/batch_normalization_9/AssignNewValue_12cnn_block_9/batch_normalization_9/AssignNewValue_12?
Acnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpAcnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ccnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12d
0cnn_block_9/batch_normalization_9/ReadVariableOp0cnn_block_9/batch_normalization_9/ReadVariableOp2h
2cnn_block_9/batch_normalization_9/ReadVariableOp_12cnn_block_9/batch_normalization_9/ReadVariableOp_12\
,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp,cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp2Z
+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp+cnn_block_9/conv2d_10/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????@
&
_user_specified_nameinput_tensor
?
?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_12108

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?!
?
B__inference_model_1_layer_call_and_return_conditional_losses_13213
input_1
res_block_12842
res_block_12844
res_block_12846
res_block_12848
res_block_12850
res_block_12852
res_block_12854
res_block_12856
res_block_12858
res_block_12860
res_block_12862
res_block_12864
res_block_12866
res_block_12868
res_block_12870
res_block_12872
res_block_12874
res_block_12876
res_block_12878
res_block_12880
res_block_1_13131
res_block_1_13133
res_block_1_13135
res_block_1_13137
res_block_1_13139
res_block_1_13141
res_block_1_13143
res_block_1_13145
res_block_1_13147
res_block_1_13149
res_block_1_13151
res_block_1_13153
res_block_1_13155
res_block_1_13157
res_block_1_13159
res_block_1_13161
res_block_1_13163
res_block_1_13165
res_block_1_13167
res_block_1_13169
dense_3_13207
dense_3_13209
identity??dense_3/StatefulPartitionedCall?!res_block/StatefulPartitionedCall?#res_block_1/StatefulPartitionedCall?
!res_block/StatefulPartitionedCallStatefulPartitionedCallinput_1res_block_12842res_block_12844res_block_12846res_block_12848res_block_12850res_block_12852res_block_12854res_block_12856res_block_12858res_block_12860res_block_12862res_block_12864res_block_12866res_block_12868res_block_12870res_block_12872res_block_12874res_block_12876res_block_12878res_block_12880* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_res_block_layer_call_and_return_conditional_losses_127502#
!res_block/StatefulPartitionedCall?
#res_block_1/StatefulPartitionedCallStatefulPartitionedCall*res_block/StatefulPartitionedCall:output:0res_block_1_13131res_block_1_13133res_block_1_13135res_block_1_13137res_block_1_13139res_block_1_13141res_block_1_13143res_block_1_13145res_block_1_13147res_block_1_13149res_block_1_13151res_block_1_13153res_block_1_13155res_block_1_13157res_block_1_13159res_block_1_13161res_block_1_13163res_block_1_13165res_block_1_13167res_block_1_13169* 
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_res_block_1_layer_call_and_return_conditional_losses_130392%
#res_block_1/StatefulPartitionedCall?
flatten_2/PartitionedCallPartitionedCall,res_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????b* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_131782
flatten_2/PartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_3_13207dense_3_13209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_131962!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_3/StatefulPartitionedCall"^res_block/StatefulPartitionedCall$^res_block_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!res_block/StatefulPartitionedCall!res_block/StatefulPartitionedCall2J
#res_block_1/StatefulPartitionedCall#res_block_1/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
5__inference_batch_normalization_7_layer_call_fn_14903

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_121392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_14941

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
)__inference_res_block_layer_call_fn_14454
input_tensor
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_tensorunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_res_block_layer_call_and_return_conditional_losses_126752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinput_tensor
?
?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_12243

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_12536

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
|
'__inference_dense_3_layer_call_fn_14775

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_131962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????b::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????b
 
_user_specified_nameinputs
??
?.
B__inference_model_1_layer_call_and_return_conditional_losses_13921

inputsA
=res_block_cnn_block_6_conv2d_6_conv2d_readvariableop_resourceB
>res_block_cnn_block_6_conv2d_6_biasadd_readvariableop_resourceG
Cres_block_cnn_block_6_batch_normalization_6_readvariableop_resourceI
Eres_block_cnn_block_6_batch_normalization_6_readvariableop_1_resourceX
Tres_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceZ
Vres_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceA
=res_block_cnn_block_7_conv2d_7_conv2d_readvariableop_resourceB
>res_block_cnn_block_7_conv2d_7_biasadd_readvariableop_resourceG
Cres_block_cnn_block_7_batch_normalization_7_readvariableop_resourceI
Eres_block_cnn_block_7_batch_normalization_7_readvariableop_1_resourceX
Tres_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceZ
Vres_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource5
1res_block_conv2d_9_conv2d_readvariableop_resource6
2res_block_conv2d_9_biasadd_readvariableop_resourceA
=res_block_cnn_block_8_conv2d_8_conv2d_readvariableop_resourceB
>res_block_cnn_block_8_conv2d_8_biasadd_readvariableop_resourceG
Cres_block_cnn_block_8_batch_normalization_8_readvariableop_resourceI
Eres_block_cnn_block_8_batch_normalization_8_readvariableop_1_resourceX
Tres_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceZ
Vres_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceD
@res_block_1_cnn_block_9_conv2d_10_conv2d_readvariableop_resourceE
Ares_block_1_cnn_block_9_conv2d_10_biasadd_readvariableop_resourceI
Eres_block_1_cnn_block_9_batch_normalization_9_readvariableop_resourceK
Gres_block_1_cnn_block_9_batch_normalization_9_readvariableop_1_resourceZ
Vres_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource\
Xres_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resourceE
Ares_block_1_cnn_block_10_conv2d_11_conv2d_readvariableop_resourceF
Bres_block_1_cnn_block_10_conv2d_11_biasadd_readvariableop_resourceK
Gres_block_1_cnn_block_10_batch_normalization_10_readvariableop_resourceM
Ires_block_1_cnn_block_10_batch_normalization_10_readvariableop_1_resource\
Xres_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource^
Zres_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource8
4res_block_1_conv2d_13_conv2d_readvariableop_resource9
5res_block_1_conv2d_13_biasadd_readvariableop_resourceE
Ares_block_1_cnn_block_11_conv2d_12_conv2d_readvariableop_resourceF
Bres_block_1_cnn_block_11_conv2d_12_biasadd_readvariableop_resourceK
Gres_block_1_cnn_block_11_batch_normalization_11_readvariableop_resourceM
Ires_block_1_cnn_block_11_batch_normalization_11_readvariableop_1_resource\
Xres_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource^
Zres_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?Kres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?:res_block/cnn_block_6/batch_normalization_6/ReadVariableOp?<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1?5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?Kres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?:res_block/cnn_block_7/batch_normalization_7/ReadVariableOp?<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1?5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?Kres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?:res_block/cnn_block_8/batch_normalization_8/ReadVariableOp?<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1?5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?)res_block/conv2d_9/BiasAdd/ReadVariableOp?(res_block/conv2d_9/Conv2D/ReadVariableOp?Ores_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp?@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1?9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?Ores_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp?@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1?9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?Mres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp?>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1?8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?,res_block_1/conv2d_13/BiasAdd/ReadVariableOp?+res_block_1/conv2d_13/Conv2D/ReadVariableOp?
4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp=res_block_cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype026
4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?
%res_block/cnn_block_6/conv2d_6/Conv2DConv2Dinputs<res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2'
%res_block/cnn_block_6/conv2d_6/Conv2D?
5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp>res_block_cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?
&res_block/cnn_block_6/conv2d_6/BiasAddBiasAdd.res_block/cnn_block_6/conv2d_6/Conv2D:output:0=res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2(
&res_block/cnn_block_6/conv2d_6/BiasAdd?
:res_block/cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOpCres_block_cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02<
:res_block/cnn_block_6/batch_normalization_6/ReadVariableOp?
<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOpEres_block_cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02>
<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1?
Kres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpTres_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02M
Kres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVres_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02O
Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
<res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3/res_block/cnn_block_6/conv2d_6/BiasAdd:output:0Bres_block/cnn_block_6/batch_normalization_6/ReadVariableOp:value:0Dres_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Sres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Ures_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2>
<res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3?
res_block/cnn_block_6/ReluRelu@res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
res_block/cnn_block_6/Relu?
4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp=res_block_cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype026
4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?
%res_block/cnn_block_7/conv2d_7/Conv2DConv2D(res_block/cnn_block_6/Relu:activations:0<res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2'
%res_block/cnn_block_7/conv2d_7/Conv2D?
5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp>res_block_cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?
&res_block/cnn_block_7/conv2d_7/BiasAddBiasAdd.res_block/cnn_block_7/conv2d_7/Conv2D:output:0=res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2(
&res_block/cnn_block_7/conv2d_7/BiasAdd?
:res_block/cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOpCres_block_cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype02<
:res_block/cnn_block_7/batch_normalization_7/ReadVariableOp?
<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOpEres_block_cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype02>
<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1?
Kres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpTres_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02M
Kres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVres_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02O
Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
<res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3/res_block/cnn_block_7/conv2d_7/BiasAdd:output:0Bres_block/cnn_block_7/batch_normalization_7/ReadVariableOp:value:0Dres_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Sres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Ures_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2>
<res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3?
res_block/cnn_block_7/ReluRelu@res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
res_block/cnn_block_7/Relu?
(res_block/conv2d_9/Conv2D/ReadVariableOpReadVariableOp1res_block_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02*
(res_block/conv2d_9/Conv2D/ReadVariableOp?
res_block/conv2d_9/Conv2DConv2Dinputs0res_block/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
res_block/conv2d_9/Conv2D?
)res_block/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp2res_block_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)res_block/conv2d_9/BiasAdd/ReadVariableOp?
res_block/conv2d_9/BiasAddBiasAdd"res_block/conv2d_9/Conv2D:output:01res_block/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
res_block/conv2d_9/BiasAdd?
res_block/addAddV2(res_block/cnn_block_7/Relu:activations:0#res_block/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
res_block/add?
4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp=res_block_cnn_block_8_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype026
4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?
%res_block/cnn_block_8/conv2d_8/Conv2DConv2Dres_block/add:z:0<res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2'
%res_block/cnn_block_8/conv2d_8/Conv2D?
5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp>res_block_cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?
&res_block/cnn_block_8/conv2d_8/BiasAddBiasAdd.res_block/cnn_block_8/conv2d_8/Conv2D:output:0=res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2(
&res_block/cnn_block_8/conv2d_8/BiasAdd?
:res_block/cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOpCres_block_cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype02<
:res_block/cnn_block_8/batch_normalization_8/ReadVariableOp?
<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOpEres_block_cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype02>
<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1?
Kres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpTres_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02M
Kres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVres_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02O
Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
<res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3/res_block/cnn_block_8/conv2d_8/BiasAdd:output:0Bres_block/cnn_block_8/batch_normalization_8/ReadVariableOp:value:0Dres_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Sres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Ures_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2>
<res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3?
res_block/cnn_block_8/ReluRelu@res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
res_block/cnn_block_8/Relu?
res_block/max_pooling2d/MaxPoolMaxPool(res_block/cnn_block_8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2!
res_block/max_pooling2d/MaxPool?
7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOpReadVariableOp@res_block_1_cnn_block_9_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype029
7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?
(res_block_1/cnn_block_9/conv2d_10/Conv2DConv2D(res_block/max_pooling2d/MaxPool:output:0?res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2*
(res_block_1/cnn_block_9/conv2d_10/Conv2D?
8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOpReadVariableOpAres_block_1_cnn_block_9_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?
)res_block_1/cnn_block_9/conv2d_10/BiasAddBiasAdd1res_block_1/cnn_block_9/conv2d_10/Conv2D:output:0@res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2+
)res_block_1/cnn_block_9/conv2d_10/BiasAdd?
<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOpReadVariableOpEres_block_1_cnn_block_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp?
>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1ReadVariableOpGres_block_1_cnn_block_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype02@
>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1?
Mres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpVres_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02O
Mres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpXres_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02Q
Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
>res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV32res_block_1/cnn_block_9/conv2d_10/BiasAdd:output:0Dres_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp:value:0Fres_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1:value:0Ures_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Wres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2@
>res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3?
res_block_1/cnn_block_9/ReluReluBres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
res_block_1/cnn_block_9/Relu?
8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOpReadVariableOpAres_block_1_cnn_block_10_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?
)res_block_1/cnn_block_10/conv2d_11/Conv2DConv2D*res_block_1/cnn_block_9/Relu:activations:0@res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)res_block_1/cnn_block_10/conv2d_11/Conv2D?
9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpReadVariableOpBres_block_1_cnn_block_10_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?
*res_block_1/cnn_block_10/conv2d_11/BiasAddBiasAdd2res_block_1/cnn_block_10/conv2d_11/Conv2D:output:0Ares_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*res_block_1/cnn_block_10/conv2d_11/BiasAdd?
>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOpReadVariableOpGres_block_1_cnn_block_10_batch_normalization_10_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp?
@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1ReadVariableOpIres_block_1_cnn_block_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:?*
dtype02B
@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1?
Ores_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpXres_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Ores_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZres_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02S
Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
@res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV33res_block_1/cnn_block_10/conv2d_11/BiasAdd:output:0Fres_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp:value:0Hres_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1:value:0Wres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Yres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2B
@res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3?
res_block_1/cnn_block_10/ReluReluDres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
res_block_1/cnn_block_10/Relu?
+res_block_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp4res_block_1_conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+res_block_1/conv2d_13/Conv2D/ReadVariableOp?
res_block_1/conv2d_13/Conv2DConv2D(res_block/max_pooling2d/MaxPool:output:03res_block_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
res_block_1/conv2d_13/Conv2D?
,res_block_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp5res_block_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,res_block_1/conv2d_13/BiasAdd/ReadVariableOp?
res_block_1/conv2d_13/BiasAddBiasAdd%res_block_1/conv2d_13/Conv2D:output:04res_block_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
res_block_1/conv2d_13/BiasAdd?
res_block_1/addAddV2+res_block_1/cnn_block_10/Relu:activations:0&res_block_1/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
res_block_1/add?
8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOpAres_block_1_cnn_block_11_conv2d_12_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?
)res_block_1/cnn_block_11/conv2d_12/Conv2DConv2Dres_block_1/add:z:0@res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)res_block_1/cnn_block_11/conv2d_12/Conv2D?
9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOpBres_block_1_cnn_block_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?
*res_block_1/cnn_block_11/conv2d_12/BiasAddBiasAdd2res_block_1/cnn_block_11/conv2d_12/Conv2D:output:0Ares_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*res_block_1/cnn_block_11/conv2d_12/BiasAdd?
>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOpReadVariableOpGres_block_1_cnn_block_11_batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp?
@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1ReadVariableOpIres_block_1_cnn_block_11_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype02B
@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1?
Ores_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpXres_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Ores_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZres_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02S
Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
@res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3FusedBatchNormV33res_block_1/cnn_block_11/conv2d_12/BiasAdd:output:0Fres_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp:value:0Hres_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1:value:0Wres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Yres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2B
@res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3?
res_block_1/cnn_block_11/ReluReluDres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
res_block_1/cnn_block_11/Relu?
#res_block_1/max_pooling2d_1/MaxPoolMaxPool+res_block_1/cnn_block_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#res_block_1/max_pooling2d_1/MaxPools
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_2/Const?
flatten_2/ReshapeReshape,res_block_1/max_pooling2d_1/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_2/Reshape?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?b
*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulflatten_2/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOpL^res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpN^res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1;^res_block/cnn_block_6/batch_normalization_6/ReadVariableOp=^res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_16^res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp5^res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOpL^res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpN^res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1;^res_block/cnn_block_7/batch_normalization_7/ReadVariableOp=^res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_16^res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp5^res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOpL^res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpN^res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1;^res_block/cnn_block_8/batch_normalization_8/ReadVariableOp=^res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_16^res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp5^res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp*^res_block/conv2d_9/BiasAdd/ReadVariableOp)^res_block/conv2d_9/Conv2D/ReadVariableOpP^res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpR^res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?^res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOpA^res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1:^res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp9^res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOpP^res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpR^res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?^res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOpA^res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1:^res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp9^res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOpN^res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpP^res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1=^res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp?^res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_19^res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp8^res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp-^res_block_1/conv2d_13/BiasAdd/ReadVariableOp,^res_block_1/conv2d_13/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2?
Kres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpKres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12x
:res_block/cnn_block_6/batch_normalization_6/ReadVariableOp:res_block/cnn_block_6/batch_normalization_6/ReadVariableOp2|
<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_12n
5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2l
4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2?
Kres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpKres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12x
:res_block/cnn_block_7/batch_normalization_7/ReadVariableOp:res_block/cnn_block_7/batch_normalization_7/ReadVariableOp2|
<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_12n
5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2l
4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2?
Kres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpKres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12x
:res_block/cnn_block_8/batch_normalization_8/ReadVariableOp:res_block/cnn_block_8/batch_normalization_8/ReadVariableOp2|
<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_12n
5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2l
4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2V
)res_block/conv2d_9/BiasAdd/ReadVariableOp)res_block/conv2d_9/BiasAdd/ReadVariableOp2T
(res_block/conv2d_9/Conv2D/ReadVariableOp(res_block/conv2d_9/Conv2D/ReadVariableOp2?
Ores_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpOres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12?
>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp2?
@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_12v
9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp2t
8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp2?
Ores_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpOres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12?
>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp2?
@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_12v
9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp2t
8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp2?
Mres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpMres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12|
<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp2?
>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_12t
8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp2r
7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp2\
,res_block_1/conv2d_13/BiasAdd/ReadVariableOp,res_block_1/conv2d_13/BiasAdd/ReadVariableOp2Z
+res_block_1/conv2d_13/Conv2D/ReadVariableOp+res_block_1/conv2d_13/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_8_layer_call_fn_14954

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_122122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_12035

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?.
B__inference_model_1_layer_call_and_return_conditional_losses_14075

inputsA
=res_block_cnn_block_6_conv2d_6_conv2d_readvariableop_resourceB
>res_block_cnn_block_6_conv2d_6_biasadd_readvariableop_resourceG
Cres_block_cnn_block_6_batch_normalization_6_readvariableop_resourceI
Eres_block_cnn_block_6_batch_normalization_6_readvariableop_1_resourceX
Tres_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceZ
Vres_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceA
=res_block_cnn_block_7_conv2d_7_conv2d_readvariableop_resourceB
>res_block_cnn_block_7_conv2d_7_biasadd_readvariableop_resourceG
Cres_block_cnn_block_7_batch_normalization_7_readvariableop_resourceI
Eres_block_cnn_block_7_batch_normalization_7_readvariableop_1_resourceX
Tres_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceZ
Vres_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource5
1res_block_conv2d_9_conv2d_readvariableop_resource6
2res_block_conv2d_9_biasadd_readvariableop_resourceA
=res_block_cnn_block_8_conv2d_8_conv2d_readvariableop_resourceB
>res_block_cnn_block_8_conv2d_8_biasadd_readvariableop_resourceG
Cres_block_cnn_block_8_batch_normalization_8_readvariableop_resourceI
Eres_block_cnn_block_8_batch_normalization_8_readvariableop_1_resourceX
Tres_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceZ
Vres_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceD
@res_block_1_cnn_block_9_conv2d_10_conv2d_readvariableop_resourceE
Ares_block_1_cnn_block_9_conv2d_10_biasadd_readvariableop_resourceI
Eres_block_1_cnn_block_9_batch_normalization_9_readvariableop_resourceK
Gres_block_1_cnn_block_9_batch_normalization_9_readvariableop_1_resourceZ
Vres_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource\
Xres_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resourceE
Ares_block_1_cnn_block_10_conv2d_11_conv2d_readvariableop_resourceF
Bres_block_1_cnn_block_10_conv2d_11_biasadd_readvariableop_resourceK
Gres_block_1_cnn_block_10_batch_normalization_10_readvariableop_resourceM
Ires_block_1_cnn_block_10_batch_normalization_10_readvariableop_1_resource\
Xres_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource^
Zres_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource8
4res_block_1_conv2d_13_conv2d_readvariableop_resource9
5res_block_1_conv2d_13_biasadd_readvariableop_resourceE
Ares_block_1_cnn_block_11_conv2d_12_conv2d_readvariableop_resourceF
Bres_block_1_cnn_block_11_conv2d_12_biasadd_readvariableop_resourceK
Gres_block_1_cnn_block_11_batch_normalization_11_readvariableop_resourceM
Ires_block_1_cnn_block_11_batch_normalization_11_readvariableop_1_resource\
Xres_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource^
Zres_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?Kres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?:res_block/cnn_block_6/batch_normalization_6/ReadVariableOp?<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1?5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?Kres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?:res_block/cnn_block_7/batch_normalization_7/ReadVariableOp?<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1?5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?Kres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?:res_block/cnn_block_8/batch_normalization_8/ReadVariableOp?<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1?5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?)res_block/conv2d_9/BiasAdd/ReadVariableOp?(res_block/conv2d_9/Conv2D/ReadVariableOp?Ores_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp?@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1?9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?Ores_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp?@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1?9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?Mres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp?>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1?8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?,res_block_1/conv2d_13/BiasAdd/ReadVariableOp?+res_block_1/conv2d_13/Conv2D/ReadVariableOp?
4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOpReadVariableOp=res_block_cnn_block_6_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype026
4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp?
%res_block/cnn_block_6/conv2d_6/Conv2DConv2Dinputs<res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2'
%res_block/cnn_block_6/conv2d_6/Conv2D?
5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp>res_block_cnn_block_6_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp?
&res_block/cnn_block_6/conv2d_6/BiasAddBiasAdd.res_block/cnn_block_6/conv2d_6/Conv2D:output:0=res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2(
&res_block/cnn_block_6/conv2d_6/BiasAdd?
:res_block/cnn_block_6/batch_normalization_6/ReadVariableOpReadVariableOpCres_block_cnn_block_6_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02<
:res_block/cnn_block_6/batch_normalization_6/ReadVariableOp?
<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1ReadVariableOpEres_block_cnn_block_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02>
<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1?
Kres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpTres_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02M
Kres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVres_block_cnn_block_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02O
Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
<res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3/res_block/cnn_block_6/conv2d_6/BiasAdd:output:0Bres_block/cnn_block_6/batch_normalization_6/ReadVariableOp:value:0Dres_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1:value:0Sres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Ures_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2>
<res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3?
res_block/cnn_block_6/ReluRelu@res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
res_block/cnn_block_6/Relu?
4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOpReadVariableOp=res_block_cnn_block_7_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype026
4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp?
%res_block/cnn_block_7/conv2d_7/Conv2DConv2D(res_block/cnn_block_6/Relu:activations:0<res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2'
%res_block/cnn_block_7/conv2d_7/Conv2D?
5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp>res_block_cnn_block_7_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp?
&res_block/cnn_block_7/conv2d_7/BiasAddBiasAdd.res_block/cnn_block_7/conv2d_7/Conv2D:output:0=res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2(
&res_block/cnn_block_7/conv2d_7/BiasAdd?
:res_block/cnn_block_7/batch_normalization_7/ReadVariableOpReadVariableOpCres_block_cnn_block_7_batch_normalization_7_readvariableop_resource*
_output_shapes
: *
dtype02<
:res_block/cnn_block_7/batch_normalization_7/ReadVariableOp?
<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1ReadVariableOpEres_block_cnn_block_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes
: *
dtype02>
<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1?
Kres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpTres_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02M
Kres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVres_block_cnn_block_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02O
Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
<res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3/res_block/cnn_block_7/conv2d_7/BiasAdd:output:0Bres_block/cnn_block_7/batch_normalization_7/ReadVariableOp:value:0Dres_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1:value:0Sres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Ures_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2>
<res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3?
res_block/cnn_block_7/ReluRelu@res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:????????? 2
res_block/cnn_block_7/Relu?
(res_block/conv2d_9/Conv2D/ReadVariableOpReadVariableOp1res_block_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02*
(res_block/conv2d_9/Conv2D/ReadVariableOp?
res_block/conv2d_9/Conv2DConv2Dinputs0res_block/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
res_block/conv2d_9/Conv2D?
)res_block/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp2res_block_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)res_block/conv2d_9/BiasAdd/ReadVariableOp?
res_block/conv2d_9/BiasAddBiasAdd"res_block/conv2d_9/Conv2D:output:01res_block/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
res_block/conv2d_9/BiasAdd?
res_block/addAddV2(res_block/cnn_block_7/Relu:activations:0#res_block/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
res_block/add?
4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOpReadVariableOp=res_block_cnn_block_8_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype026
4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp?
%res_block/cnn_block_8/conv2d_8/Conv2DConv2Dres_block/add:z:0<res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2'
%res_block/cnn_block_8/conv2d_8/Conv2D?
5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp>res_block_cnn_block_8_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp?
&res_block/cnn_block_8/conv2d_8/BiasAddBiasAdd.res_block/cnn_block_8/conv2d_8/Conv2D:output:0=res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2(
&res_block/cnn_block_8/conv2d_8/BiasAdd?
:res_block/cnn_block_8/batch_normalization_8/ReadVariableOpReadVariableOpCres_block_cnn_block_8_batch_normalization_8_readvariableop_resource*
_output_shapes
:@*
dtype02<
:res_block/cnn_block_8/batch_normalization_8/ReadVariableOp?
<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1ReadVariableOpEres_block_cnn_block_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes
:@*
dtype02>
<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1?
Kres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpTres_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02M
Kres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVres_block_cnn_block_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02O
Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
<res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3/res_block/cnn_block_8/conv2d_8/BiasAdd:output:0Bres_block/cnn_block_8/batch_normalization_8/ReadVariableOp:value:0Dres_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1:value:0Sres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Ures_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2>
<res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3?
res_block/cnn_block_8/ReluRelu@res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
res_block/cnn_block_8/Relu?
res_block/max_pooling2d/MaxPoolMaxPool(res_block/cnn_block_8/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2!
res_block/max_pooling2d/MaxPool?
7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOpReadVariableOp@res_block_1_cnn_block_9_conv2d_10_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype029
7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp?
(res_block_1/cnn_block_9/conv2d_10/Conv2DConv2D(res_block/max_pooling2d/MaxPool:output:0?res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2*
(res_block_1/cnn_block_9/conv2d_10/Conv2D?
8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOpReadVariableOpAres_block_1_cnn_block_9_conv2d_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp?
)res_block_1/cnn_block_9/conv2d_10/BiasAddBiasAdd1res_block_1/cnn_block_9/conv2d_10/Conv2D:output:0@res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2+
)res_block_1/cnn_block_9/conv2d_10/BiasAdd?
<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOpReadVariableOpEres_block_1_cnn_block_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp?
>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1ReadVariableOpGres_block_1_cnn_block_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype02@
>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1?
Mres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpVres_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02O
Mres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpXres_block_1_cnn_block_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02Q
Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
>res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV32res_block_1/cnn_block_9/conv2d_10/BiasAdd:output:0Dres_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp:value:0Fres_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1:value:0Ures_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Wres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2@
>res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3?
res_block_1/cnn_block_9/ReluReluBres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
res_block_1/cnn_block_9/Relu?
8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOpReadVariableOpAres_block_1_cnn_block_10_conv2d_11_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp?
)res_block_1/cnn_block_10/conv2d_11/Conv2DConv2D*res_block_1/cnn_block_9/Relu:activations:0@res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)res_block_1/cnn_block_10/conv2d_11/Conv2D?
9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOpReadVariableOpBres_block_1_cnn_block_10_conv2d_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp?
*res_block_1/cnn_block_10/conv2d_11/BiasAddBiasAdd2res_block_1/cnn_block_10/conv2d_11/Conv2D:output:0Ares_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*res_block_1/cnn_block_10/conv2d_11/BiasAdd?
>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOpReadVariableOpGres_block_1_cnn_block_10_batch_normalization_10_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp?
@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1ReadVariableOpIres_block_1_cnn_block_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:?*
dtype02B
@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1?
Ores_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpXres_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Ores_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZres_block_1_cnn_block_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02S
Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
@res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV33res_block_1/cnn_block_10/conv2d_11/BiasAdd:output:0Fres_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp:value:0Hres_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1:value:0Wres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Yres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2B
@res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3?
res_block_1/cnn_block_10/ReluReluDres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
res_block_1/cnn_block_10/Relu?
+res_block_1/conv2d_13/Conv2D/ReadVariableOpReadVariableOp4res_block_1_conv2d_13_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+res_block_1/conv2d_13/Conv2D/ReadVariableOp?
res_block_1/conv2d_13/Conv2DConv2D(res_block/max_pooling2d/MaxPool:output:03res_block_1/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
res_block_1/conv2d_13/Conv2D?
,res_block_1/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp5res_block_1_conv2d_13_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,res_block_1/conv2d_13/BiasAdd/ReadVariableOp?
res_block_1/conv2d_13/BiasAddBiasAdd%res_block_1/conv2d_13/Conv2D:output:04res_block_1/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
res_block_1/conv2d_13/BiasAdd?
res_block_1/addAddV2+res_block_1/cnn_block_10/Relu:activations:0&res_block_1/conv2d_13/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
res_block_1/add?
8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOpReadVariableOpAres_block_1_cnn_block_11_conv2d_12_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02:
8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp?
)res_block_1/cnn_block_11/conv2d_12/Conv2DConv2Dres_block_1/add:z:0@res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2+
)res_block_1/cnn_block_11/conv2d_12/Conv2D?
9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOpReadVariableOpBres_block_1_cnn_block_11_conv2d_12_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp?
*res_block_1/cnn_block_11/conv2d_12/BiasAddBiasAdd2res_block_1/cnn_block_11/conv2d_12/Conv2D:output:0Ares_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2,
*res_block_1/cnn_block_11/conv2d_12/BiasAdd?
>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOpReadVariableOpGres_block_1_cnn_block_11_batch_normalization_11_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp?
@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1ReadVariableOpIres_block_1_cnn_block_11_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:?*
dtype02B
@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1?
Ores_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpXres_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Ores_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?
Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZres_block_1_cnn_block_11_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02S
Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?
@res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3FusedBatchNormV33res_block_1/cnn_block_11/conv2d_12/BiasAdd:output:0Fres_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp:value:0Hres_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1:value:0Wres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Yres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2B
@res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3?
res_block_1/cnn_block_11/ReluReluDres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
res_block_1/cnn_block_11/Relu?
#res_block_1/max_pooling2d_1/MaxPoolMaxPool+res_block_1/cnn_block_11/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2%
#res_block_1/max_pooling2d_1/MaxPools
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  2
flatten_2/Const?
flatten_2/ReshapeReshape,res_block_1/max_pooling2d_1/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????b2
flatten_2/Reshape?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?b
*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulflatten_2/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_3/BiasAdd?
IdentityIdentitydense_3/BiasAdd:output:0^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOpL^res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpN^res_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1;^res_block/cnn_block_6/batch_normalization_6/ReadVariableOp=^res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_16^res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp5^res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOpL^res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpN^res_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1;^res_block/cnn_block_7/batch_normalization_7/ReadVariableOp=^res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_16^res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp5^res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOpL^res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpN^res_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1;^res_block/cnn_block_8/batch_normalization_8/ReadVariableOp=^res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_16^res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp5^res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp*^res_block/conv2d_9/BiasAdd/ReadVariableOp)^res_block/conv2d_9/Conv2D/ReadVariableOpP^res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpR^res_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?^res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOpA^res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1:^res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp9^res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOpP^res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpR^res_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?^res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOpA^res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1:^res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp9^res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOpN^res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpP^res_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1=^res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp?^res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_19^res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp8^res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp-^res_block_1/conv2d_13/BiasAdd/ReadVariableOp,^res_block_1/conv2d_13/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::::::::::::2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2?
Kres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpKres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Mres_block/cnn_block_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12x
:res_block/cnn_block_6/batch_normalization_6/ReadVariableOp:res_block/cnn_block_6/batch_normalization_6/ReadVariableOp2|
<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_1<res_block/cnn_block_6/batch_normalization_6/ReadVariableOp_12n
5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp5res_block/cnn_block_6/conv2d_6/BiasAdd/ReadVariableOp2l
4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp4res_block/cnn_block_6/conv2d_6/Conv2D/ReadVariableOp2?
Kres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpKres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Mres_block/cnn_block_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12x
:res_block/cnn_block_7/batch_normalization_7/ReadVariableOp:res_block/cnn_block_7/batch_normalization_7/ReadVariableOp2|
<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_1<res_block/cnn_block_7/batch_normalization_7/ReadVariableOp_12n
5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp5res_block/cnn_block_7/conv2d_7/BiasAdd/ReadVariableOp2l
4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp4res_block/cnn_block_7/conv2d_7/Conv2D/ReadVariableOp2?
Kres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpKres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Mres_block/cnn_block_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12x
:res_block/cnn_block_8/batch_normalization_8/ReadVariableOp:res_block/cnn_block_8/batch_normalization_8/ReadVariableOp2|
<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_1<res_block/cnn_block_8/batch_normalization_8/ReadVariableOp_12n
5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp5res_block/cnn_block_8/conv2d_8/BiasAdd/ReadVariableOp2l
4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp4res_block/cnn_block_8/conv2d_8/Conv2D/ReadVariableOp2V
)res_block/conv2d_9/BiasAdd/ReadVariableOp)res_block/conv2d_9/BiasAdd/ReadVariableOp2T
(res_block/conv2d_9/Conv2D/ReadVariableOp(res_block/conv2d_9/Conv2D/ReadVariableOp2?
Ores_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpOres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Qres_block_1/cnn_block_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12?
>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp>res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp2?
@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_1@res_block_1/cnn_block_10/batch_normalization_10/ReadVariableOp_12v
9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp9res_block_1/cnn_block_10/conv2d_11/BiasAdd/ReadVariableOp2t
8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp8res_block_1/cnn_block_10/conv2d_11/Conv2D/ReadVariableOp2?
Ores_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOpOres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Qres_block_1/cnn_block_11/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12?
>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp>res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp2?
@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_1@res_block_1/cnn_block_11/batch_normalization_11/ReadVariableOp_12v
9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp9res_block_1/cnn_block_11/conv2d_12/BiasAdd/ReadVariableOp2t
8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp8res_block_1/cnn_block_11/conv2d_12/Conv2D/ReadVariableOp2?
Mres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpMres_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Ores_block_1/cnn_block_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12|
<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp<res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp2?
>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_1>res_block_1/cnn_block_9/batch_normalization_9/ReadVariableOp_12t
8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp8res_block_1/cnn_block_9/conv2d_10/BiasAdd/ReadVariableOp2r
7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp7res_block_1/cnn_block_9/conv2d_10/Conv2D/ReadVariableOp2\
,res_block_1/conv2d_13/BiasAdd/ReadVariableOp,res_block_1/conv2d_13/BiasAdd/ReadVariableOp2Z
+res_block_1/conv2d_13/Conv2D/ReadVariableOp+res_block_1/conv2d_13/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_7_layer_call_fn_14890

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_121082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????;
dense_30
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?
_tf_keras_network?{"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "ResBlock", "config": {"layer was saved without config": true}, "name": "res_block", "inbound_nodes": [[["input_1", 0, 0, {"training": false}]]]}, {"class_name": "ResBlock", "config": {"layer was saved without config": true}, "name": "res_block_1", "inbound_nodes": [[["res_block", 0, 0, {"training": false}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_2", "inbound_nodes": [[["res_block_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["flatten_2", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_3", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?
channels
cnn1
cnn2
cnn3
pooling
identity_mapping
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "ResBlock", "name": "res_block", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
channels
cnn1
cnn2
cnn3
pooling
identity_mapping
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "ResBlock", "name": "res_block_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
 regularization_losses
!	variables
"trainable_variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12544}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12544]}}
?
*iter

+beta_1

,beta_2
	-decay
.learning_rate$m?%m?/m?0m?1m?2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?<m?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Nm?Om?Pm?$v?%v?/v?0v?1v?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?<v?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?Nv?Ov?Pv?"
	optimizer
 "
trackable_list_wrapper
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
C20
D21
E22
F23
G24
H25
I26
J27
K28
L29
M30
N31
O32
P33
Q34
R35
S36
T37
U38
V39
$40
%41"
trackable_list_wrapper
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
C14
D15
E16
F17
G18
H19
I20
J21
K22
L23
M24
N25
O26
P27
$28
%29"
trackable_list_wrapper
?
Wmetrics
Xlayer_regularization_losses
regularization_losses
Ylayer_metrics
Znon_trainable_variables
	variables

[layers
	trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
?
\conv
]bn
^regularization_losses
_	variables
`trainable_variables
a	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "CNNBlock", "name": "cnn_block_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
bconv
cbn
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "CNNBlock", "name": "cnn_block_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
hconv
ibn
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "CNNBlock", "name": "cnn_block_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

;kernel
<bias
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
 "
trackable_list_wrapper
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19"
trackable_list_wrapper
?
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13"
trackable_list_wrapper
?
vmetrics
wlayer_regularization_losses
regularization_losses
xlayer_metrics
ynon_trainable_variables
	variables

zlayers
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
?
{conv
|bn
}regularization_losses
~	variables
trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "CNNBlock", "name": "cnn_block_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
	?conv
?bn
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "CNNBlock", "name": "cnn_block_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
	?conv
?bn
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "CNNBlock", "name": "cnn_block_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Okernel
Pbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
 "
trackable_list_wrapper
?
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17
U18
V19"
trackable_list_wrapper
?
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
regularization_losses
?layer_metrics
?non_trainable_variables
	variables
?layers
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
 regularization_losses
?layer_metrics
?non_trainable_variables
!	variables
?layers
"trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?b
2dense_3/kernel
:
2dense_3/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
&regularization_losses
?layer_metrics
?non_trainable_variables
'	variables
?layers
(trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?:= 2%res_block/cnn_block_6/conv2d_6/kernel
1:/ 2#res_block/cnn_block_6/conv2d_6/bias
?:= 21res_block/cnn_block_6/batch_normalization_6/gamma
>:< 20res_block/cnn_block_6/batch_normalization_6/beta
?:=  2%res_block/cnn_block_7/conv2d_7/kernel
1:/ 2#res_block/cnn_block_7/conv2d_7/bias
?:= 21res_block/cnn_block_7/batch_normalization_7/gamma
>:< 20res_block/cnn_block_7/batch_normalization_7/beta
?:= @2%res_block/cnn_block_8/conv2d_8/kernel
1:/@2#res_block/cnn_block_8/conv2d_8/bias
?:=@21res_block/cnn_block_8/batch_normalization_8/gamma
>:<@20res_block/cnn_block_8/batch_normalization_8/beta
3:1 2res_block/conv2d_9/kernel
%:# 2res_block/conv2d_9/bias
G:E  (27res_block/cnn_block_6/batch_normalization_6/moving_mean
K:I  (2;res_block/cnn_block_6/batch_normalization_6/moving_variance
G:E  (27res_block/cnn_block_7/batch_normalization_7/moving_mean
K:I  (2;res_block/cnn_block_7/batch_normalization_7/moving_variance
G:E@ (27res_block/cnn_block_8/batch_normalization_8/moving_mean
K:I@ (2;res_block/cnn_block_8/batch_normalization_8/moving_variance
C:A@?2(res_block_1/cnn_block_9/conv2d_10/kernel
5:3?2&res_block_1/cnn_block_9/conv2d_10/bias
B:@?23res_block_1/cnn_block_9/batch_normalization_9/gamma
A:??22res_block_1/cnn_block_9/batch_normalization_9/beta
E:C??2)res_block_1/cnn_block_10/conv2d_11/kernel
6:4?2'res_block_1/cnn_block_10/conv2d_11/bias
D:B?25res_block_1/cnn_block_10/batch_normalization_10/gamma
C:A?24res_block_1/cnn_block_10/batch_normalization_10/beta
E:C??2)res_block_1/cnn_block_11/conv2d_12/kernel
6:4?2'res_block_1/cnn_block_11/conv2d_12/bias
D:B?25res_block_1/cnn_block_11/batch_normalization_11/gamma
C:A?24res_block_1/cnn_block_11/batch_normalization_11/beta
7:5@?2res_block_1/conv2d_13/kernel
):'?2res_block_1/conv2d_13/bias
J:H? (29res_block_1/cnn_block_9/batch_normalization_9/moving_mean
N:L? (2=res_block_1/cnn_block_9/batch_normalization_9/moving_variance
L:J? (2;res_block_1/cnn_block_10/batch_normalization_10/moving_mean
P:N? (2?res_block_1/cnn_block_10/batch_normalization_10/moving_variance
L:J? (2;res_block_1/cnn_block_11/batch_normalization_11/moving_mean
P:N? (2?res_block_1/cnn_block_11/batch_normalization_11/moving_variance
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
v
=0
>1
?2
@3
A4
B5
Q6
R7
S8
T9
U10
V11"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
?	

/kernel
0bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?	
	?axis
	1gamma
2beta
=moving_mean
>moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 32]}}
 "
trackable_list_wrapper
J
/0
01
12
23
=4
>5"
trackable_list_wrapper
<
/0
01
12
23"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
^regularization_losses
?layer_metrics
?non_trainable_variables
_	variables
?layers
`trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

3kernel
4bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_7", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 32]}}
?	
	?axis
	5gamma
6beta
?moving_mean
@moving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 32]}}
 "
trackable_list_wrapper
J
30
41
52
63
?4
@5"
trackable_list_wrapper
<
30
41
52
63"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
dregularization_losses
?layer_metrics
?non_trainable_variables
e	variables
?layers
ftrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

7kernel
8bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_8", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 32]}}
?	
	?axis
	9gamma
:beta
Amoving_mean
Bmoving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
 "
trackable_list_wrapper
J
70
81
92
:3
A4
B5"
trackable_list_wrapper
<
70
81
92
:3"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
jregularization_losses
?layer_metrics
?non_trainable_variables
k	variables
?layers
ltrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
nregularization_losses
?layer_metrics
?non_trainable_variables
o	variables
?layers
ptrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
rregularization_losses
?layer_metrics
?non_trainable_variables
s	variables
?layers
ttrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
=0
>1
?2
@3
A4
B5"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
?	

Ckernel
Dbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?	
	?axis
	Egamma
Fbeta
Qmoving_mean
Rmoving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
 "
trackable_list_wrapper
J
C0
D1
E2
F3
Q4
R5"
trackable_list_wrapper
<
C0
D1
E2
F3"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
}regularization_losses
?layer_metrics
?non_trainable_variables
~	variables
?layers
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

Gkernel
Hbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
?	
	?axis
	Igamma
Jbeta
Smoving_mean
Tmoving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
 "
trackable_list_wrapper
J
G0
H1
I2
J3
S4
T5"
trackable_list_wrapper
<
G0
H1
I2
J3"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

Kkernel
Lbias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_12", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
?	
	?axis
	Mgamma
Nbeta
Umoving_mean
Vmoving_variance
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 256]}}
 "
trackable_list_wrapper
J
K0
L1
M2
N3
U4
V5"
trackable_list_wrapper
<
K0
L1
M2
N3"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
Q0
R1
S2
T3
U4
V5"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
10
21
=2
>3"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
50
61
?2
@3"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
?0
@1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
90
:1
A2
B3"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
E0
F1
Q2
R3"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
I0
J1
S2
T3"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
M0
N1
U2
V3"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
?
?metrics
 ?layer_regularization_losses
?regularization_losses
?layer_metrics
?non_trainable_variables
?	variables
?layers
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
&:$	?b
2Adam/dense_3/kernel/m
:
2Adam/dense_3/bias/m
D:B 2,Adam/res_block/cnn_block_6/conv2d_6/kernel/m
6:4 2*Adam/res_block/cnn_block_6/conv2d_6/bias/m
D:B 28Adam/res_block/cnn_block_6/batch_normalization_6/gamma/m
C:A 27Adam/res_block/cnn_block_6/batch_normalization_6/beta/m
D:B  2,Adam/res_block/cnn_block_7/conv2d_7/kernel/m
6:4 2*Adam/res_block/cnn_block_7/conv2d_7/bias/m
D:B 28Adam/res_block/cnn_block_7/batch_normalization_7/gamma/m
C:A 27Adam/res_block/cnn_block_7/batch_normalization_7/beta/m
D:B @2,Adam/res_block/cnn_block_8/conv2d_8/kernel/m
6:4@2*Adam/res_block/cnn_block_8/conv2d_8/bias/m
D:B@28Adam/res_block/cnn_block_8/batch_normalization_8/gamma/m
C:A@27Adam/res_block/cnn_block_8/batch_normalization_8/beta/m
8:6 2 Adam/res_block/conv2d_9/kernel/m
*:( 2Adam/res_block/conv2d_9/bias/m
H:F@?2/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/m
::8?2-Adam/res_block_1/cnn_block_9/conv2d_10/bias/m
G:E?2:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/m
F:D?29Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/m
J:H??20Adam/res_block_1/cnn_block_10/conv2d_11/kernel/m
;:9?2.Adam/res_block_1/cnn_block_10/conv2d_11/bias/m
I:G?2<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/m
H:F?2;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/m
J:H??20Adam/res_block_1/cnn_block_11/conv2d_12/kernel/m
;:9?2.Adam/res_block_1/cnn_block_11/conv2d_12/bias/m
I:G?2<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/m
H:F?2;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/m
<::@?2#Adam/res_block_1/conv2d_13/kernel/m
.:,?2!Adam/res_block_1/conv2d_13/bias/m
&:$	?b
2Adam/dense_3/kernel/v
:
2Adam/dense_3/bias/v
D:B 2,Adam/res_block/cnn_block_6/conv2d_6/kernel/v
6:4 2*Adam/res_block/cnn_block_6/conv2d_6/bias/v
D:B 28Adam/res_block/cnn_block_6/batch_normalization_6/gamma/v
C:A 27Adam/res_block/cnn_block_6/batch_normalization_6/beta/v
D:B  2,Adam/res_block/cnn_block_7/conv2d_7/kernel/v
6:4 2*Adam/res_block/cnn_block_7/conv2d_7/bias/v
D:B 28Adam/res_block/cnn_block_7/batch_normalization_7/gamma/v
C:A 27Adam/res_block/cnn_block_7/batch_normalization_7/beta/v
D:B @2,Adam/res_block/cnn_block_8/conv2d_8/kernel/v
6:4@2*Adam/res_block/cnn_block_8/conv2d_8/bias/v
D:B@28Adam/res_block/cnn_block_8/batch_normalization_8/gamma/v
C:A@27Adam/res_block/cnn_block_8/batch_normalization_8/beta/v
8:6 2 Adam/res_block/conv2d_9/kernel/v
*:( 2Adam/res_block/conv2d_9/bias/v
H:F@?2/Adam/res_block_1/cnn_block_9/conv2d_10/kernel/v
::8?2-Adam/res_block_1/cnn_block_9/conv2d_10/bias/v
G:E?2:Adam/res_block_1/cnn_block_9/batch_normalization_9/gamma/v
F:D?29Adam/res_block_1/cnn_block_9/batch_normalization_9/beta/v
J:H??20Adam/res_block_1/cnn_block_10/conv2d_11/kernel/v
;:9?2.Adam/res_block_1/cnn_block_10/conv2d_11/bias/v
I:G?2<Adam/res_block_1/cnn_block_10/batch_normalization_10/gamma/v
H:F?2;Adam/res_block_1/cnn_block_10/batch_normalization_10/beta/v
J:H??20Adam/res_block_1/cnn_block_11/conv2d_12/kernel/v
;:9?2.Adam/res_block_1/cnn_block_11/conv2d_12/bias/v
I:G?2<Adam/res_block_1/cnn_block_11/batch_normalization_11/gamma/v
H:F?2;Adam/res_block_1/cnn_block_11/batch_normalization_11/beta/v
<::@?2#Adam/res_block_1/conv2d_13/kernel/v
.:,?2!Adam/res_block_1/conv2d_13/bias/v
?2?
'__inference_model_1_layer_call_fn_13668
'__inference_model_1_layer_call_fn_14253
'__inference_model_1_layer_call_fn_13487
'__inference_model_1_layer_call_fn_14164?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_11942?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????
?2?
B__inference_model_1_layer_call_and_return_conditional_losses_14075
B__inference_model_1_layer_call_and_return_conditional_losses_13921
B__inference_model_1_layer_call_and_return_conditional_losses_13213
B__inference_model_1_layer_call_and_return_conditional_losses_13305?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_res_block_layer_call_fn_14454
)__inference_res_block_layer_call_fn_14499?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_res_block_layer_call_and_return_conditional_losses_14409
D__inference_res_block_layer_call_and_return_conditional_losses_14334?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_res_block_1_layer_call_fn_14745
+__inference_res_block_1_layer_call_fn_14700?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_res_block_1_layer_call_and_return_conditional_losses_14580
F__inference_res_block_1_layer_call_and_return_conditional_losses_14655?
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_flatten_2_layer_call_fn_14756?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_2_layer_call_and_return_conditional_losses_14751?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_3_layer_call_fn_14775?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_3_layer_call_and_return_conditional_losses_14766?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_13767input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_max_pooling2d_layer_call_fn_12266?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_12260?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec/
args'?$
jself
jinput_tensor

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_max_pooling2d_1_layer_call_fn_12590?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_12584?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_6_layer_call_fn_14826
5__inference_batch_normalization_6_layer_call_fn_14839?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_14795
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_14813?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_7_layer_call_fn_14903
5__inference_batch_normalization_7_layer_call_fn_14890?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_14859
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_14877?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_8_layer_call_fn_14954
5__inference_batch_normalization_8_layer_call_fn_14967?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_14941
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_14923?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_9_layer_call_fn_15018
5__inference_batch_normalization_9_layer_call_fn_15031?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_14987
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15005?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_batch_normalization_10_layer_call_fn_15082
6__inference_batch_normalization_10_layer_call_fn_15095?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15069
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15051?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_batch_normalization_11_layer_call_fn_15146
6__inference_batch_normalization_11_layer_call_fn_15159?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15115
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15133?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_11942?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%8?5
.?+
)?&
input_1?????????
? "1?.
,
dense_3!?
dense_3?????????
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15051?IJSTN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_15069?IJSTN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_10_layer_call_fn_15082?IJSTN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
6__inference_batch_normalization_10_layer_call_fn_15095?IJSTN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15115?MNUVN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_15133?MNUVN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_11_layer_call_fn_15146?MNUVN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
6__inference_batch_normalization_11_layer_call_fn_15159?MNUVN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_14795?12=>M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_14813?12=>M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
5__inference_batch_normalization_6_layer_call_fn_14826?12=>M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
5__inference_batch_normalization_6_layer_call_fn_14839?12=>M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_14859?56?@M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_14877?56?@M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
5__inference_batch_normalization_7_layer_call_fn_14890?56?@M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
5__inference_batch_normalization_7_layer_call_fn_14903?56?@M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_14923?9:ABM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_14941?9:ABM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
5__inference_batch_normalization_8_layer_call_fn_14954?9:ABM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
5__inference_batch_normalization_8_layer_call_fn_14967?9:ABM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_14987?EFQRN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_15005?EFQRN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
5__inference_batch_normalization_9_layer_call_fn_15018?EFQRN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
5__inference_batch_normalization_9_layer_call_fn_15031?EFQRN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
B__inference_dense_3_layer_call_and_return_conditional_losses_14766]$%0?-
&?#
!?
inputs??????????b
? "%?"
?
0?????????

? {
'__inference_dense_3_layer_call_fn_14775P$%0?-
&?#
!?
inputs??????????b
? "??????????
?
D__inference_flatten_2_layer_call_and_return_conditional_losses_14751b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????b
? ?
)__inference_flatten_2_layer_call_fn_14756U8?5
.?+
)?&
inputs??????????
? "???????????b?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_12584?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_1_layer_call_fn_12590?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_12260?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_max_pooling2d_layer_call_fn_12266?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
B__inference_model_1_layer_call_and_return_conditional_losses_13213?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%@?=
6?3
)?&
input_1?????????
p

 
? "%?"
?
0?????????

? ?
B__inference_model_1_layer_call_and_return_conditional_losses_13305?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%@?=
6?3
)?&
input_1?????????
p 

 
? "%?"
?
0?????????

? ?
B__inference_model_1_layer_call_and_return_conditional_losses_13921?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
B__inference_model_1_layer_call_and_return_conditional_losses_14075?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
'__inference_model_1_layer_call_fn_13487?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%@?=
6?3
)?&
input_1?????????
p

 
? "??????????
?
'__inference_model_1_layer_call_fn_13668?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%@?=
6?3
)?&
input_1?????????
p 

 
? "??????????
?
'__inference_model_1_layer_call_fn_14164?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
'__inference_model_1_layer_call_fn_14253?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
F__inference_res_block_1_layer_call_and_return_conditional_losses_14580?CDEFQRGHIJSTOPKLMNUVA?>
7?4
.?+
input_tensor?????????@
p
? ".?+
$?!
0??????????
? ?
F__inference_res_block_1_layer_call_and_return_conditional_losses_14655?CDEFQRGHIJSTOPKLMNUVA?>
7?4
.?+
input_tensor?????????@
p 
? ".?+
$?!
0??????????
? ?
+__inference_res_block_1_layer_call_fn_14700|CDEFQRGHIJSTOPKLMNUVA?>
7?4
.?+
input_tensor?????????@
p
? "!????????????
+__inference_res_block_1_layer_call_fn_14745|CDEFQRGHIJSTOPKLMNUVA?>
7?4
.?+
input_tensor?????????@
p 
? "!????????????
D__inference_res_block_layer_call_and_return_conditional_losses_14334?/012=>3456?@;<789:ABA?>
7?4
.?+
input_tensor?????????
p
? "-?*
#? 
0?????????@
? ?
D__inference_res_block_layer_call_and_return_conditional_losses_14409?/012=>3456?@;<789:ABA?>
7?4
.?+
input_tensor?????????
p 
? "-?*
#? 
0?????????@
? ?
)__inference_res_block_layer_call_fn_14454{/012=>3456?@;<789:ABA?>
7?4
.?+
input_tensor?????????
p
? " ??????????@?
)__inference_res_block_layer_call_fn_14499{/012=>3456?@;<789:ABA?>
7?4
.?+
input_tensor?????????
p 
? " ??????????@?
#__inference_signature_wrapper_13767?*/012=>3456?@;<789:ABCDEFQRGHIJSTOPKLMNUV$%C?@
? 
9?6
4
input_1)?&
input_1?????????"1?.
,
dense_3!?
dense_3?????????
