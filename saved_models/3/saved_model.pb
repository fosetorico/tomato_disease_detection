��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
�
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-0-g6887368d6d48��
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/dense_31/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_31/bias/*
dtype0*
shape:*%
shared_nameAdam/v/dense_31/bias
y
(Adam/v/dense_31/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_31/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_31/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_31/bias/*
dtype0*
shape:*%
shared_nameAdam/m/dense_31/bias
y
(Adam/m/dense_31/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_31/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_31/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_31/kernel/*
dtype0*
shape:	�*'
shared_nameAdam/v/dense_31/kernel
�
*Adam/v/dense_31/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_31/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_31/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_31/kernel/*
dtype0*
shape:	�*'
shared_nameAdam/m/dense_31/kernel
�
*Adam/m/dense_31/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_31/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/dense_30/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_30/bias/*
dtype0*
shape:�*%
shared_nameAdam/v/dense_30/bias
z
(Adam/v/dense_30/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_30/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_30/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_30/bias/*
dtype0*
shape:�*%
shared_nameAdam/m/dense_30/bias
z
(Adam/m/dense_30/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_30/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_30/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_30/kernel/*
dtype0*
shape:
��*'
shared_nameAdam/v/dense_30/kernel
�
*Adam/v/dense_30/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_30/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_30/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_30/kernel/*
dtype0*
shape:
��*'
shared_nameAdam/m/dense_30/kernel
�
*Adam/m/dense_30/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_30/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/conv2d_79/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_79/bias/*
dtype0*
shape:�*&
shared_nameAdam/v/conv2d_79/bias
|
)Adam/v/conv2d_79/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_79/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_79/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_79/bias/*
dtype0*
shape:�*&
shared_nameAdam/m/conv2d_79/bias
|
)Adam/m/conv2d_79/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_79/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_79/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_79/kernel/*
dtype0*
shape:��*(
shared_nameAdam/v/conv2d_79/kernel
�
+Adam/v/conv2d_79/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_79/kernel*(
_output_shapes
:��*
dtype0
�
Adam/m/conv2d_79/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_79/kernel/*
dtype0*
shape:��*(
shared_nameAdam/m/conv2d_79/kernel
�
+Adam/m/conv2d_79/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_79/kernel*(
_output_shapes
:��*
dtype0
�
Adam/v/conv2d_78/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_78/bias/*
dtype0*
shape:�*&
shared_nameAdam/v/conv2d_78/bias
|
)Adam/v/conv2d_78/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_78/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_78/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_78/bias/*
dtype0*
shape:�*&
shared_nameAdam/m/conv2d_78/bias
|
)Adam/m/conv2d_78/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_78/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_78/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_78/kernel/*
dtype0*
shape:��*(
shared_nameAdam/v/conv2d_78/kernel
�
+Adam/v/conv2d_78/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_78/kernel*(
_output_shapes
:��*
dtype0
�
Adam/m/conv2d_78/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_78/kernel/*
dtype0*
shape:��*(
shared_nameAdam/m/conv2d_78/kernel
�
+Adam/m/conv2d_78/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_78/kernel*(
_output_shapes
:��*
dtype0
�
Adam/v/conv2d_77/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_77/bias/*
dtype0*
shape:�*&
shared_nameAdam/v/conv2d_77/bias
|
)Adam/v/conv2d_77/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_77/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_77/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_77/bias/*
dtype0*
shape:�*&
shared_nameAdam/m/conv2d_77/bias
|
)Adam/m/conv2d_77/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_77/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_77/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_77/kernel/*
dtype0*
shape:��*(
shared_nameAdam/v/conv2d_77/kernel
�
+Adam/v/conv2d_77/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_77/kernel*(
_output_shapes
:��*
dtype0
�
Adam/m/conv2d_77/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_77/kernel/*
dtype0*
shape:��*(
shared_nameAdam/m/conv2d_77/kernel
�
+Adam/m/conv2d_77/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_77/kernel*(
_output_shapes
:��*
dtype0
�
Adam/v/conv2d_76/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_76/bias/*
dtype0*
shape:�*&
shared_nameAdam/v/conv2d_76/bias
|
)Adam/v/conv2d_76/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_76/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_76/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_76/bias/*
dtype0*
shape:�*&
shared_nameAdam/m/conv2d_76/bias
|
)Adam/m/conv2d_76/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_76/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_76/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_76/kernel/*
dtype0*
shape:��*(
shared_nameAdam/v/conv2d_76/kernel
�
+Adam/v/conv2d_76/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_76/kernel*(
_output_shapes
:��*
dtype0
�
Adam/m/conv2d_76/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_76/kernel/*
dtype0*
shape:��*(
shared_nameAdam/m/conv2d_76/kernel
�
+Adam/m/conv2d_76/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_76/kernel*(
_output_shapes
:��*
dtype0
�
Adam/v/conv2d_75/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_75/bias/*
dtype0*
shape:�*&
shared_nameAdam/v/conv2d_75/bias
|
)Adam/v/conv2d_75/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_75/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_75/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_75/bias/*
dtype0*
shape:�*&
shared_nameAdam/m/conv2d_75/bias
|
)Adam/m/conv2d_75/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_75/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_75/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_75/kernel/*
dtype0*
shape:F�*(
shared_nameAdam/v/conv2d_75/kernel
�
+Adam/v/conv2d_75/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_75/kernel*'
_output_shapes
:F�*
dtype0
�
Adam/m/conv2d_75/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_75/kernel/*
dtype0*
shape:F�*(
shared_nameAdam/m/conv2d_75/kernel
�
+Adam/m/conv2d_75/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_75/kernel*'
_output_shapes
:F�*
dtype0
�
Adam/v/conv2d_74/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_74/bias/*
dtype0*
shape:F*&
shared_nameAdam/v/conv2d_74/bias
{
)Adam/v/conv2d_74/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_74/bias*
_output_shapes
:F*
dtype0
�
Adam/m/conv2d_74/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_74/bias/*
dtype0*
shape:F*&
shared_nameAdam/m/conv2d_74/bias
{
)Adam/m/conv2d_74/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_74/bias*
_output_shapes
:F*
dtype0
�
Adam/v/conv2d_74/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_74/kernel/*
dtype0*
shape:F*(
shared_nameAdam/v/conv2d_74/kernel
�
+Adam/v/conv2d_74/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_74/kernel*&
_output_shapes
:F*
dtype0
�
Adam/m/conv2d_74/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_74/kernel/*
dtype0*
shape:F*(
shared_nameAdam/m/conv2d_74/kernel
�
+Adam/m/conv2d_74/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_74/kernel*&
_output_shapes
:F*
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
dense_31/biasVarHandleOp*
_output_shapes
: *

debug_namedense_31/bias/*
dtype0*
shape:*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
_output_shapes
:*
dtype0
�
dense_31/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_31/kernel/*
dtype0*
shape:	�* 
shared_namedense_31/kernel
t
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes
:	�*
dtype0
�
dense_30/biasVarHandleOp*
_output_shapes
: *

debug_namedense_30/bias/*
dtype0*
shape:�*
shared_namedense_30/bias
l
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes	
:�*
dtype0
�
dense_30/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_30/kernel/*
dtype0*
shape:
��* 
shared_namedense_30/kernel
u
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel* 
_output_shapes
:
��*
dtype0
�
conv2d_79/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_79/bias/*
dtype0*
shape:�*
shared_nameconv2d_79/bias
n
"conv2d_79/bias/Read/ReadVariableOpReadVariableOpconv2d_79/bias*
_output_shapes	
:�*
dtype0
�
conv2d_79/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_79/kernel/*
dtype0*
shape:��*!
shared_nameconv2d_79/kernel

$conv2d_79/kernel/Read/ReadVariableOpReadVariableOpconv2d_79/kernel*(
_output_shapes
:��*
dtype0
�
conv2d_78/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_78/bias/*
dtype0*
shape:�*
shared_nameconv2d_78/bias
n
"conv2d_78/bias/Read/ReadVariableOpReadVariableOpconv2d_78/bias*
_output_shapes	
:�*
dtype0
�
conv2d_78/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_78/kernel/*
dtype0*
shape:��*!
shared_nameconv2d_78/kernel

$conv2d_78/kernel/Read/ReadVariableOpReadVariableOpconv2d_78/kernel*(
_output_shapes
:��*
dtype0
�
conv2d_77/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_77/bias/*
dtype0*
shape:�*
shared_nameconv2d_77/bias
n
"conv2d_77/bias/Read/ReadVariableOpReadVariableOpconv2d_77/bias*
_output_shapes	
:�*
dtype0
�
conv2d_77/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_77/kernel/*
dtype0*
shape:��*!
shared_nameconv2d_77/kernel

$conv2d_77/kernel/Read/ReadVariableOpReadVariableOpconv2d_77/kernel*(
_output_shapes
:��*
dtype0
�
conv2d_76/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_76/bias/*
dtype0*
shape:�*
shared_nameconv2d_76/bias
n
"conv2d_76/bias/Read/ReadVariableOpReadVariableOpconv2d_76/bias*
_output_shapes	
:�*
dtype0
�
conv2d_76/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_76/kernel/*
dtype0*
shape:��*!
shared_nameconv2d_76/kernel

$conv2d_76/kernel/Read/ReadVariableOpReadVariableOpconv2d_76/kernel*(
_output_shapes
:��*
dtype0
�
conv2d_75/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_75/bias/*
dtype0*
shape:�*
shared_nameconv2d_75/bias
n
"conv2d_75/bias/Read/ReadVariableOpReadVariableOpconv2d_75/bias*
_output_shapes	
:�*
dtype0
�
conv2d_75/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_75/kernel/*
dtype0*
shape:F�*!
shared_nameconv2d_75/kernel
~
$conv2d_75/kernel/Read/ReadVariableOpReadVariableOpconv2d_75/kernel*'
_output_shapes
:F�*
dtype0
�
conv2d_74/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_74/bias/*
dtype0*
shape:F*
shared_nameconv2d_74/bias
m
"conv2d_74/bias/Read/ReadVariableOpReadVariableOpconv2d_74/bias*
_output_shapes
:F*
dtype0
�
conv2d_74/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_74/kernel/*
dtype0*
shape:F*!
shared_nameconv2d_74/kernel
}
$conv2d_74/kernel/Read/ReadVariableOpReadVariableOpconv2d_74/kernel*&
_output_shapes
:F*
dtype0
�
"serving_default_sequential_6_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_6_inputconv2d_74/kernelconv2d_74/biasconv2d_75/kernelconv2d_75/biasconv2d_76/kernelconv2d_76/biasconv2d_77/kernelconv2d_77/biasconv2d_78/kernelconv2d_78/biasconv2d_79/kernelconv2d_79/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_366748

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op*
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op*
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses* 
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias
 f_jit_compiled_convolution_op*
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel
tbias
 u_jit_compiled_convolution_op*
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses* 
�
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
~
(0
)1
72
83
F4
G5
U6
V7
d8
e9
s10
t11
�12
�13
�14
�15*
~
(0
)1
72
83
F4
G5
U6
V7
d8
e9
s10
t11
�12
�13
�14
�15*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

(0
)1*

(0
)1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_74/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_74/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

70
81*

70
81*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_75/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_75/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

F0
G1*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_76/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_76/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

U0
V1*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_77/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_77/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

d0
e1*

d0
e1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_78/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_78/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

s0
t1*

s0
t1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_79/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_79/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_30/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_31/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
z
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15*

�0
�1*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

0
1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_74/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_74/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_74/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_74/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_75/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_75/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_75/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_75/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_76/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_76/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_76/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_76/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_77/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_77/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_77/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_77/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_78/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_78/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_78/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_78/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_79/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_79/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_79/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_79/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_30/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_30/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_30/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_30/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_31/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_31/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_31/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_31/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_74/kernelconv2d_74/biasconv2d_75/kernelconv2d_75/biasconv2d_76/kernelconv2d_76/biasconv2d_77/kernelconv2d_77/biasconv2d_78/kernelconv2d_78/biasconv2d_79/kernelconv2d_79/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/bias	iterationlearning_rateAdam/m/conv2d_74/kernelAdam/v/conv2d_74/kernelAdam/m/conv2d_74/biasAdam/v/conv2d_74/biasAdam/m/conv2d_75/kernelAdam/v/conv2d_75/kernelAdam/m/conv2d_75/biasAdam/v/conv2d_75/biasAdam/m/conv2d_76/kernelAdam/v/conv2d_76/kernelAdam/m/conv2d_76/biasAdam/v/conv2d_76/biasAdam/m/conv2d_77/kernelAdam/v/conv2d_77/kernelAdam/m/conv2d_77/biasAdam/v/conv2d_77/biasAdam/m/conv2d_78/kernelAdam/v/conv2d_78/kernelAdam/m/conv2d_78/biasAdam/v/conv2d_78/biasAdam/m/conv2d_79/kernelAdam/v/conv2d_79/kernelAdam/m/conv2d_79/biasAdam/v/conv2d_79/biasAdam/m/dense_30/kernelAdam/v/dense_30/kernelAdam/m/dense_30/biasAdam/v/dense_30/biasAdam/m/dense_31/kernelAdam/v/dense_31/kernelAdam/m/dense_31/biasAdam/v/dense_31/biastotal_1count_1totalcountConst*C
Tin<
:28*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_367429
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_74/kernelconv2d_74/biasconv2d_75/kernelconv2d_75/biasconv2d_76/kernelconv2d_76/biasconv2d_77/kernelconv2d_77/biasconv2d_78/kernelconv2d_78/biasconv2d_79/kernelconv2d_79/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/bias	iterationlearning_rateAdam/m/conv2d_74/kernelAdam/v/conv2d_74/kernelAdam/m/conv2d_74/biasAdam/v/conv2d_74/biasAdam/m/conv2d_75/kernelAdam/v/conv2d_75/kernelAdam/m/conv2d_75/biasAdam/v/conv2d_75/biasAdam/m/conv2d_76/kernelAdam/v/conv2d_76/kernelAdam/m/conv2d_76/biasAdam/v/conv2d_76/biasAdam/m/conv2d_77/kernelAdam/v/conv2d_77/kernelAdam/m/conv2d_77/biasAdam/v/conv2d_77/biasAdam/m/conv2d_78/kernelAdam/v/conv2d_78/kernelAdam/m/conv2d_78/biasAdam/v/conv2d_78/biasAdam/m/conv2d_79/kernelAdam/v/conv2d_79/kernelAdam/m/conv2d_79/biasAdam/v/conv2d_79/biasAdam/m/dense_30/kernelAdam/v/dense_30/kernelAdam/m/dense_30/biasAdam/v/dense_30/biasAdam/m/dense_31/kernelAdam/v/dense_31/kernelAdam/m/dense_31/biasAdam/v/dense_31/biastotal_1count_1totalcount*B
Tin;
927*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_367600�
�
G
+__inference_resizing_2_layer_call_fn_367064

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_resizing_2_layer_call_and_return_conditional_losses_366261j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_78_layer_call_and_return_conditional_losses_366441

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
Y
#__inference__update_step_xla_366803
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
E__inference_conv2d_77_layer_call_and_return_conditional_losses_366938

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�H
�
I__inference_sequential_22_layer_call_and_return_conditional_losses_366557
sequential_6_input*
conv2d_74_366509:F
conv2d_74_366511:F+
conv2d_75_366515:F�
conv2d_75_366517:	�,
conv2d_76_366521:��
conv2d_76_366523:	�,
conv2d_77_366527:��
conv2d_77_366529:	�,
conv2d_78_366533:��
conv2d_78_366535:	�,
conv2d_79_366539:��
conv2d_79_366541:	�#
dense_30_366546:
��
dense_30_366548:	�"
dense_31_366551:	�
dense_31_366553:
identity��!conv2d_74/StatefulPartitionedCall�!conv2d_75/StatefulPartitionedCall�!conv2d_76/StatefulPartitionedCall�!conv2d_77/StatefulPartitionedCall�!conv2d_78/StatefulPartitionedCall�!conv2d_79/StatefulPartitionedCall� dense_30/StatefulPartitionedCall� dense_31/StatefulPartitionedCall�
sequential_6/PartitionedCallPartitionedCallsequential_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_366279�
!conv2d_74/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0conv2d_74_366509conv2d_74_366511*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������F*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_74_layer_call_and_return_conditional_losses_366373�
 max_pooling2d_74/PartitionedCallPartitionedCall*conv2d_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������F* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_366304�
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_74/PartitionedCall:output:0conv2d_75_366515conv2d_75_366517*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������}}�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_75_layer_call_and_return_conditional_losses_366390�
 max_pooling2d_75/PartitionedCallPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������>>�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_366314�
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_75/PartitionedCall:output:0conv2d_76_366521conv2d_76_366523*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<<�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_76_layer_call_and_return_conditional_losses_366407�
 max_pooling2d_76/PartitionedCallPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_366324�
!conv2d_77/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_76/PartitionedCall:output:0conv2d_77_366527conv2d_77_366529*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_77_layer_call_and_return_conditional_losses_366424�
 max_pooling2d_77/PartitionedCallPartitionedCall*conv2d_77/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_366334�
!conv2d_78/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_77/PartitionedCall:output:0conv2d_78_366533conv2d_78_366535*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_78_layer_call_and_return_conditional_losses_366441�
 max_pooling2d_78/PartitionedCallPartitionedCall*conv2d_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_366344�
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_78/PartitionedCall:output:0conv2d_79_366539conv2d_79_366541*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_79_layer_call_and_return_conditional_losses_366458�
 max_pooling2d_79/PartitionedCallPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_366354�
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_79/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_366470�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_30_366546dense_30_366548*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_366482�
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_366551dense_31_366553*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_366498x
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_74/StatefulPartitionedCall"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^conv2d_77/StatefulPartitionedCall"^conv2d_78/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2F
!conv2d_74/StatefulPartitionedCall!conv2d_74/StatefulPartitionedCall2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!conv2d_77/StatefulPartitionedCall!conv2d_77/StatefulPartitionedCall2F
!conv2d_78/StatefulPartitionedCall!conv2d_78/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_6_input:&"
 
_user_specified_name366509:&"
 
_user_specified_name366511:&"
 
_user_specified_name366515:&"
 
_user_specified_name366517:&"
 
_user_specified_name366521:&"
 
_user_specified_name366523:&"
 
_user_specified_name366527:&"
 
_user_specified_name366529:&	"
 
_user_specified_name366533:&
"
 
_user_specified_name366535:&"
 
_user_specified_name366539:&"
 
_user_specified_name366541:&"
 
_user_specified_name366546:&"
 
_user_specified_name366548:&"
 
_user_specified_name366551:&"
 
_user_specified_name366553
�
L
#__inference__update_step_xla_366778
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
b
F__inference_resizing_2_layer_call_and_return_conditional_losses_367070

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
Y
#__inference__update_step_xla_366783
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
L__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_366354

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_flatten_15_layer_call_and_return_conditional_losses_367019

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_366344

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_77_layer_call_and_return_conditional_losses_366424

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv2d_77_layer_call_fn_366927

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_77_layer_call_and_return_conditional_losses_366424x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name366921:&"
 
_user_specified_name366923
�
�
*__inference_conv2d_78_layer_call_fn_366957

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_78_layer_call_and_return_conditional_losses_366441x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name366951:&"
 
_user_specified_name366953
�
c
G__inference_rescaling_2_layer_call_and_return_conditional_losses_366270

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_76_layer_call_and_return_conditional_losses_366407

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<<�*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<<�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������<<�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������<<�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������>>�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������>>�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
c
G__inference_rescaling_2_layer_call_and_return_conditional_losses_367083

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
G
+__inference_flatten_15_layer_call_fn_367013

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_366470a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_366314

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
H
,__inference_rescaling_2_layer_call_fn_367075

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_rescaling_2_layer_call_and_return_conditional_losses_366270j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
L
#__inference__update_step_xla_366788
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�	
n
H__inference_sequential_6_layer_call_and_return_conditional_losses_366273
resizing_2_input
identity�
resizing_2/PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_resizing_2_layer_call_and_return_conditional_losses_366261�
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_rescaling_2_layer_call_and_return_conditional_losses_366270v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:c _
1
_output_shapes
:�����������
*
_user_specified_nameresizing_2_input
�
�
)__inference_dense_31_layer_call_fn_367048

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_366498o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name367042:&"
 
_user_specified_name367044
�
M
1__inference_max_pooling2d_79_layer_call_fn_367003

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_366354�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_75_layer_call_and_return_conditional_losses_366878

inputs9
conv2d_readvariableop_resource:F�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:F�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������}}�*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������}}�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������}}�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������}}�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������F: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������F
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_366304

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_30_layer_call_and_return_conditional_losses_366482

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
M
1__inference_max_pooling2d_77_layer_call_fn_366943

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_366334�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
L
#__inference__update_step_xla_366768
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
X
#__inference__update_step_xla_366763
gradient#
variable:F�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:F�: *
	_noinline(:Q M
'
_output_shapes
:F�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
L__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_366948

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_76_layer_call_and_return_conditional_losses_366908

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<<�*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<<�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������<<�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������<<�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������>>�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������>>�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
#__inference__update_step_xla_366753
gradient"
variable:F*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:F: *
	_noinline(:P L
&
_output_shapes
:F
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_366918

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_366334

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
Y
#__inference__update_step_xla_366793
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
M
1__inference_max_pooling2d_74_layer_call_fn_366853

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_366304�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_74_layer_call_fn_366837

inputs!
unknown:F
	unknown_0:F
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������F*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_74_layer_call_and_return_conditional_losses_366373y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������F<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:&"
 
_user_specified_name366831:&"
 
_user_specified_name366833
�
L
#__inference__update_step_xla_366798
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
Y
#__inference__update_step_xla_366773
gradient$
variable:��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:��: *
	_noinline(:R N
(
_output_shapes
:��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
S
-__inference_sequential_6_layer_call_fn_366284
resizing_2_input
identity�
PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_366273j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:c _
1
_output_shapes
:�����������
*
_user_specified_nameresizing_2_input
��
�"
"__inference__traced_restore_367600
file_prefix;
!assignvariableop_conv2d_74_kernel:F/
!assignvariableop_1_conv2d_74_bias:F>
#assignvariableop_2_conv2d_75_kernel:F�0
!assignvariableop_3_conv2d_75_bias:	�?
#assignvariableop_4_conv2d_76_kernel:��0
!assignvariableop_5_conv2d_76_bias:	�?
#assignvariableop_6_conv2d_77_kernel:��0
!assignvariableop_7_conv2d_77_bias:	�?
#assignvariableop_8_conv2d_78_kernel:��0
!assignvariableop_9_conv2d_78_bias:	�@
$assignvariableop_10_conv2d_79_kernel:��1
"assignvariableop_11_conv2d_79_bias:	�7
#assignvariableop_12_dense_30_kernel:
��0
!assignvariableop_13_dense_30_bias:	�6
#assignvariableop_14_dense_31_kernel:	�/
!assignvariableop_15_dense_31_bias:'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: E
+assignvariableop_18_adam_m_conv2d_74_kernel:FE
+assignvariableop_19_adam_v_conv2d_74_kernel:F7
)assignvariableop_20_adam_m_conv2d_74_bias:F7
)assignvariableop_21_adam_v_conv2d_74_bias:FF
+assignvariableop_22_adam_m_conv2d_75_kernel:F�F
+assignvariableop_23_adam_v_conv2d_75_kernel:F�8
)assignvariableop_24_adam_m_conv2d_75_bias:	�8
)assignvariableop_25_adam_v_conv2d_75_bias:	�G
+assignvariableop_26_adam_m_conv2d_76_kernel:��G
+assignvariableop_27_adam_v_conv2d_76_kernel:��8
)assignvariableop_28_adam_m_conv2d_76_bias:	�8
)assignvariableop_29_adam_v_conv2d_76_bias:	�G
+assignvariableop_30_adam_m_conv2d_77_kernel:��G
+assignvariableop_31_adam_v_conv2d_77_kernel:��8
)assignvariableop_32_adam_m_conv2d_77_bias:	�8
)assignvariableop_33_adam_v_conv2d_77_bias:	�G
+assignvariableop_34_adam_m_conv2d_78_kernel:��G
+assignvariableop_35_adam_v_conv2d_78_kernel:��8
)assignvariableop_36_adam_m_conv2d_78_bias:	�8
)assignvariableop_37_adam_v_conv2d_78_bias:	�G
+assignvariableop_38_adam_m_conv2d_79_kernel:��G
+assignvariableop_39_adam_v_conv2d_79_kernel:��8
)assignvariableop_40_adam_m_conv2d_79_bias:	�8
)assignvariableop_41_adam_v_conv2d_79_bias:	�>
*assignvariableop_42_adam_m_dense_30_kernel:
��>
*assignvariableop_43_adam_v_dense_30_kernel:
��7
(assignvariableop_44_adam_m_dense_30_bias:	�7
(assignvariableop_45_adam_v_dense_30_bias:	�=
*assignvariableop_46_adam_m_dense_31_kernel:	�=
*assignvariableop_47_adam_v_dense_31_kernel:	�6
(assignvariableop_48_adam_m_dense_31_bias:6
(assignvariableop_49_adam_v_dense_31_bias:%
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: 
identity_55��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
value�B�7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_74_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_74_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_75_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_75_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_76_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_76_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_77_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_77_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_78_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_78_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_79_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_79_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_30_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_30_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_31_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_31_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_m_conv2d_74_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_v_conv2d_74_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_m_conv2d_74_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_v_conv2d_74_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_m_conv2d_75_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_v_conv2d_75_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_m_conv2d_75_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_v_conv2d_75_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_m_conv2d_76_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_v_conv2d_76_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_conv2d_76_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_conv2d_76_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_m_conv2d_77_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_v_conv2d_77_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_m_conv2d_77_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_v_conv2d_77_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_m_conv2d_78_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_v_conv2d_78_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_conv2d_78_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_conv2d_78_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_m_conv2d_79_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_v_conv2d_79_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_conv2d_79_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_conv2d_79_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_m_dense_30_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_v_dense_30_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_m_dense_30_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_v_dense_30_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_m_dense_31_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_v_dense_31_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_m_dense_31_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_v_dense_31_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �	
Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: �	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_55Identity_55:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesp
n: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
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
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_74/kernel:.*
(
_user_specified_nameconv2d_74/bias:0,
*
_user_specified_nameconv2d_75/kernel:.*
(
_user_specified_nameconv2d_75/bias:0,
*
_user_specified_nameconv2d_76/kernel:.*
(
_user_specified_nameconv2d_76/bias:0,
*
_user_specified_nameconv2d_77/kernel:.*
(
_user_specified_nameconv2d_77/bias:0	,
*
_user_specified_nameconv2d_78/kernel:.
*
(
_user_specified_nameconv2d_78/bias:0,
*
_user_specified_nameconv2d_79/kernel:.*
(
_user_specified_nameconv2d_79/bias:/+
)
_user_specified_namedense_30/kernel:-)
'
_user_specified_namedense_30/bias:/+
)
_user_specified_namedense_31/kernel:-)
'
_user_specified_namedense_31/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv2d_74/kernel:73
1
_user_specified_nameAdam/v/conv2d_74/kernel:51
/
_user_specified_nameAdam/m/conv2d_74/bias:51
/
_user_specified_nameAdam/v/conv2d_74/bias:73
1
_user_specified_nameAdam/m/conv2d_75/kernel:73
1
_user_specified_nameAdam/v/conv2d_75/kernel:51
/
_user_specified_nameAdam/m/conv2d_75/bias:51
/
_user_specified_nameAdam/v/conv2d_75/bias:73
1
_user_specified_nameAdam/m/conv2d_76/kernel:73
1
_user_specified_nameAdam/v/conv2d_76/kernel:51
/
_user_specified_nameAdam/m/conv2d_76/bias:51
/
_user_specified_nameAdam/v/conv2d_76/bias:73
1
_user_specified_nameAdam/m/conv2d_77/kernel:7 3
1
_user_specified_nameAdam/v/conv2d_77/kernel:5!1
/
_user_specified_nameAdam/m/conv2d_77/bias:5"1
/
_user_specified_nameAdam/v/conv2d_77/bias:7#3
1
_user_specified_nameAdam/m/conv2d_78/kernel:7$3
1
_user_specified_nameAdam/v/conv2d_78/kernel:5%1
/
_user_specified_nameAdam/m/conv2d_78/bias:5&1
/
_user_specified_nameAdam/v/conv2d_78/bias:7'3
1
_user_specified_nameAdam/m/conv2d_79/kernel:7(3
1
_user_specified_nameAdam/v/conv2d_79/kernel:5)1
/
_user_specified_nameAdam/m/conv2d_79/bias:5*1
/
_user_specified_nameAdam/v/conv2d_79/bias:6+2
0
_user_specified_nameAdam/m/dense_30/kernel:6,2
0
_user_specified_nameAdam/v/dense_30/kernel:4-0
.
_user_specified_nameAdam/m/dense_30/bias:4.0
.
_user_specified_nameAdam/v/dense_30/bias:6/2
0
_user_specified_nameAdam/m/dense_31/kernel:602
0
_user_specified_nameAdam/v/dense_31/kernel:410
.
_user_specified_nameAdam/m/dense_31/bias:420
.
_user_specified_nameAdam/v/dense_31/bias:'3#
!
_user_specified_name	total_1:'4#
!
_user_specified_name	count_1:%5!

_user_specified_nametotal:%6!

_user_specified_namecount
�
�
*__inference_conv2d_79_layer_call_fn_366987

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_79_layer_call_and_return_conditional_losses_366458x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name366981:&"
 
_user_specified_name366983
�
Q
#__inference__update_step_xla_366813
gradient
variable:
��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
��: *
	_noinline(:J F
 
_output_shapes
:
��
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
.__inference_sequential_22_layer_call_fn_366631
sequential_6_input!
unknown:F
	unknown_0:F$
	unknown_1:F�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_366557o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_6_input:&"
 
_user_specified_name366597:&"
 
_user_specified_name366599:&"
 
_user_specified_name366601:&"
 
_user_specified_name366603:&"
 
_user_specified_name366605:&"
 
_user_specified_name366607:&"
 
_user_specified_name366609:&"
 
_user_specified_name366611:&	"
 
_user_specified_name366613:&
"
 
_user_specified_name366615:&"
 
_user_specified_name366617:&"
 
_user_specified_name366619:&"
 
_user_specified_name366621:&"
 
_user_specified_name366623:&"
 
_user_specified_name366625:&"
 
_user_specified_name366627
�

�
D__inference_dense_31_layer_call_and_return_conditional_losses_366498

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
D__inference_dense_30_layer_call_and_return_conditional_losses_367039

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv2d_75_layer_call_fn_366867

inputs"
unknown:F�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������}}�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_75_layer_call_and_return_conditional_losses_366390x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������}}�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������F: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������F
 
_user_specified_nameinputs:&"
 
_user_specified_name366861:&"
 
_user_specified_name366863
�
L
#__inference__update_step_xla_366818
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
b
F__inference_resizing_2_layer_call_and_return_conditional_losses_366261

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_74_layer_call_and_return_conditional_losses_366848

inputs8
conv2d_readvariableop_resource:F-
biasadd_readvariableop_resource:F
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:F*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������F*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:F*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������FZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������Fk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������FS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
P
#__inference__update_step_xla_366823
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�: *
	_noinline(:I E

_output_shapes
:	�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
E__inference_conv2d_78_layer_call_and_return_conditional_losses_366968

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
$__inference_signature_wrapper_366748
sequential_6_input!
unknown:F
	unknown_0:F$
	unknown_1:F�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_366253o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_6_input:&"
 
_user_specified_name366714:&"
 
_user_specified_name366716:&"
 
_user_specified_name366718:&"
 
_user_specified_name366720:&"
 
_user_specified_name366722:&"
 
_user_specified_name366724:&"
 
_user_specified_name366726:&"
 
_user_specified_name366728:&	"
 
_user_specified_name366730:&
"
 
_user_specified_name366732:&"
 
_user_specified_name366734:&"
 
_user_specified_name366736:&"
 
_user_specified_name366738:&"
 
_user_specified_name366740:&"
 
_user_specified_name366742:&"
 
_user_specified_name366744
�H
�
I__inference_sequential_22_layer_call_and_return_conditional_losses_366505
sequential_6_input*
conv2d_74_366374:F
conv2d_74_366376:F+
conv2d_75_366391:F�
conv2d_75_366393:	�,
conv2d_76_366408:��
conv2d_76_366410:	�,
conv2d_77_366425:��
conv2d_77_366427:	�,
conv2d_78_366442:��
conv2d_78_366444:	�,
conv2d_79_366459:��
conv2d_79_366461:	�#
dense_30_366483:
��
dense_30_366485:	�"
dense_31_366499:	�
dense_31_366501:
identity��!conv2d_74/StatefulPartitionedCall�!conv2d_75/StatefulPartitionedCall�!conv2d_76/StatefulPartitionedCall�!conv2d_77/StatefulPartitionedCall�!conv2d_78/StatefulPartitionedCall�!conv2d_79/StatefulPartitionedCall� dense_30/StatefulPartitionedCall� dense_31/StatefulPartitionedCall�
sequential_6/PartitionedCallPartitionedCallsequential_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_366273�
!conv2d_74/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0conv2d_74_366374conv2d_74_366376*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������F*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_74_layer_call_and_return_conditional_losses_366373�
 max_pooling2d_74/PartitionedCallPartitionedCall*conv2d_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������F* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_366304�
!conv2d_75/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_74/PartitionedCall:output:0conv2d_75_366391conv2d_75_366393*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������}}�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_75_layer_call_and_return_conditional_losses_366390�
 max_pooling2d_75/PartitionedCallPartitionedCall*conv2d_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������>>�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_366314�
!conv2d_76/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_75/PartitionedCall:output:0conv2d_76_366408conv2d_76_366410*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<<�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_76_layer_call_and_return_conditional_losses_366407�
 max_pooling2d_76/PartitionedCallPartitionedCall*conv2d_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_366324�
!conv2d_77/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_76/PartitionedCall:output:0conv2d_77_366425conv2d_77_366427*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_77_layer_call_and_return_conditional_losses_366424�
 max_pooling2d_77/PartitionedCallPartitionedCall*conv2d_77/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_366334�
!conv2d_78/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_77/PartitionedCall:output:0conv2d_78_366442conv2d_78_366444*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_78_layer_call_and_return_conditional_losses_366441�
 max_pooling2d_78/PartitionedCallPartitionedCall*conv2d_78/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_366344�
!conv2d_79/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_78/PartitionedCall:output:0conv2d_79_366459conv2d_79_366461*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_79_layer_call_and_return_conditional_losses_366458�
 max_pooling2d_79/PartitionedCallPartitionedCall*conv2d_79/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_366354�
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_79/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_15_layer_call_and_return_conditional_losses_366470�
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_30_366483dense_30_366485*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_366482�
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_366499dense_31_366501*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_366498x
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_74/StatefulPartitionedCall"^conv2d_75/StatefulPartitionedCall"^conv2d_76/StatefulPartitionedCall"^conv2d_77/StatefulPartitionedCall"^conv2d_78/StatefulPartitionedCall"^conv2d_79/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2F
!conv2d_74/StatefulPartitionedCall!conv2d_74/StatefulPartitionedCall2F
!conv2d_75/StatefulPartitionedCall!conv2d_75/StatefulPartitionedCall2F
!conv2d_76/StatefulPartitionedCall!conv2d_76/StatefulPartitionedCall2F
!conv2d_77/StatefulPartitionedCall!conv2d_77/StatefulPartitionedCall2F
!conv2d_78/StatefulPartitionedCall!conv2d_78/StatefulPartitionedCall2F
!conv2d_79/StatefulPartitionedCall!conv2d_79/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_6_input:&"
 
_user_specified_name366374:&"
 
_user_specified_name366376:&"
 
_user_specified_name366391:&"
 
_user_specified_name366393:&"
 
_user_specified_name366408:&"
 
_user_specified_name366410:&"
 
_user_specified_name366425:&"
 
_user_specified_name366427:&	"
 
_user_specified_name366442:&
"
 
_user_specified_name366444:&"
 
_user_specified_name366459:&"
 
_user_specified_name366461:&"
 
_user_specified_name366483:&"
 
_user_specified_name366485:&"
 
_user_specified_name366499:&"
 
_user_specified_name366501
��
�2
__inference__traced_save_367429
file_prefixA
'read_disablecopyonread_conv2d_74_kernel:F5
'read_1_disablecopyonread_conv2d_74_bias:FD
)read_2_disablecopyonread_conv2d_75_kernel:F�6
'read_3_disablecopyonread_conv2d_75_bias:	�E
)read_4_disablecopyonread_conv2d_76_kernel:��6
'read_5_disablecopyonread_conv2d_76_bias:	�E
)read_6_disablecopyonread_conv2d_77_kernel:��6
'read_7_disablecopyonread_conv2d_77_bias:	�E
)read_8_disablecopyonread_conv2d_78_kernel:��6
'read_9_disablecopyonread_conv2d_78_bias:	�F
*read_10_disablecopyonread_conv2d_79_kernel:��7
(read_11_disablecopyonread_conv2d_79_bias:	�=
)read_12_disablecopyonread_dense_30_kernel:
��6
'read_13_disablecopyonread_dense_30_bias:	�<
)read_14_disablecopyonread_dense_31_kernel:	�5
'read_15_disablecopyonread_dense_31_bias:-
#read_16_disablecopyonread_iteration:	 1
'read_17_disablecopyonread_learning_rate: K
1read_18_disablecopyonread_adam_m_conv2d_74_kernel:FK
1read_19_disablecopyonread_adam_v_conv2d_74_kernel:F=
/read_20_disablecopyonread_adam_m_conv2d_74_bias:F=
/read_21_disablecopyonread_adam_v_conv2d_74_bias:FL
1read_22_disablecopyonread_adam_m_conv2d_75_kernel:F�L
1read_23_disablecopyonread_adam_v_conv2d_75_kernel:F�>
/read_24_disablecopyonread_adam_m_conv2d_75_bias:	�>
/read_25_disablecopyonread_adam_v_conv2d_75_bias:	�M
1read_26_disablecopyonread_adam_m_conv2d_76_kernel:��M
1read_27_disablecopyonread_adam_v_conv2d_76_kernel:��>
/read_28_disablecopyonread_adam_m_conv2d_76_bias:	�>
/read_29_disablecopyonread_adam_v_conv2d_76_bias:	�M
1read_30_disablecopyonread_adam_m_conv2d_77_kernel:��M
1read_31_disablecopyonread_adam_v_conv2d_77_kernel:��>
/read_32_disablecopyonread_adam_m_conv2d_77_bias:	�>
/read_33_disablecopyonread_adam_v_conv2d_77_bias:	�M
1read_34_disablecopyonread_adam_m_conv2d_78_kernel:��M
1read_35_disablecopyonread_adam_v_conv2d_78_kernel:��>
/read_36_disablecopyonread_adam_m_conv2d_78_bias:	�>
/read_37_disablecopyonread_adam_v_conv2d_78_bias:	�M
1read_38_disablecopyonread_adam_m_conv2d_79_kernel:��M
1read_39_disablecopyonread_adam_v_conv2d_79_kernel:��>
/read_40_disablecopyonread_adam_m_conv2d_79_bias:	�>
/read_41_disablecopyonread_adam_v_conv2d_79_bias:	�D
0read_42_disablecopyonread_adam_m_dense_30_kernel:
��D
0read_43_disablecopyonread_adam_v_dense_30_kernel:
��=
.read_44_disablecopyonread_adam_m_dense_30_bias:	�=
.read_45_disablecopyonread_adam_v_dense_30_bias:	�C
0read_46_disablecopyonread_adam_m_dense_31_kernel:	�C
0read_47_disablecopyonread_adam_v_dense_31_kernel:	�<
.read_48_disablecopyonread_adam_m_dense_31_bias:<
.read_49_disablecopyonread_adam_v_dense_31_bias:+
!read_50_disablecopyonread_total_1: +
!read_51_disablecopyonread_count_1: )
read_52_disablecopyonread_total: )
read_53_disablecopyonread_count: 
savev2_const
identity_109��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_74_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_74_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:F*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:Fi

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:F{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_74_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_74_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:F*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:F_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:F}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_75_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_75_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:F�*
dtype0v

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:F�l

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*'
_output_shapes
:F�{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_75_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_75_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_76_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_76_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0w

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��m

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*(
_output_shapes
:��{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_76_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_76_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_77_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_77_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0x
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*(
_output_shapes
:��{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_77_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_77_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_78_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_78_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0x
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*(
_output_shapes
:��{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_78_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_78_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_conv2d_79_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_conv2d_79_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*(
_output_shapes
:��}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_conv2d_79_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_conv2d_79_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_dense_30_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_dense_30_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_dense_30_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_dense_30_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_dense_31_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_dense_31_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	�|
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_dense_31_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_dense_31_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_16/DisableCopyOnReadDisableCopyOnRead#read_16_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp#read_16_disablecopyonread_iteration^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_learning_rate^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead1read_18_disablecopyonread_adam_m_conv2d_74_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp1read_18_disablecopyonread_adam_m_conv2d_74_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:F*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:Fm
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:F�
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_adam_v_conv2d_74_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_adam_v_conv2d_74_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:F*
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:Fm
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
:F�
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_m_conv2d_74_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_m_conv2d_74_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:F*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Fa
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:F�
Read_21/DisableCopyOnReadDisableCopyOnRead/read_21_disablecopyonread_adam_v_conv2d_74_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp/read_21_disablecopyonread_adam_v_conv2d_74_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:F*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Fa
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:F�
Read_22/DisableCopyOnReadDisableCopyOnRead1read_22_disablecopyonread_adam_m_conv2d_75_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp1read_22_disablecopyonread_adam_m_conv2d_75_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:F�*
dtype0x
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:F�n
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*'
_output_shapes
:F��
Read_23/DisableCopyOnReadDisableCopyOnRead1read_23_disablecopyonread_adam_v_conv2d_75_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp1read_23_disablecopyonread_adam_v_conv2d_75_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:F�*
dtype0x
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:F�n
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*'
_output_shapes
:F��
Read_24/DisableCopyOnReadDisableCopyOnRead/read_24_disablecopyonread_adam_m_conv2d_75_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp/read_24_disablecopyonread_adam_m_conv2d_75_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_25/DisableCopyOnReadDisableCopyOnRead/read_25_disablecopyonread_adam_v_conv2d_75_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp/read_25_disablecopyonread_adam_v_conv2d_75_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_26/DisableCopyOnReadDisableCopyOnRead1read_26_disablecopyonread_adam_m_conv2d_76_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp1read_26_disablecopyonread_adam_m_conv2d_76_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_27/DisableCopyOnReadDisableCopyOnRead1read_27_disablecopyonread_adam_v_conv2d_76_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp1read_27_disablecopyonread_adam_v_conv2d_76_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_m_conv2d_76_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_m_conv2d_76_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_29/DisableCopyOnReadDisableCopyOnRead/read_29_disablecopyonread_adam_v_conv2d_76_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp/read_29_disablecopyonread_adam_v_conv2d_76_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_30/DisableCopyOnReadDisableCopyOnRead1read_30_disablecopyonread_adam_m_conv2d_77_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp1read_30_disablecopyonread_adam_m_conv2d_77_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_31/DisableCopyOnReadDisableCopyOnRead1read_31_disablecopyonread_adam_v_conv2d_77_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp1read_31_disablecopyonread_adam_v_conv2d_77_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_adam_m_conv2d_77_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_adam_m_conv2d_77_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_33/DisableCopyOnReadDisableCopyOnRead/read_33_disablecopyonread_adam_v_conv2d_77_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp/read_33_disablecopyonread_adam_v_conv2d_77_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_34/DisableCopyOnReadDisableCopyOnRead1read_34_disablecopyonread_adam_m_conv2d_78_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp1read_34_disablecopyonread_adam_m_conv2d_78_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_adam_v_conv2d_78_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_adam_v_conv2d_78_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_36/DisableCopyOnReadDisableCopyOnRead/read_36_disablecopyonread_adam_m_conv2d_78_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp/read_36_disablecopyonread_adam_m_conv2d_78_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_37/DisableCopyOnReadDisableCopyOnRead/read_37_disablecopyonread_adam_v_conv2d_78_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp/read_37_disablecopyonread_adam_v_conv2d_78_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_38/DisableCopyOnReadDisableCopyOnRead1read_38_disablecopyonread_adam_m_conv2d_79_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp1read_38_disablecopyonread_adam_m_conv2d_79_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_39/DisableCopyOnReadDisableCopyOnRead1read_39_disablecopyonread_adam_v_conv2d_79_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp1read_39_disablecopyonread_adam_v_conv2d_79_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_40/DisableCopyOnReadDisableCopyOnRead/read_40_disablecopyonread_adam_m_conv2d_79_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp/read_40_disablecopyonread_adam_m_conv2d_79_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_adam_v_conv2d_79_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_adam_v_conv2d_79_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_42/DisableCopyOnReadDisableCopyOnRead0read_42_disablecopyonread_adam_m_dense_30_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp0read_42_disablecopyonread_adam_m_dense_30_kernel^Read_42/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_43/DisableCopyOnReadDisableCopyOnRead0read_43_disablecopyonread_adam_v_dense_30_kernel"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp0read_43_disablecopyonread_adam_v_dense_30_kernel^Read_43/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_44/DisableCopyOnReadDisableCopyOnRead.read_44_disablecopyonread_adam_m_dense_30_bias"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp.read_44_disablecopyonread_adam_m_dense_30_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_45/DisableCopyOnReadDisableCopyOnRead.read_45_disablecopyonread_adam_v_dense_30_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp.read_45_disablecopyonread_adam_v_dense_30_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_46/DisableCopyOnReadDisableCopyOnRead0read_46_disablecopyonread_adam_m_dense_31_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp0read_46_disablecopyonread_adam_m_dense_31_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_47/DisableCopyOnReadDisableCopyOnRead0read_47_disablecopyonread_adam_v_dense_31_kernel"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp0read_47_disablecopyonread_adam_v_dense_31_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_48/DisableCopyOnReadDisableCopyOnRead.read_48_disablecopyonread_adam_m_dense_31_bias"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp.read_48_disablecopyonread_adam_m_dense_31_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead.read_49_disablecopyonread_adam_v_dense_31_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp.read_49_disablecopyonread_adam_v_dense_31_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_50/DisableCopyOnReadDisableCopyOnRead!read_50_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp!read_50_disablecopyonread_total_1^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_51/DisableCopyOnReadDisableCopyOnRead!read_51_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp!read_51_disablecopyonread_count_1^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_52/DisableCopyOnReadDisableCopyOnReadread_52_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOpread_52_disablecopyonread_total^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_53/DisableCopyOnReadDisableCopyOnReadread_53_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOpread_53_disablecopyonread_count^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
value�B�7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*�
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *E
dtypes;
927	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_108Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_109IdentityIdentity_108:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_109Identity_109:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_74/kernel:.*
(
_user_specified_nameconv2d_74/bias:0,
*
_user_specified_nameconv2d_75/kernel:.*
(
_user_specified_nameconv2d_75/bias:0,
*
_user_specified_nameconv2d_76/kernel:.*
(
_user_specified_nameconv2d_76/bias:0,
*
_user_specified_nameconv2d_77/kernel:.*
(
_user_specified_nameconv2d_77/bias:0	,
*
_user_specified_nameconv2d_78/kernel:.
*
(
_user_specified_nameconv2d_78/bias:0,
*
_user_specified_nameconv2d_79/kernel:.*
(
_user_specified_nameconv2d_79/bias:/+
)
_user_specified_namedense_30/kernel:-)
'
_user_specified_namedense_30/bias:/+
)
_user_specified_namedense_31/kernel:-)
'
_user_specified_namedense_31/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv2d_74/kernel:73
1
_user_specified_nameAdam/v/conv2d_74/kernel:51
/
_user_specified_nameAdam/m/conv2d_74/bias:51
/
_user_specified_nameAdam/v/conv2d_74/bias:73
1
_user_specified_nameAdam/m/conv2d_75/kernel:73
1
_user_specified_nameAdam/v/conv2d_75/kernel:51
/
_user_specified_nameAdam/m/conv2d_75/bias:51
/
_user_specified_nameAdam/v/conv2d_75/bias:73
1
_user_specified_nameAdam/m/conv2d_76/kernel:73
1
_user_specified_nameAdam/v/conv2d_76/kernel:51
/
_user_specified_nameAdam/m/conv2d_76/bias:51
/
_user_specified_nameAdam/v/conv2d_76/bias:73
1
_user_specified_nameAdam/m/conv2d_77/kernel:7 3
1
_user_specified_nameAdam/v/conv2d_77/kernel:5!1
/
_user_specified_nameAdam/m/conv2d_77/bias:5"1
/
_user_specified_nameAdam/v/conv2d_77/bias:7#3
1
_user_specified_nameAdam/m/conv2d_78/kernel:7$3
1
_user_specified_nameAdam/v/conv2d_78/kernel:5%1
/
_user_specified_nameAdam/m/conv2d_78/bias:5&1
/
_user_specified_nameAdam/v/conv2d_78/bias:7'3
1
_user_specified_nameAdam/m/conv2d_79/kernel:7(3
1
_user_specified_nameAdam/v/conv2d_79/kernel:5)1
/
_user_specified_nameAdam/m/conv2d_79/bias:5*1
/
_user_specified_nameAdam/v/conv2d_79/bias:6+2
0
_user_specified_nameAdam/m/dense_30/kernel:6,2
0
_user_specified_nameAdam/v/dense_30/kernel:4-0
.
_user_specified_nameAdam/m/dense_30/bias:4.0
.
_user_specified_nameAdam/v/dense_30/bias:6/2
0
_user_specified_nameAdam/m/dense_31/kernel:602
0
_user_specified_nameAdam/v/dense_31/kernel:410
.
_user_specified_nameAdam/m/dense_31/bias:420
.
_user_specified_nameAdam/v/dense_31/bias:'3#
!
_user_specified_name	total_1:'4#
!
_user_specified_name	count_1:%5!

_user_specified_nametotal:%6!

_user_specified_namecount:=79

_output_shapes
: 

_user_specified_nameConst
�
�
)__inference_dense_30_layer_call_fn_367028

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_366482p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name367022:&"
 
_user_specified_name367024
�
�
E__inference_conv2d_75_layer_call_and_return_conditional_losses_366390

inputs9
conv2d_readvariableop_resource:F�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:F�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������}}�*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������}}�Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������}}�j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������}}�S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������F: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������F
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
n
H__inference_sequential_6_layer_call_and_return_conditional_losses_366279
resizing_2_input
identity�
resizing_2/PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_resizing_2_layer_call_and_return_conditional_losses_366261�
rescaling_2/PartitionedCallPartitionedCall#resizing_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_rescaling_2_layer_call_and_return_conditional_losses_366270v
IdentityIdentity$rescaling_2/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:c _
1
_output_shapes
:�����������
*
_user_specified_nameresizing_2_input
�
K
#__inference__update_step_xla_366758
gradient
variable:F*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:F: *
	_noinline(:D @

_output_shapes
:F
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
L__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_367008

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_79_layer_call_and_return_conditional_losses_366998

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_366858

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_31_layer_call_and_return_conditional_losses_367059

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
L
#__inference__update_step_xla_366808
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_366324

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_flatten_15_layer_call_and_return_conditional_losses_366470

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_76_layer_call_fn_366897

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������<<�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_76_layer_call_and_return_conditional_losses_366407x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������<<�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������>>�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������>>�
 
_user_specified_nameinputs:&"
 
_user_specified_name366891:&"
 
_user_specified_name366893
�
K
#__inference__update_step_xla_366828
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
S
-__inference_sequential_6_layer_call_fn_366289
resizing_2_input
identity�
PartitionedCallPartitionedCallresizing_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_366279j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:c _
1
_output_shapes
:�����������
*
_user_specified_nameresizing_2_input
�w
�
!__inference__wrapped_model_366253
sequential_6_inputP
6sequential_22_conv2d_74_conv2d_readvariableop_resource:FE
7sequential_22_conv2d_74_biasadd_readvariableop_resource:FQ
6sequential_22_conv2d_75_conv2d_readvariableop_resource:F�F
7sequential_22_conv2d_75_biasadd_readvariableop_resource:	�R
6sequential_22_conv2d_76_conv2d_readvariableop_resource:��F
7sequential_22_conv2d_76_biasadd_readvariableop_resource:	�R
6sequential_22_conv2d_77_conv2d_readvariableop_resource:��F
7sequential_22_conv2d_77_biasadd_readvariableop_resource:	�R
6sequential_22_conv2d_78_conv2d_readvariableop_resource:��F
7sequential_22_conv2d_78_biasadd_readvariableop_resource:	�R
6sequential_22_conv2d_79_conv2d_readvariableop_resource:��F
7sequential_22_conv2d_79_biasadd_readvariableop_resource:	�I
5sequential_22_dense_30_matmul_readvariableop_resource:
��E
6sequential_22_dense_30_biasadd_readvariableop_resource:	�H
5sequential_22_dense_31_matmul_readvariableop_resource:	�D
6sequential_22_dense_31_biasadd_readvariableop_resource:
identity��.sequential_22/conv2d_74/BiasAdd/ReadVariableOp�-sequential_22/conv2d_74/Conv2D/ReadVariableOp�.sequential_22/conv2d_75/BiasAdd/ReadVariableOp�-sequential_22/conv2d_75/Conv2D/ReadVariableOp�.sequential_22/conv2d_76/BiasAdd/ReadVariableOp�-sequential_22/conv2d_76/Conv2D/ReadVariableOp�.sequential_22/conv2d_77/BiasAdd/ReadVariableOp�-sequential_22/conv2d_77/Conv2D/ReadVariableOp�.sequential_22/conv2d_78/BiasAdd/ReadVariableOp�-sequential_22/conv2d_78/Conv2D/ReadVariableOp�.sequential_22/conv2d_79/BiasAdd/ReadVariableOp�-sequential_22/conv2d_79/Conv2D/ReadVariableOp�-sequential_22/dense_30/BiasAdd/ReadVariableOp�,sequential_22/dense_30/MatMul/ReadVariableOp�-sequential_22/dense_31/BiasAdd/ReadVariableOp�,sequential_22/dense_31/MatMul/ReadVariableOp�
1sequential_22/sequential_6/resizing_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
;sequential_22/sequential_6/resizing_2/resize/ResizeBilinearResizeBilinearsequential_6_input:sequential_22/sequential_6/resizing_2/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(r
-sequential_22/sequential_6/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;t
/sequential_22/sequential_6/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
*sequential_22/sequential_6/rescaling_2/mulMulLsequential_22/sequential_6/resizing_2/resize/ResizeBilinear:resized_images:06sequential_22/sequential_6/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:������������
*sequential_22/sequential_6/rescaling_2/addAddV2.sequential_22/sequential_6/rescaling_2/mul:z:08sequential_22/sequential_6/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
-sequential_22/conv2d_74/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_74_conv2d_readvariableop_resource*&
_output_shapes
:F*
dtype0�
sequential_22/conv2d_74/Conv2DConv2D.sequential_22/sequential_6/rescaling_2/add:z:05sequential_22/conv2d_74/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������F*
paddingVALID*
strides
�
.sequential_22/conv2d_74/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_74_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype0�
sequential_22/conv2d_74/BiasAddBiasAdd'sequential_22/conv2d_74/Conv2D:output:06sequential_22/conv2d_74/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������F�
sequential_22/conv2d_74/ReluRelu(sequential_22/conv2d_74/BiasAdd:output:0*
T0*1
_output_shapes
:�����������F�
&sequential_22/max_pooling2d_74/MaxPoolMaxPool*sequential_22/conv2d_74/Relu:activations:0*/
_output_shapes
:���������F*
ksize
*
paddingVALID*
strides
�
-sequential_22/conv2d_75/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_75_conv2d_readvariableop_resource*'
_output_shapes
:F�*
dtype0�
sequential_22/conv2d_75/Conv2DConv2D/sequential_22/max_pooling2d_74/MaxPool:output:05sequential_22/conv2d_75/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������}}�*
paddingVALID*
strides
�
.sequential_22/conv2d_75/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_75_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_22/conv2d_75/BiasAddBiasAdd'sequential_22/conv2d_75/Conv2D:output:06sequential_22/conv2d_75/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������}}��
sequential_22/conv2d_75/ReluRelu(sequential_22/conv2d_75/BiasAdd:output:0*
T0*0
_output_shapes
:���������}}��
&sequential_22/max_pooling2d_75/MaxPoolMaxPool*sequential_22/conv2d_75/Relu:activations:0*0
_output_shapes
:���������>>�*
ksize
*
paddingVALID*
strides
�
-sequential_22/conv2d_76/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_76_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential_22/conv2d_76/Conv2DConv2D/sequential_22/max_pooling2d_75/MaxPool:output:05sequential_22/conv2d_76/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<<�*
paddingVALID*
strides
�
.sequential_22/conv2d_76/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_76_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_22/conv2d_76/BiasAddBiasAdd'sequential_22/conv2d_76/Conv2D:output:06sequential_22/conv2d_76/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������<<��
sequential_22/conv2d_76/ReluRelu(sequential_22/conv2d_76/BiasAdd:output:0*
T0*0
_output_shapes
:���������<<��
&sequential_22/max_pooling2d_76/MaxPoolMaxPool*sequential_22/conv2d_76/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
-sequential_22/conv2d_77/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_77_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential_22/conv2d_77/Conv2DConv2D/sequential_22/max_pooling2d_76/MaxPool:output:05sequential_22/conv2d_77/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
.sequential_22/conv2d_77/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_77_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_22/conv2d_77/BiasAddBiasAdd'sequential_22/conv2d_77/Conv2D:output:06sequential_22/conv2d_77/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential_22/conv2d_77/ReluRelu(sequential_22/conv2d_77/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
&sequential_22/max_pooling2d_77/MaxPoolMaxPool*sequential_22/conv2d_77/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
-sequential_22/conv2d_78/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_78_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential_22/conv2d_78/Conv2DConv2D/sequential_22/max_pooling2d_77/MaxPool:output:05sequential_22/conv2d_78/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
.sequential_22/conv2d_78/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_78_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_22/conv2d_78/BiasAddBiasAdd'sequential_22/conv2d_78/Conv2D:output:06sequential_22/conv2d_78/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential_22/conv2d_78/ReluRelu(sequential_22/conv2d_78/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
&sequential_22/max_pooling2d_78/MaxPoolMaxPool*sequential_22/conv2d_78/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
-sequential_22/conv2d_79/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_79_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
sequential_22/conv2d_79/Conv2DConv2D/sequential_22/max_pooling2d_78/MaxPool:output:05sequential_22/conv2d_79/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
.sequential_22/conv2d_79/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_79_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_22/conv2d_79/BiasAddBiasAdd'sequential_22/conv2d_79/Conv2D:output:06sequential_22/conv2d_79/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
sequential_22/conv2d_79/ReluRelu(sequential_22/conv2d_79/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
&sequential_22/max_pooling2d_79/MaxPoolMaxPool*sequential_22/conv2d_79/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
o
sequential_22/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
 sequential_22/flatten_15/ReshapeReshape/sequential_22/max_pooling2d_79/MaxPool:output:0'sequential_22/flatten_15/Const:output:0*
T0*(
_output_shapes
:�����������
,sequential_22/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_30_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_22/dense_30/MatMulMatMul)sequential_22/flatten_15/Reshape:output:04sequential_22/dense_30/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_22/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_30_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_22/dense_30/BiasAddBiasAdd'sequential_22/dense_30/MatMul:product:05sequential_22/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
sequential_22/dense_30/ReluRelu'sequential_22/dense_30/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,sequential_22/dense_31/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_31_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_22/dense_31/MatMulMatMul)sequential_22/dense_30/Relu:activations:04sequential_22/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_22/dense_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_22/dense_31/BiasAddBiasAdd'sequential_22/dense_31/MatMul:product:05sequential_22/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_22/dense_31/SoftmaxSoftmax'sequential_22/dense_31/BiasAdd:output:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(sequential_22/dense_31/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^sequential_22/conv2d_74/BiasAdd/ReadVariableOp.^sequential_22/conv2d_74/Conv2D/ReadVariableOp/^sequential_22/conv2d_75/BiasAdd/ReadVariableOp.^sequential_22/conv2d_75/Conv2D/ReadVariableOp/^sequential_22/conv2d_76/BiasAdd/ReadVariableOp.^sequential_22/conv2d_76/Conv2D/ReadVariableOp/^sequential_22/conv2d_77/BiasAdd/ReadVariableOp.^sequential_22/conv2d_77/Conv2D/ReadVariableOp/^sequential_22/conv2d_78/BiasAdd/ReadVariableOp.^sequential_22/conv2d_78/Conv2D/ReadVariableOp/^sequential_22/conv2d_79/BiasAdd/ReadVariableOp.^sequential_22/conv2d_79/Conv2D/ReadVariableOp.^sequential_22/dense_30/BiasAdd/ReadVariableOp-^sequential_22/dense_30/MatMul/ReadVariableOp.^sequential_22/dense_31/BiasAdd/ReadVariableOp-^sequential_22/dense_31/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2`
.sequential_22/conv2d_74/BiasAdd/ReadVariableOp.sequential_22/conv2d_74/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_74/Conv2D/ReadVariableOp-sequential_22/conv2d_74/Conv2D/ReadVariableOp2`
.sequential_22/conv2d_75/BiasAdd/ReadVariableOp.sequential_22/conv2d_75/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_75/Conv2D/ReadVariableOp-sequential_22/conv2d_75/Conv2D/ReadVariableOp2`
.sequential_22/conv2d_76/BiasAdd/ReadVariableOp.sequential_22/conv2d_76/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_76/Conv2D/ReadVariableOp-sequential_22/conv2d_76/Conv2D/ReadVariableOp2`
.sequential_22/conv2d_77/BiasAdd/ReadVariableOp.sequential_22/conv2d_77/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_77/Conv2D/ReadVariableOp-sequential_22/conv2d_77/Conv2D/ReadVariableOp2`
.sequential_22/conv2d_78/BiasAdd/ReadVariableOp.sequential_22/conv2d_78/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_78/Conv2D/ReadVariableOp-sequential_22/conv2d_78/Conv2D/ReadVariableOp2`
.sequential_22/conv2d_79/BiasAdd/ReadVariableOp.sequential_22/conv2d_79/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_79/Conv2D/ReadVariableOp-sequential_22/conv2d_79/Conv2D/ReadVariableOp2^
-sequential_22/dense_30/BiasAdd/ReadVariableOp-sequential_22/dense_30/BiasAdd/ReadVariableOp2\
,sequential_22/dense_30/MatMul/ReadVariableOp,sequential_22/dense_30/MatMul/ReadVariableOp2^
-sequential_22/dense_31/BiasAdd/ReadVariableOp-sequential_22/dense_31/BiasAdd/ReadVariableOp2\
,sequential_22/dense_31/MatMul/ReadVariableOp,sequential_22/dense_31/MatMul/ReadVariableOp:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_6_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
M
1__inference_max_pooling2d_78_layer_call_fn_366973

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_366344�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_74_layer_call_and_return_conditional_losses_366373

inputs8
conv2d_readvariableop_resource:F-
biasadd_readvariableop_resource:F
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:F*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������F*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:F*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������FZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������Fk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������FS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_366978

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_79_layer_call_and_return_conditional_losses_366458

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_366888

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_75_layer_call_fn_366883

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_366314�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_76_layer_call_fn_366913

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_366324�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
.__inference_sequential_22_layer_call_fn_366594
sequential_6_input!
unknown:F
	unknown_0:F$
	unknown_1:F�
	unknown_2:	�%
	unknown_3:��
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_366505o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_6_input:&"
 
_user_specified_name366560:&"
 
_user_specified_name366562:&"
 
_user_specified_name366564:&"
 
_user_specified_name366566:&"
 
_user_specified_name366568:&"
 
_user_specified_name366570:&"
 
_user_specified_name366572:&"
 
_user_specified_name366574:&	"
 
_user_specified_name366576:&
"
 
_user_specified_name366578:&"
 
_user_specified_name366580:&"
 
_user_specified_name366582:&"
 
_user_specified_name366584:&"
 
_user_specified_name366586:&"
 
_user_specified_name366588:&"
 
_user_specified_name366590"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
[
sequential_6_inputE
$serving_default_sequential_6_input:0�����������<
dense_310
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias
 f_jit_compiled_convolution_op"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel
tbias
 u_jit_compiled_convolution_op"
_tf_keras_layer
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
�
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
(0
)1
72
83
F4
G5
U6
V7
d8
e9
s10
t11
�12
�13
�14
�15"
trackable_list_wrapper
�
(0
)1
72
83
F4
G5
U6
V7
d8
e9
s10
t11
�12
�13
�14
�15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_sequential_22_layer_call_fn_366594
.__inference_sequential_22_layer_call_fn_366631�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_sequential_22_layer_call_and_return_conditional_losses_366505
I__inference_sequential_22_layer_call_and_return_conditional_losses_366557�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
!__inference__wrapped_model_366253sequential_6_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
-__inference_sequential_6_layer_call_fn_366284
-__inference_sequential_6_layer_call_fn_366289�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
H__inference_sequential_6_layer_call_and_return_conditional_losses_366273
H__inference_sequential_6_layer_call_and_return_conditional_losses_366279�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_74_layer_call_fn_366837�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_74_layer_call_and_return_conditional_losses_366848�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(F2conv2d_74/kernel
:F2conv2d_74/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_74_layer_call_fn_366853�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_366858�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_75_layer_call_fn_366867�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_75_layer_call_and_return_conditional_losses_366878�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
+:)F�2conv2d_75/kernel
:�2conv2d_75/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_75_layer_call_fn_366883�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_366888�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_76_layer_call_fn_366897�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_76_layer_call_and_return_conditional_losses_366908�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*��2conv2d_76/kernel
:�2conv2d_76/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_76_layer_call_fn_366913�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_366918�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_77_layer_call_fn_366927�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_77_layer_call_and_return_conditional_losses_366938�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*��2conv2d_77/kernel
:�2conv2d_77/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_77_layer_call_fn_366943�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_366948�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_78_layer_call_fn_366957�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_78_layer_call_and_return_conditional_losses_366968�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*��2conv2d_78/kernel
:�2conv2d_78/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_78_layer_call_fn_366973�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_366978�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_79_layer_call_fn_366987�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_79_layer_call_and_return_conditional_losses_366998�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
,:*��2conv2d_79/kernel
:�2conv2d_79/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_79_layer_call_fn_367003�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_367008�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_15_layer_call_fn_367013�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_15_layer_call_and_return_conditional_losses_367019�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_30_layer_call_fn_367028�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_30_layer_call_and_return_conditional_losses_367039�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!
��2dense_30/kernel
:�2dense_30/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_31_layer_call_fn_367048�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_31_layer_call_and_return_conditional_losses_367059�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�2dense_31/kernel
:2dense_31/bias
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_22_layer_call_fn_366594sequential_6_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_22_layer_call_fn_366631sequential_6_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_22_layer_call_and_return_conditional_losses_366505sequential_6_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_22_layer_call_and_return_conditional_losses_366557sequential_6_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15"
trackable_list_wrapper
�	
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_152�
#__inference__update_step_xla_366753
#__inference__update_step_xla_366758
#__inference__update_step_xla_366763
#__inference__update_step_xla_366768
#__inference__update_step_xla_366773
#__inference__update_step_xla_366778
#__inference__update_step_xla_366783
#__inference__update_step_xla_366788
#__inference__update_step_xla_366793
#__inference__update_step_xla_366798
#__inference__update_step_xla_366803
#__inference__update_step_xla_366808
#__inference__update_step_xla_366813
#__inference__update_step_xla_366818
#__inference__update_step_xla_366823
#__inference__update_step_xla_366828�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13z�trace_14z�trace_15
�B�
$__inference_signature_wrapper_366748sequential_6_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 '

kwonlyargs�
jsequential_6_input
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_resizing_2_layer_call_fn_367064�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_resizing_2_layer_call_and_return_conditional_losses_367070�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_rescaling_2_layer_call_fn_367075�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_rescaling_2_layer_call_and_return_conditional_losses_367083�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_6_layer_call_fn_366284resizing_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_6_layer_call_fn_366289resizing_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_6_layer_call_and_return_conditional_losses_366273resizing_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_6_layer_call_and_return_conditional_losses_366279resizing_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_74_layer_call_fn_366837inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_74_layer_call_and_return_conditional_losses_366848inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_74_layer_call_fn_366853inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_366858inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_75_layer_call_fn_366867inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_75_layer_call_and_return_conditional_losses_366878inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_75_layer_call_fn_366883inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_366888inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_76_layer_call_fn_366897inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_76_layer_call_and_return_conditional_losses_366908inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_76_layer_call_fn_366913inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_366918inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_77_layer_call_fn_366927inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_77_layer_call_and_return_conditional_losses_366938inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_77_layer_call_fn_366943inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_366948inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_78_layer_call_fn_366957inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_78_layer_call_and_return_conditional_losses_366968inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_78_layer_call_fn_366973inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_366978inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_conv2d_79_layer_call_fn_366987inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_79_layer_call_and_return_conditional_losses_366998inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_79_layer_call_fn_367003inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_367008inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_flatten_15_layer_call_fn_367013inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_15_layer_call_and_return_conditional_losses_367019inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_30_layer_call_fn_367028inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_30_layer_call_and_return_conditional_losses_367039inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dense_31_layer_call_fn_367048inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_31_layer_call_and_return_conditional_losses_367059inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:-F2Adam/m/conv2d_74/kernel
/:-F2Adam/v/conv2d_74/kernel
!:F2Adam/m/conv2d_74/bias
!:F2Adam/v/conv2d_74/bias
0:.F�2Adam/m/conv2d_75/kernel
0:.F�2Adam/v/conv2d_75/kernel
": �2Adam/m/conv2d_75/bias
": �2Adam/v/conv2d_75/bias
1:/��2Adam/m/conv2d_76/kernel
1:/��2Adam/v/conv2d_76/kernel
": �2Adam/m/conv2d_76/bias
": �2Adam/v/conv2d_76/bias
1:/��2Adam/m/conv2d_77/kernel
1:/��2Adam/v/conv2d_77/kernel
": �2Adam/m/conv2d_77/bias
": �2Adam/v/conv2d_77/bias
1:/��2Adam/m/conv2d_78/kernel
1:/��2Adam/v/conv2d_78/kernel
": �2Adam/m/conv2d_78/bias
": �2Adam/v/conv2d_78/bias
1:/��2Adam/m/conv2d_79/kernel
1:/��2Adam/v/conv2d_79/kernel
": �2Adam/m/conv2d_79/bias
": �2Adam/v/conv2d_79/bias
(:&
��2Adam/m/dense_30/kernel
(:&
��2Adam/v/dense_30/kernel
!:�2Adam/m/dense_30/bias
!:�2Adam/v/dense_30/bias
':%	�2Adam/m/dense_31/kernel
':%	�2Adam/v/dense_31/kernel
 :2Adam/m/dense_31/bias
 :2Adam/v/dense_31/bias
�B�
#__inference__update_step_xla_366753gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366758gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366763gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366768gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366773gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366778gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366783gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366788gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366793gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366798gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366803gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366808gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366813gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366818gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366823gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_366828gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_resizing_2_layer_call_fn_367064inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_resizing_2_layer_call_and_return_conditional_losses_367070inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_rescaling_2_layer_call_fn_367075inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_rescaling_2_layer_call_and_return_conditional_losses_367083inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
#__inference__update_step_xla_366753~x�u
n�k
!�
gradientF
<�9	%�"
�F
�
p
` VariableSpec 
`�Ŵ���<
� "
 �
#__inference__update_step_xla_366758f`�]
V�S
�
gradientF
0�-	�
�F
�
p
` VariableSpec 
`�״���<
� "
 �
#__inference__update_step_xla_366763�z�w
p�m
"�
gradientF�
=�:	&�#
�F�
�
p
` VariableSpec 
`ࣴ���<
� "
 �
#__inference__update_step_xla_366768hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366773�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�����<
� "
 �
#__inference__update_step_xla_366778hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366783�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`�ô���<
� "
 �
#__inference__update_step_xla_366788hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����<
� "
 �
#__inference__update_step_xla_366793�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366798hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366803�|�y
r�o
#� 
gradient��
>�;	'�$
���
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366808hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366813rl�i
b�_
�
gradient
��
6�3	�
�
��
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366818hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366823pj�g
`�]
�
gradient	�
5�2	�
�	�
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_366828f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������<
� "
 �
!__inference__wrapped_model_366253�()78FGUVdest����E�B
;�8
6�3
sequential_6_input�����������
� "3�0
.
dense_31"�
dense_31����������
E__inference_conv2d_74_layer_call_and_return_conditional_losses_366848w()9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������F
� �
*__inference_conv2d_74_layer_call_fn_366837l()9�6
/�,
*�'
inputs�����������
� "+�(
unknown�����������F�
E__inference_conv2d_75_layer_call_and_return_conditional_losses_366878t787�4
-�*
(�%
inputs���������F
� "5�2
+�(
tensor_0���������}}�
� �
*__inference_conv2d_75_layer_call_fn_366867i787�4
-�*
(�%
inputs���������F
� "*�'
unknown���������}}��
E__inference_conv2d_76_layer_call_and_return_conditional_losses_366908uFG8�5
.�+
)�&
inputs���������>>�
� "5�2
+�(
tensor_0���������<<�
� �
*__inference_conv2d_76_layer_call_fn_366897jFG8�5
.�+
)�&
inputs���������>>�
� "*�'
unknown���������<<��
E__inference_conv2d_77_layer_call_and_return_conditional_losses_366938uUV8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
*__inference_conv2d_77_layer_call_fn_366927jUV8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
E__inference_conv2d_78_layer_call_and_return_conditional_losses_366968ude8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
*__inference_conv2d_78_layer_call_fn_366957jde8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
E__inference_conv2d_79_layer_call_and_return_conditional_losses_366998ust8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
*__inference_conv2d_79_layer_call_fn_366987jst8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
D__inference_dense_30_layer_call_and_return_conditional_losses_367039g��0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_30_layer_call_fn_367028\��0�-
&�#
!�
inputs����������
� ""�
unknown�����������
D__inference_dense_31_layer_call_and_return_conditional_losses_367059f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
)__inference_dense_31_layer_call_fn_367048[��0�-
&�#
!�
inputs����������
� "!�
unknown����������
F__inference_flatten_15_layer_call_and_return_conditional_losses_367019i8�5
.�+
)�&
inputs����������
� "-�*
#� 
tensor_0����������
� �
+__inference_flatten_15_layer_call_fn_367013^8�5
.�+
)�&
inputs����������
� ""�
unknown�����������
L__inference_max_pooling2d_74_layer_call_and_return_conditional_losses_366858�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_74_layer_call_fn_366853�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_75_layer_call_and_return_conditional_losses_366888�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_75_layer_call_fn_366883�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_76_layer_call_and_return_conditional_losses_366918�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_76_layer_call_fn_366913�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_77_layer_call_and_return_conditional_losses_366948�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_77_layer_call_fn_366943�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_78_layer_call_and_return_conditional_losses_366978�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_78_layer_call_fn_366973�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_79_layer_call_and_return_conditional_losses_367008�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_79_layer_call_fn_367003�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
G__inference_rescaling_2_layer_call_and_return_conditional_losses_367083s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
,__inference_rescaling_2_layer_call_fn_367075h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
F__inference_resizing_2_layer_call_and_return_conditional_losses_367070s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
+__inference_resizing_2_layer_call_fn_367064h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
I__inference_sequential_22_layer_call_and_return_conditional_losses_366505�()78FGUVdest����M�J
C�@
6�3
sequential_6_input�����������
p

 
� ",�)
"�
tensor_0���������
� �
I__inference_sequential_22_layer_call_and_return_conditional_losses_366557�()78FGUVdest����M�J
C�@
6�3
sequential_6_input�����������
p 

 
� ",�)
"�
tensor_0���������
� �
.__inference_sequential_22_layer_call_fn_366594�()78FGUVdest����M�J
C�@
6�3
sequential_6_input�����������
p

 
� "!�
unknown����������
.__inference_sequential_22_layer_call_fn_366631�()78FGUVdest����M�J
C�@
6�3
sequential_6_input�����������
p 

 
� "!�
unknown����������
H__inference_sequential_6_layer_call_and_return_conditional_losses_366273�K�H
A�>
4�1
resizing_2_input�����������
p

 
� "6�3
,�)
tensor_0�����������
� �
H__inference_sequential_6_layer_call_and_return_conditional_losses_366279�K�H
A�>
4�1
resizing_2_input�����������
p 

 
� "6�3
,�)
tensor_0�����������
� �
-__inference_sequential_6_layer_call_fn_366284zK�H
A�>
4�1
resizing_2_input�����������
p

 
� "+�(
unknown������������
-__inference_sequential_6_layer_call_fn_366289zK�H
A�>
4�1
resizing_2_input�����������
p 

 
� "+�(
unknown������������
$__inference_signature_wrapper_366748�()78FGUVdest����[�X
� 
Q�N
L
sequential_6_input6�3
sequential_6_input�����������"3�0
.
dense_31"�
dense_31���������