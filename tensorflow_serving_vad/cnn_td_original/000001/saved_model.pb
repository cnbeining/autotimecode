Ű9
×:Ž:
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
Ŕ
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
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
ż
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
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
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%ˇŃ8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
Ŕ
FusedBatchNormGrad

y_backprop"T
x"T

scale"T
reserve_space_1"T
reserve_space_2"T

x_backprop"T
scale_backprop"T
offset_backprop"T
reserve_space_3"T
reserve_space_4"T"
Ttype:
2"
epsilonfloat%ˇŃ8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
0
Round
x"T
y"T"
Ttype:

2	
.
Rsqrt
x"T
y"T"
Ttype:

2
;
	RsqrtGrad
y"T
dy"T
z"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
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
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.02v1.14.0-0-g87989f6959×5
z
input_1Placeholder*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*$
shape:˙˙˙˙˙˙˙˙˙@@
v
conv2d_1/random_uniform/shapeConst*
_output_shapes
:*%
valueB"             *
dtype0
`
conv2d_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ž
`
conv2d_1/random_uniform/maxConst*
valueB
 *>*
dtype0*
_output_shapes
: 
˛
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*
seedą˙ĺ)*
T0*
dtype0*&
_output_shapes
: *
seed2Ä¨
}
conv2d_1/random_uniform/subSubconv2d_1/random_uniform/maxconv2d_1/random_uniform/min*
T0*
_output_shapes
: 

conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*
T0*&
_output_shapes
: 

conv2d_1/random_uniformAddconv2d_1/random_uniform/mulconv2d_1/random_uniform/min*
T0*&
_output_shapes
: 

conv2d_1/kernel
VariableV2*
shared_name *
dtype0*&
_output_shapes
: *
	container *
shape: 
Č
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel

conv2d_1/kernel/readIdentityconv2d_1/kernel*&
_output_shapes
: *
T0*"
_class
loc:@conv2d_1/kernel
[
conv2d_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
y
conv2d_1/bias
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
­
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/Const*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
ţ
conv2d_1/convolutionConv2Dinput_1conv2d_1/kernel/read*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(

conv2d_1/BiasAddBiasAddconv2d_1/convolutionconv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
h
batch_normalization_1/ConstConst*
valueB *  ?*
dtype0*
_output_shapes
: 

batch_normalization_1/gamma
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
ä
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gammabatch_normalization_1/Const*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
: 
j
batch_normalization_1/Const_1Const*
valueB *    *
dtype0*
_output_shapes
: 

batch_normalization_1/beta
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
ă
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/betabatch_normalization_1/Const_1*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
: 

batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
: 
j
batch_normalization_1/Const_2Const*
valueB *    *
dtype0*
_output_shapes
: 

!batch_normalization_1/moving_mean
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
ř
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_meanbatch_normalization_1/Const_2*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
: 
°
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
j
batch_normalization_1/Const_3Const*
dtype0*
_output_shapes
: *
valueB *  ?

%batch_normalization_1/moving_variance
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 

,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variancebatch_normalization_1/Const_3*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
ź
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 

+batch_normalization_1/IsVariableInitializedIsVariableInitializedconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 

-batch_normalization_1/IsVariableInitialized_1IsVariableInitializedconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
¸
-batch_normalization_1/IsVariableInitialized_2IsVariableInitializedbatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: 
ś
-batch_normalization_1/IsVariableInitialized_3IsVariableInitializedbatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
: 
Ä
-batch_normalization_1/IsVariableInitialized_4IsVariableInitialized!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
Ě
-batch_normalization_1/IsVariableInitialized_5IsVariableInitialized%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
ő
batch_normalization_1/initNoOp"^batch_normalization_1/beta/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Assign
`
batch_normalization_1/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
`
batch_normalization_1/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
×
$batch_normalization_1/FusedBatchNormFusedBatchNormconv2d_1/BiasAdd batch_normalization_1/gamma/readbatch_normalization_1/beta/readbatch_normalization_1/Const_4batch_normalization_1/Const_5*
data_formatNHWC*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@@ : : : : *
is_training(*
epsilon%o:*
T0
k
batch_normalization_1/ShapeShapeconv2d_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
s
)batch_normalization_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+batch_normalization_1/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
u
+batch_normalization_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
#batch_normalization_1/strided_sliceStridedSlicebatch_normalization_1/Shape)batch_normalization_1/strided_slice/stack+batch_normalization_1/strided_slice/stack_1+batch_normalization_1/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
m
batch_normalization_1/Shape_1Shapeconv2d_1/BiasAdd*
out_type0*
_output_shapes
:*
T0
u
+batch_normalization_1/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
w
-batch_normalization_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_1/strided_slice_1StridedSlicebatch_normalization_1/Shape_1+batch_normalization_1/strided_slice_1/stack-batch_normalization_1/strided_slice_1/stack_1-batch_normalization_1/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
batch_normalization_1/Shape_2Shapeconv2d_1/BiasAdd*
_output_shapes
:*
T0*
out_type0
u
+batch_normalization_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
w
-batch_normalization_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_1/strided_slice_2StridedSlicebatch_normalization_1/Shape_2+batch_normalization_1/strided_slice_2/stack-batch_normalization_1/strided_slice_2/stack_1-batch_normalization_1/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
!batch_normalization_1/Rank/packedPack#batch_normalization_1/strided_slice%batch_normalization_1/strided_slice_1%batch_normalization_1/strided_slice_2*
_output_shapes
:*
T0*

axis *
N
\
batch_normalization_1/RankConst*
value	B :*
dtype0*
_output_shapes
: 
c
!batch_normalization_1/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!batch_normalization_1/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ž
batch_normalization_1/rangeRange!batch_normalization_1/range/startbatch_normalization_1/Rank!batch_normalization_1/range/delta*

Tidx0*
_output_shapes
:
Ő
 batch_normalization_1/Prod/inputPack#batch_normalization_1/strided_slice%batch_normalization_1/strided_slice_1%batch_normalization_1/strided_slice_2*
T0*

axis *
N*
_output_shapes
:

batch_normalization_1/ProdProd batch_normalization_1/Prod/inputbatch_normalization_1/range*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

batch_normalization_1/Cast_2Castbatch_normalization_1/Prod*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
`
batch_normalization_1/sub/yConst*
valueB
 *Ĺ ?*
dtype0*
_output_shapes
: 
|
batch_normalization_1/subSubbatch_normalization_1/Cast_2batch_normalization_1/sub/y*
T0*
_output_shapes
: 

batch_normalization_1/truedivRealDivbatch_normalization_1/Cast_2batch_normalization_1/sub*
T0*
_output_shapes
: 

batch_normalization_1/mulMul&batch_normalization_1/FusedBatchNorm:2batch_normalization_1/truediv*
T0*
_output_shapes
: 
p
+batch_normalization_1/AssignMovingAvg/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
˝
:batch_normalization_1/moving_mean/biased/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
Ę
(batch_normalization_1/moving_mean/biased
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean
Ł
/batch_normalization_1/moving_mean/biased/AssignAssign(batch_normalization_1/moving_mean/biased:batch_normalization_1/moving_mean/biased/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
: 
ž
-batch_normalization_1/moving_mean/biased/readIdentity(batch_normalization_1/moving_mean/biased*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: *
T0
š
>batch_normalization_1/moving_mean/local_step/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
Ć
,batch_normalization_1/moving_mean/local_step
VariableV2*4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ť
3batch_normalization_1/moving_mean/local_step/AssignAssign,batch_normalization_1/moving_mean/local_step>batch_normalization_1/moving_mean/local_step/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
Â
1batch_normalization_1/moving_mean/local_step/readIdentity,batch_normalization_1/moving_mean/local_step*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
Ź
)batch_normalization_1/AssignMovingAvg/subSub-batch_normalization_1/moving_mean/biased/read&batch_normalization_1/FusedBatchNorm:1*
T0*
_output_shapes
: 
­
)batch_normalization_1/AssignMovingAvg/mulMul)batch_normalization_1/AssignMovingAvg/sub+batch_normalization_1/AssignMovingAvg/decay*
T0*
_output_shapes
: 
˙
/batch_normalization_1/AssignMovingAvg/AssignSub	AssignSub(batch_normalization_1/moving_mean/biased)batch_normalization_1/AssignMovingAvg/mul*
_output_shapes
: *
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
z
5batch_normalization_1/AssignMovingAvg/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/batch_normalization_1/AssignMovingAvg/AssignAdd	AssignAdd,batch_normalization_1/moving_mean/local_step5batch_normalization_1/AssignMovingAvg/AssignAdd/value*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 
r
-batch_normalization_1/AssignMovingAvg/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ż
+batch_normalization_1/AssignMovingAvg/sub_1Sub-batch_normalization_1/AssignMovingAvg/sub_1/x+batch_normalization_1/AssignMovingAvg/decay*
_output_shapes
: *
T0
Ż
)batch_normalization_1/AssignMovingAvg/PowPow+batch_normalization_1/AssignMovingAvg/sub_1/batch_normalization_1/AssignMovingAvg/AssignAdd*
T0*
_output_shapes
: 
r
-batch_normalization_1/AssignMovingAvg/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
­
+batch_normalization_1/AssignMovingAvg/sub_2Sub-batch_normalization_1/AssignMovingAvg/sub_2/x)batch_normalization_1/AssignMovingAvg/Pow*
_output_shapes
: *
T0
ť
-batch_normalization_1/AssignMovingAvg/truedivRealDiv/batch_normalization_1/AssignMovingAvg/AssignSub+batch_normalization_1/AssignMovingAvg/sub_2*
_output_shapes
: *
T0

%batch_normalization_1/AssignMovingAvgAssign!batch_normalization_1/moving_mean-batch_normalization_1/AssignMovingAvg/truediv*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(
r
-batch_normalization_1/AssignMovingAvg_1/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ĺ
>batch_normalization_1/moving_variance/biased/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB *    *
dtype0*
_output_shapes
: 
Ň
,batch_normalization_1/moving_variance/biased
VariableV2*
dtype0*
_output_shapes
: *
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape: 
ł
3batch_normalization_1/moving_variance/biased/AssignAssign,batch_normalization_1/moving_variance/biased>batch_normalization_1/moving_variance/biased/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
Ę
1batch_normalization_1/moving_variance/biased/readIdentity,batch_normalization_1/moving_variance/biased*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
Á
Bbatch_normalization_1/moving_variance/local_step/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
0batch_normalization_1/moving_variance/local_step
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: 
ť
7batch_normalization_1/moving_variance/local_step/AssignAssign0batch_normalization_1/moving_variance/local_stepBbatch_normalization_1/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(
Î
5batch_normalization_1/moving_variance/local_step/readIdentity0batch_normalization_1/moving_variance/local_step*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: 
Ľ
+batch_normalization_1/AssignMovingAvg_1/subSub1batch_normalization_1/moving_variance/biased/readbatch_normalization_1/mul*
_output_shapes
: *
T0
ł
+batch_normalization_1/AssignMovingAvg_1/mulMul+batch_normalization_1/AssignMovingAvg_1/sub-batch_normalization_1/AssignMovingAvg_1/decay*
T0*
_output_shapes
: 

1batch_normalization_1/AssignMovingAvg_1/AssignSub	AssignSub,batch_normalization_1/moving_variance/biased+batch_normalization_1/AssignMovingAvg_1/mul*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: *
use_locking( *
T0
|
7batch_normalization_1/AssignMovingAvg_1/AssignAdd/valueConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

1batch_normalization_1/AssignMovingAvg_1/AssignAdd	AssignAdd0batch_normalization_1/moving_variance/local_step7batch_normalization_1/AssignMovingAvg_1/AssignAdd/value*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: *
use_locking( 
t
/batch_normalization_1/AssignMovingAvg_1/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ľ
-batch_normalization_1/AssignMovingAvg_1/sub_1Sub/batch_normalization_1/AssignMovingAvg_1/sub_1/x-batch_normalization_1/AssignMovingAvg_1/decay*
_output_shapes
: *
T0
ľ
+batch_normalization_1/AssignMovingAvg_1/PowPow-batch_normalization_1/AssignMovingAvg_1/sub_11batch_normalization_1/AssignMovingAvg_1/AssignAdd*
_output_shapes
: *
T0
t
/batch_normalization_1/AssignMovingAvg_1/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
ł
-batch_normalization_1/AssignMovingAvg_1/sub_2Sub/batch_normalization_1/AssignMovingAvg_1/sub_2/x+batch_normalization_1/AssignMovingAvg_1/Pow*
T0*
_output_shapes
: 
Á
/batch_normalization_1/AssignMovingAvg_1/truedivRealDiv1batch_normalization_1/AssignMovingAvg_1/AssignSub-batch_normalization_1/AssignMovingAvg_1/sub_2*
T0*
_output_shapes
: 

'batch_normalization_1/AssignMovingAvg_1Assign%batch_normalization_1/moving_variance/batch_normalization_1/AssignMovingAvg_1/truediv*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
z
!batch_normalization_1/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_1/cond/switch_tIdentity#batch_normalization_1/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_1/cond/switch_fIdentity!batch_normalization_1/cond/Switch*
_output_shapes
: *
T0

e
"batch_normalization_1/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0


#batch_normalization_1/cond/Switch_1Switch$batch_normalization_1/FusedBatchNorm"batch_normalization_1/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ 
Ë
)batch_normalization_1/cond/FusedBatchNormFusedBatchNorm0batch_normalization_1/cond/FusedBatchNorm/Switch2batch_normalization_1/cond/FusedBatchNorm/Switch_12batch_normalization_1/cond/FusedBatchNorm/Switch_22batch_normalization_1/cond/FusedBatchNorm/Switch_32batch_normalization_1/cond/FusedBatchNorm/Switch_4*
epsilon%o:*
T0*
data_formatNHWC*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@@ : : : : *
is_training( 
ę
0batch_normalization_1/cond/FusedBatchNorm/SwitchSwitchconv2d_1/BiasAdd"batch_normalization_1/cond/pred_id*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ *
T0*#
_class
loc:@conv2d_1/BiasAdd
Ý
2batch_normalization_1/cond/FusedBatchNorm/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
: : 
Ű
2batch_normalization_1/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
: : 
é
2batch_normalization_1/cond/FusedBatchNorm/Switch_3Switch&batch_normalization_1/moving_mean/read"batch_normalization_1/cond/pred_id* 
_output_shapes
: : *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
ń
2batch_normalization_1/cond/FusedBatchNorm/Switch_4Switch*batch_normalization_1/moving_variance/read"batch_normalization_1/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance* 
_output_shapes
: : 
Ŕ
 batch_normalization_1/cond/MergeMerge)batch_normalization_1/cond/FusedBatchNorm%batch_normalization_1/cond/Switch_1:1*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ : *
T0
u
activation_1/ReluRelu batch_normalization_1/cond/Merge*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
v
conv2d_2/random_uniform/shapeConst*
_output_shapes
:*%
valueB"              *
dtype0
`
conv2d_2/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ěŃ˝
`
conv2d_2/random_uniform/maxConst*
valueB
 *ěŃ=*
dtype0*
_output_shapes
: 
˛
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*
dtype0*&
_output_shapes
:  *
seed2Ţ*
seedą˙ĺ)*
T0
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
T0*
_output_shapes
: 

conv2d_2/random_uniform/mulMul%conv2d_2/random_uniform/RandomUniformconv2d_2/random_uniform/sub*
T0*&
_output_shapes
:  

conv2d_2/random_uniformAddconv2d_2/random_uniform/mulconv2d_2/random_uniform/min*&
_output_shapes
:  *
T0

conv2d_2/kernel
VariableV2*
shape:  *
shared_name *
dtype0*&
_output_shapes
:  *
	container 
Č
conv2d_2/kernel/AssignAssignconv2d_2/kernelconv2d_2/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:  

conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:  *
T0
[
conv2d_2/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
y
conv2d_2/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
­
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/Const*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
: 
t
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 

conv2d_2/convolutionConv2Dactivation_1/Reluconv2d_2/kernel/read*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 

conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_2/bias/read*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
T0
h
batch_normalization_2/ConstConst*
valueB *  ?*
dtype0*
_output_shapes
: 

batch_normalization_2/gamma
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
ä
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gammabatch_normalization_2/Const*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
: 

 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
: 
j
batch_normalization_2/Const_1Const*
valueB *    *
dtype0*
_output_shapes
: 

batch_normalization_2/beta
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
ă
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/betabatch_normalization_2/Const_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta

batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
: *
T0
j
batch_normalization_2/Const_2Const*
valueB *    *
dtype0*
_output_shapes
: 

!batch_normalization_2/moving_mean
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
ř
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_meanbatch_normalization_2/Const_2*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
: 
°
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
j
batch_normalization_2/Const_3Const*
_output_shapes
: *
valueB *  ?*
dtype0

%batch_normalization_2/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variancebatch_normalization_2/Const_3*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
: 
ź
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
`
batch_normalization_2/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
`
batch_normalization_2/Const_5Const*
dtype0*
_output_shapes
: *
valueB 
×
$batch_normalization_2/FusedBatchNormFusedBatchNormconv2d_2/BiasAdd batch_normalization_2/gamma/readbatch_normalization_2/beta/readbatch_normalization_2/Const_4batch_normalization_2/Const_5*
epsilon%o:*
T0*
data_formatNHWC*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@@ : : : : *
is_training(
k
batch_normalization_2/ShapeShapeconv2d_2/BiasAdd*
out_type0*
_output_shapes
:*
T0
s
)batch_normalization_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+batch_normalization_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+batch_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ç
#batch_normalization_2/strided_sliceStridedSlicebatch_normalization_2/Shape)batch_normalization_2/strided_slice/stack+batch_normalization_2/strided_slice/stack_1+batch_normalization_2/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
batch_normalization_2/Shape_1Shapeconv2d_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
u
+batch_normalization_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_2/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-batch_normalization_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_2/strided_slice_1StridedSlicebatch_normalization_2/Shape_1+batch_normalization_2/strided_slice_1/stack-batch_normalization_2/strided_slice_1/stack_1-batch_normalization_2/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
m
batch_normalization_2/Shape_2Shapeconv2d_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
u
+batch_normalization_2/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_2/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-batch_normalization_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_2/strided_slice_2StridedSlicebatch_normalization_2/Shape_2+batch_normalization_2/strided_slice_2/stack-batch_normalization_2/strided_slice_2/stack_1-batch_normalization_2/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
Ö
!batch_normalization_2/Rank/packedPack#batch_normalization_2/strided_slice%batch_normalization_2/strided_slice_1%batch_normalization_2/strided_slice_2*
_output_shapes
:*
T0*

axis *
N
\
batch_normalization_2/RankConst*
value	B :*
dtype0*
_output_shapes
: 
c
!batch_normalization_2/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!batch_normalization_2/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ž
batch_normalization_2/rangeRange!batch_normalization_2/range/startbatch_normalization_2/Rank!batch_normalization_2/range/delta*
_output_shapes
:*

Tidx0
Ő
 batch_normalization_2/Prod/inputPack#batch_normalization_2/strided_slice%batch_normalization_2/strided_slice_1%batch_normalization_2/strided_slice_2*
T0*

axis *
N*
_output_shapes
:

batch_normalization_2/ProdProd batch_normalization_2/Prod/inputbatch_normalization_2/range*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

batch_normalization_2/Cast_2Castbatch_normalization_2/Prod*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
`
batch_normalization_2/sub/yConst*
dtype0*
_output_shapes
: *
valueB
 *Ĺ ?
|
batch_normalization_2/subSubbatch_normalization_2/Cast_2batch_normalization_2/sub/y*
_output_shapes
: *
T0

batch_normalization_2/truedivRealDivbatch_normalization_2/Cast_2batch_normalization_2/sub*
_output_shapes
: *
T0

batch_normalization_2/mulMul&batch_normalization_2/FusedBatchNorm:2batch_normalization_2/truediv*
_output_shapes
: *
T0
p
+batch_normalization_2/AssignMovingAvg/decayConst*
dtype0*
_output_shapes
: *
valueB
 *
×#<
˝
:batch_normalization_2/moving_mean/biased/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
Ę
(batch_normalization_2/moving_mean/biased
VariableV2*4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ł
/batch_normalization_2/moving_mean/biased/AssignAssign(batch_normalization_2/moving_mean/biased:batch_normalization_2/moving_mean/biased/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
: 
ž
-batch_normalization_2/moving_mean/biased/readIdentity(batch_normalization_2/moving_mean/biased*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: 
š
>batch_normalization_2/moving_mean/local_step/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
Ć
,batch_normalization_2/moving_mean/local_step
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: 
Ť
3batch_normalization_2/moving_mean/local_step/AssignAssign,batch_normalization_2/moving_mean/local_step>batch_normalization_2/moving_mean/local_step/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
Â
1batch_normalization_2/moving_mean/local_step/readIdentity,batch_normalization_2/moving_mean/local_step*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: *
T0
Ź
)batch_normalization_2/AssignMovingAvg/subSub-batch_normalization_2/moving_mean/biased/read&batch_normalization_2/FusedBatchNorm:1*
_output_shapes
: *
T0
­
)batch_normalization_2/AssignMovingAvg/mulMul)batch_normalization_2/AssignMovingAvg/sub+batch_normalization_2/AssignMovingAvg/decay*
T0*
_output_shapes
: 
˙
/batch_normalization_2/AssignMovingAvg/AssignSub	AssignSub(batch_normalization_2/moving_mean/biased)batch_normalization_2/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: 
z
5batch_normalization_2/AssignMovingAvg/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/batch_normalization_2/AssignMovingAvg/AssignAdd	AssignAdd,batch_normalization_2/moving_mean/local_step5batch_normalization_2/AssignMovingAvg/AssignAdd/value*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: *
use_locking( *
T0
r
-batch_normalization_2/AssignMovingAvg/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ż
+batch_normalization_2/AssignMovingAvg/sub_1Sub-batch_normalization_2/AssignMovingAvg/sub_1/x+batch_normalization_2/AssignMovingAvg/decay*
_output_shapes
: *
T0
Ż
)batch_normalization_2/AssignMovingAvg/PowPow+batch_normalization_2/AssignMovingAvg/sub_1/batch_normalization_2/AssignMovingAvg/AssignAdd*
T0*
_output_shapes
: 
r
-batch_normalization_2/AssignMovingAvg/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
­
+batch_normalization_2/AssignMovingAvg/sub_2Sub-batch_normalization_2/AssignMovingAvg/sub_2/x)batch_normalization_2/AssignMovingAvg/Pow*
T0*
_output_shapes
: 
ť
-batch_normalization_2/AssignMovingAvg/truedivRealDiv/batch_normalization_2/AssignMovingAvg/AssignSub+batch_normalization_2/AssignMovingAvg/sub_2*
_output_shapes
: *
T0

%batch_normalization_2/AssignMovingAvgAssign!batch_normalization_2/moving_mean-batch_normalization_2/AssignMovingAvg/truediv*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(
r
-batch_normalization_2/AssignMovingAvg_1/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ĺ
>batch_normalization_2/moving_variance/biased/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB *    *
dtype0*
_output_shapes
: 
Ň
,batch_normalization_2/moving_variance/biased
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_2/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: 
ł
3batch_normalization_2/moving_variance/biased/AssignAssign,batch_normalization_2/moving_variance/biased>batch_normalization_2/moving_variance/biased/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
: 
Ę
1batch_normalization_2/moving_variance/biased/readIdentity,batch_normalization_2/moving_variance/biased*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: 
Á
Bbatch_normalization_2/moving_variance/local_step/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
0batch_normalization_2/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: *
shared_name *8
_class.
,*loc:@batch_normalization_2/moving_variance*
	container *
shape: 
ť
7batch_normalization_2/moving_variance/local_step/AssignAssign0batch_normalization_2/moving_variance/local_stepBbatch_normalization_2/moving_variance/local_step/Initializer/zeros*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
Î
5batch_normalization_2/moving_variance/local_step/readIdentity0batch_normalization_2/moving_variance/local_step*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: 
Ľ
+batch_normalization_2/AssignMovingAvg_1/subSub1batch_normalization_2/moving_variance/biased/readbatch_normalization_2/mul*
_output_shapes
: *
T0
ł
+batch_normalization_2/AssignMovingAvg_1/mulMul+batch_normalization_2/AssignMovingAvg_1/sub-batch_normalization_2/AssignMovingAvg_1/decay*
_output_shapes
: *
T0

1batch_normalization_2/AssignMovingAvg_1/AssignSub	AssignSub,batch_normalization_2/moving_variance/biased+batch_normalization_2/AssignMovingAvg_1/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: 
|
7batch_normalization_2/AssignMovingAvg_1/AssignAdd/valueConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

1batch_normalization_2/AssignMovingAvg_1/AssignAdd	AssignAdd0batch_normalization_2/moving_variance/local_step7batch_normalization_2/AssignMovingAvg_1/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
t
/batch_normalization_2/AssignMovingAvg_1/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ľ
-batch_normalization_2/AssignMovingAvg_1/sub_1Sub/batch_normalization_2/AssignMovingAvg_1/sub_1/x-batch_normalization_2/AssignMovingAvg_1/decay*
_output_shapes
: *
T0
ľ
+batch_normalization_2/AssignMovingAvg_1/PowPow-batch_normalization_2/AssignMovingAvg_1/sub_11batch_normalization_2/AssignMovingAvg_1/AssignAdd*
T0*
_output_shapes
: 
t
/batch_normalization_2/AssignMovingAvg_1/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ł
-batch_normalization_2/AssignMovingAvg_1/sub_2Sub/batch_normalization_2/AssignMovingAvg_1/sub_2/x+batch_normalization_2/AssignMovingAvg_1/Pow*
_output_shapes
: *
T0
Á
/batch_normalization_2/AssignMovingAvg_1/truedivRealDiv1batch_normalization_2/AssignMovingAvg_1/AssignSub-batch_normalization_2/AssignMovingAvg_1/sub_2*
T0*
_output_shapes
: 

'batch_normalization_2/AssignMovingAvg_1Assign%batch_normalization_2/moving_variance/batch_normalization_2/AssignMovingAvg_1/truediv*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
: 
z
!batch_normalization_2/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization_2/cond/switch_tIdentity#batch_normalization_2/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_2/cond/switch_fIdentity!batch_normalization_2/cond/Switch*
_output_shapes
: *
T0

e
"batch_normalization_2/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 

#batch_normalization_2/cond/Switch_1Switch$batch_normalization_2/FusedBatchNorm"batch_normalization_2/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ 
Ë
)batch_normalization_2/cond/FusedBatchNormFusedBatchNorm0batch_normalization_2/cond/FusedBatchNorm/Switch2batch_normalization_2/cond/FusedBatchNorm/Switch_12batch_normalization_2/cond/FusedBatchNorm/Switch_22batch_normalization_2/cond/FusedBatchNorm/Switch_32batch_normalization_2/cond/FusedBatchNorm/Switch_4*
T0*
data_formatNHWC*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@@ : : : : *
is_training( *
epsilon%o:
ę
0batch_normalization_2/cond/FusedBatchNorm/SwitchSwitchconv2d_2/BiasAdd"batch_normalization_2/cond/pred_id*
T0*#
_class
loc:@conv2d_2/BiasAdd*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ 
Ý
2batch_normalization_2/cond/FusedBatchNorm/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id* 
_output_shapes
: : *
T0*.
_class$
" loc:@batch_normalization_2/gamma
Ű
2batch_normalization_2/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id* 
_output_shapes
: : *
T0*-
_class#
!loc:@batch_normalization_2/beta
é
2batch_normalization_2/cond/FusedBatchNorm/Switch_3Switch&batch_normalization_2/moving_mean/read"batch_normalization_2/cond/pred_id*4
_class*
(&loc:@batch_normalization_2/moving_mean* 
_output_shapes
: : *
T0
ń
2batch_normalization_2/cond/FusedBatchNorm/Switch_4Switch*batch_normalization_2/moving_variance/read"batch_normalization_2/cond/pred_id* 
_output_shapes
: : *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
Ŕ
 batch_normalization_2/cond/MergeMerge)batch_normalization_2/cond/FusedBatchNorm%batch_normalization_2/cond/Switch_1:1*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ : *
T0
u
activation_2/ReluRelu batch_normalization_2/cond/Merge*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
T0
Á
max_pooling2d_1/MaxPoolMaxPoolactivation_2/Relu*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
T0*
data_formatNHWC*
strides

v
conv2d_3/random_uniform/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:
`
conv2d_3/random_uniform/minConst*
valueB
 *ŤŞŞ˝*
dtype0*
_output_shapes
: 
`
conv2d_3/random_uniform/maxConst*
valueB
 *ŤŞŞ=*
dtype0*
_output_shapes
: 
˛
%conv2d_3/random_uniform/RandomUniformRandomUniformconv2d_3/random_uniform/shape*
dtype0*&
_output_shapes
: @*
seed2ĘŔá*
seedą˙ĺ)*
T0
}
conv2d_3/random_uniform/subSubconv2d_3/random_uniform/maxconv2d_3/random_uniform/min*
_output_shapes
: *
T0

conv2d_3/random_uniform/mulMul%conv2d_3/random_uniform/RandomUniformconv2d_3/random_uniform/sub*
T0*&
_output_shapes
: @

conv2d_3/random_uniformAddconv2d_3/random_uniform/mulconv2d_3/random_uniform/min*&
_output_shapes
: @*
T0

conv2d_3/kernel
VariableV2*
dtype0*&
_output_shapes
: @*
	container *
shape: @*
shared_name 
Č
conv2d_3/kernel/AssignAssignconv2d_3/kernelconv2d_3/random_uniform*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(

conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
: @
[
conv2d_3/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
y
conv2d_3/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
­
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/Const*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(
t
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
:@

conv2d_3/convolutionConv2Dmax_pooling2d_1/MaxPoolconv2d_3/kernel/read*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
	dilations
*
T0

conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_3/bias/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
T0*
data_formatNHWC
h
batch_normalization_3/ConstConst*
valueB@*  ?*
dtype0*
_output_shapes
:@

batch_normalization_3/gamma
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
ä
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gammabatch_normalization_3/Const*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*
_output_shapes
:@*
T0*.
_class$
" loc:@batch_normalization_3/gamma
j
batch_normalization_3/Const_1Const*
valueB@*    *
dtype0*
_output_shapes
:@

batch_normalization_3/beta
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
ă
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/betabatch_normalization_3/Const_1*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta

batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
:@
j
batch_normalization_3/Const_2Const*
valueB@*    *
dtype0*
_output_shapes
:@

!batch_normalization_3/moving_mean
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
ř
(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_meanbatch_normalization_3/Const_2*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
°
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:@
j
batch_normalization_3/Const_3Const*
valueB@*  ?*
dtype0*
_output_shapes
:@

%batch_normalization_3/moving_variance
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0

,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variancebatch_normalization_3/Const_3*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
ź
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:@
`
batch_normalization_3/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
`
batch_normalization_3/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
×
$batch_normalization_3/FusedBatchNormFusedBatchNormconv2d_3/BiasAdd batch_normalization_3/gamma/readbatch_normalization_3/beta/readbatch_normalization_3/Const_4batch_normalization_3/Const_5*
T0*
data_formatNHWC*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙  @:@:@:@:@*
is_training(*
epsilon%o:
k
batch_normalization_3/ShapeShapeconv2d_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
s
)batch_normalization_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+batch_normalization_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+batch_normalization_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
#batch_normalization_3/strided_sliceStridedSlicebatch_normalization_3/Shape)batch_normalization_3/strided_slice/stack+batch_normalization_3/strided_slice/stack_1+batch_normalization_3/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
batch_normalization_3/Shape_1Shapeconv2d_3/BiasAdd*
out_type0*
_output_shapes
:*
T0
u
+batch_normalization_3/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_3/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-batch_normalization_3/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_3/strided_slice_1StridedSlicebatch_normalization_3/Shape_1+batch_normalization_3/strided_slice_1/stack-batch_normalization_3/strided_slice_1/stack_1-batch_normalization_3/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
batch_normalization_3/Shape_2Shapeconv2d_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
u
+batch_normalization_3/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_3/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_3/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_3/strided_slice_2StridedSlicebatch_normalization_3/Shape_2+batch_normalization_3/strided_slice_2/stack-batch_normalization_3/strided_slice_2/stack_1-batch_normalization_3/strided_slice_2/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
Ö
!batch_normalization_3/Rank/packedPack#batch_normalization_3/strided_slice%batch_normalization_3/strided_slice_1%batch_normalization_3/strided_slice_2*

axis *
N*
_output_shapes
:*
T0
\
batch_normalization_3/RankConst*
value	B :*
dtype0*
_output_shapes
: 
c
!batch_normalization_3/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!batch_normalization_3/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ž
batch_normalization_3/rangeRange!batch_normalization_3/range/startbatch_normalization_3/Rank!batch_normalization_3/range/delta*
_output_shapes
:*

Tidx0
Ő
 batch_normalization_3/Prod/inputPack#batch_normalization_3/strided_slice%batch_normalization_3/strided_slice_1%batch_normalization_3/strided_slice_2*

axis *
N*
_output_shapes
:*
T0

batch_normalization_3/ProdProd batch_normalization_3/Prod/inputbatch_normalization_3/range*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

batch_normalization_3/Cast_2Castbatch_normalization_3/Prod*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
`
batch_normalization_3/sub/yConst*
_output_shapes
: *
valueB
 *Ĺ ?*
dtype0
|
batch_normalization_3/subSubbatch_normalization_3/Cast_2batch_normalization_3/sub/y*
_output_shapes
: *
T0

batch_normalization_3/truedivRealDivbatch_normalization_3/Cast_2batch_normalization_3/sub*
_output_shapes
: *
T0

batch_normalization_3/mulMul&batch_normalization_3/FusedBatchNorm:2batch_normalization_3/truediv*
_output_shapes
:@*
T0
p
+batch_normalization_3/AssignMovingAvg/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
˝
:batch_normalization_3/moving_mean/biased/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
Ę
(batch_normalization_3/moving_mean/biased
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *4
_class*
(&loc:@batch_normalization_3/moving_mean*
	container *
shape:@
Ł
/batch_normalization_3/moving_mean/biased/AssignAssign(batch_normalization_3/moving_mean/biased:batch_normalization_3/moving_mean/biased/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
:@
ž
-batch_normalization_3/moving_mean/biased/readIdentity(batch_normalization_3/moving_mean/biased*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:@
š
>batch_normalization_3/moving_mean/local_step/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
Ć
,batch_normalization_3/moving_mean/local_step
VariableV2*
_output_shapes
: *
shared_name *4
_class*
(&loc:@batch_normalization_3/moving_mean*
	container *
shape: *
dtype0
Ť
3batch_normalization_3/moving_mean/local_step/AssignAssign,batch_normalization_3/moving_mean/local_step>batch_normalization_3/moving_mean/local_step/Initializer/zeros*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Â
1batch_normalization_3/moving_mean/local_step/readIdentity,batch_normalization_3/moving_mean/local_step*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
: 
Ź
)batch_normalization_3/AssignMovingAvg/subSub-batch_normalization_3/moving_mean/biased/read&batch_normalization_3/FusedBatchNorm:1*
T0*
_output_shapes
:@
­
)batch_normalization_3/AssignMovingAvg/mulMul)batch_normalization_3/AssignMovingAvg/sub+batch_normalization_3/AssignMovingAvg/decay*
_output_shapes
:@*
T0
˙
/batch_normalization_3/AssignMovingAvg/AssignSub	AssignSub(batch_normalization_3/moving_mean/biased)batch_normalization_3/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:@
z
5batch_normalization_3/AssignMovingAvg/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/batch_normalization_3/AssignMovingAvg/AssignAdd	AssignAdd,batch_normalization_3/moving_mean/local_step5batch_normalization_3/AssignMovingAvg/AssignAdd/value*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
: *
use_locking( *
T0
r
-batch_normalization_3/AssignMovingAvg/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ż
+batch_normalization_3/AssignMovingAvg/sub_1Sub-batch_normalization_3/AssignMovingAvg/sub_1/x+batch_normalization_3/AssignMovingAvg/decay*
T0*
_output_shapes
: 
Ż
)batch_normalization_3/AssignMovingAvg/PowPow+batch_normalization_3/AssignMovingAvg/sub_1/batch_normalization_3/AssignMovingAvg/AssignAdd*
_output_shapes
: *
T0
r
-batch_normalization_3/AssignMovingAvg/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
­
+batch_normalization_3/AssignMovingAvg/sub_2Sub-batch_normalization_3/AssignMovingAvg/sub_2/x)batch_normalization_3/AssignMovingAvg/Pow*
T0*
_output_shapes
: 
ť
-batch_normalization_3/AssignMovingAvg/truedivRealDiv/batch_normalization_3/AssignMovingAvg/AssignSub+batch_normalization_3/AssignMovingAvg/sub_2*
_output_shapes
:@*
T0

%batch_normalization_3/AssignMovingAvgAssign!batch_normalization_3/moving_mean-batch_normalization_3/AssignMovingAvg/truediv*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(
r
-batch_normalization_3/AssignMovingAvg_1/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ĺ
>batch_normalization_3/moving_variance/biased/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_3/moving_variance*
valueB@*    *
dtype0*
_output_shapes
:@
Ň
,batch_normalization_3/moving_variance/biased
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *8
_class.
,*loc:@batch_normalization_3/moving_variance*
	container *
shape:@
ł
3batch_normalization_3/moving_variance/biased/AssignAssign,batch_normalization_3/moving_variance/biased>batch_normalization_3/moving_variance/biased/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
Ę
1batch_normalization_3/moving_variance/biased/readIdentity,batch_normalization_3/moving_variance/biased*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:@*
T0
Á
Bbatch_normalization_3/moving_variance/local_step/Initializer/zerosConst*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_3/moving_variance*
valueB
 *    *
dtype0
Î
0batch_normalization_3/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: *
shared_name *8
_class.
,*loc:@batch_normalization_3/moving_variance*
	container *
shape: 
ť
7batch_normalization_3/moving_variance/local_step/AssignAssign0batch_normalization_3/moving_variance/local_stepBbatch_normalization_3/moving_variance/local_step/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
Î
5batch_normalization_3/moving_variance/local_step/readIdentity0batch_normalization_3/moving_variance/local_step*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
: 
Ľ
+batch_normalization_3/AssignMovingAvg_1/subSub1batch_normalization_3/moving_variance/biased/readbatch_normalization_3/mul*
_output_shapes
:@*
T0
ł
+batch_normalization_3/AssignMovingAvg_1/mulMul+batch_normalization_3/AssignMovingAvg_1/sub-batch_normalization_3/AssignMovingAvg_1/decay*
_output_shapes
:@*
T0

1batch_normalization_3/AssignMovingAvg_1/AssignSub	AssignSub,batch_normalization_3/moving_variance/biased+batch_normalization_3/AssignMovingAvg_1/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:@
|
7batch_normalization_3/AssignMovingAvg_1/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

1batch_normalization_3/AssignMovingAvg_1/AssignAdd	AssignAdd0batch_normalization_3/moving_variance/local_step7batch_normalization_3/AssignMovingAvg_1/AssignAdd/value*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
: *
use_locking( *
T0
t
/batch_normalization_3/AssignMovingAvg_1/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ľ
-batch_normalization_3/AssignMovingAvg_1/sub_1Sub/batch_normalization_3/AssignMovingAvg_1/sub_1/x-batch_normalization_3/AssignMovingAvg_1/decay*
_output_shapes
: *
T0
ľ
+batch_normalization_3/AssignMovingAvg_1/PowPow-batch_normalization_3/AssignMovingAvg_1/sub_11batch_normalization_3/AssignMovingAvg_1/AssignAdd*
T0*
_output_shapes
: 
t
/batch_normalization_3/AssignMovingAvg_1/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ł
-batch_normalization_3/AssignMovingAvg_1/sub_2Sub/batch_normalization_3/AssignMovingAvg_1/sub_2/x+batch_normalization_3/AssignMovingAvg_1/Pow*
_output_shapes
: *
T0
Á
/batch_normalization_3/AssignMovingAvg_1/truedivRealDiv1batch_normalization_3/AssignMovingAvg_1/AssignSub-batch_normalization_3/AssignMovingAvg_1/sub_2*
_output_shapes
:@*
T0

'batch_normalization_3/AssignMovingAvg_1Assign%batch_normalization_3/moving_variance/batch_normalization_3/AssignMovingAvg_1/truediv*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes
:@
z
!batch_normalization_3/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_3/cond/switch_tIdentity#batch_normalization_3/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_3/cond/switch_fIdentity!batch_normalization_3/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_3/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 

#batch_normalization_3/cond/Switch_1Switch$batch_normalization_3/FusedBatchNorm"batch_normalization_3/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @
Ë
)batch_normalization_3/cond/FusedBatchNormFusedBatchNorm0batch_normalization_3/cond/FusedBatchNorm/Switch2batch_normalization_3/cond/FusedBatchNorm/Switch_12batch_normalization_3/cond/FusedBatchNorm/Switch_22batch_normalization_3/cond/FusedBatchNorm/Switch_32batch_normalization_3/cond/FusedBatchNorm/Switch_4*
T0*
data_formatNHWC*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙  @:@:@:@:@*
is_training( *
epsilon%o:
ę
0batch_normalization_3/cond/FusedBatchNorm/SwitchSwitchconv2d_3/BiasAdd"batch_normalization_3/cond/pred_id*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @*
T0*#
_class
loc:@conv2d_3/BiasAdd
Ý
2batch_normalization_3/cond/FusedBatchNorm/Switch_1Switch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id* 
_output_shapes
:@:@*
T0*.
_class$
" loc:@batch_normalization_3/gamma
Ű
2batch_normalization_3/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id* 
_output_shapes
:@:@*
T0*-
_class#
!loc:@batch_normalization_3/beta
é
2batch_normalization_3/cond/FusedBatchNorm/Switch_3Switch&batch_normalization_3/moving_mean/read"batch_normalization_3/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean* 
_output_shapes
:@:@
ń
2batch_normalization_3/cond/FusedBatchNorm/Switch_4Switch*batch_normalization_3/moving_variance/read"batch_normalization_3/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance* 
_output_shapes
:@:@
Ŕ
 batch_normalization_3/cond/MergeMerge)batch_normalization_3/cond/FusedBatchNorm%batch_normalization_3/cond/Switch_1:1*
T0*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙  @: 
u
activation_3/ReluRelu batch_normalization_3/cond/Merge*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
T0
v
conv2d_4/random_uniform/shapeConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
`
conv2d_4/random_uniform/minConst*
valueB
 *:Í˝*
dtype0*
_output_shapes
: 
`
conv2d_4/random_uniform/maxConst*
_output_shapes
: *
valueB
 *:Í=*
dtype0
ą
%conv2d_4/random_uniform/RandomUniformRandomUniformconv2d_4/random_uniform/shape*
seedą˙ĺ)*
T0*
dtype0*&
_output_shapes
:@@*
seed2ć/
}
conv2d_4/random_uniform/subSubconv2d_4/random_uniform/maxconv2d_4/random_uniform/min*
_output_shapes
: *
T0

conv2d_4/random_uniform/mulMul%conv2d_4/random_uniform/RandomUniformconv2d_4/random_uniform/sub*
T0*&
_output_shapes
:@@

conv2d_4/random_uniformAddconv2d_4/random_uniform/mulconv2d_4/random_uniform/min*&
_output_shapes
:@@*
T0

conv2d_4/kernel
VariableV2*&
_output_shapes
:@@*
	container *
shape:@@*
shared_name *
dtype0
Č
conv2d_4/kernel/AssignAssignconv2d_4/kernelconv2d_4/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:@@

conv2d_4/kernel/readIdentityconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:@@*
T0
[
conv2d_4/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
y
conv2d_4/bias
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
­
conv2d_4/bias/AssignAssignconv2d_4/biasconv2d_4/Const*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
:@
t
conv2d_4/bias/readIdentityconv2d_4/bias*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
:@

conv2d_4/convolutionConv2Dactivation_3/Reluconv2d_4/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @

conv2d_4/BiasAddBiasAddconv2d_4/convolutionconv2d_4/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
h
batch_normalization_4/ConstConst*
valueB@*  ?*
dtype0*
_output_shapes
:@

batch_normalization_4/gamma
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
ä
"batch_normalization_4/gamma/AssignAssignbatch_normalization_4/gammabatch_normalization_4/Const*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

 batch_normalization_4/gamma/readIdentitybatch_normalization_4/gamma*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:@
j
batch_normalization_4/Const_1Const*
valueB@*    *
dtype0*
_output_shapes
:@

batch_normalization_4/beta
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
ă
!batch_normalization_4/beta/AssignAssignbatch_normalization_4/betabatch_normalization_4/Const_1*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta

batch_normalization_4/beta/readIdentitybatch_normalization_4/beta*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:@
j
batch_normalization_4/Const_2Const*
valueB@*    *
dtype0*
_output_shapes
:@

!batch_normalization_4/moving_mean
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
ř
(batch_normalization_4/moving_mean/AssignAssign!batch_normalization_4/moving_meanbatch_normalization_4/Const_2*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
:@
°
&batch_normalization_4/moving_mean/readIdentity!batch_normalization_4/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:@
j
batch_normalization_4/Const_3Const*
_output_shapes
:@*
valueB@*  ?*
dtype0

%batch_normalization_4/moving_variance
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 

,batch_normalization_4/moving_variance/AssignAssign%batch_normalization_4/moving_variancebatch_normalization_4/Const_3*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
:@
ź
*batch_normalization_4/moving_variance/readIdentity%batch_normalization_4/moving_variance*
_output_shapes
:@*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance
`
batch_normalization_4/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
`
batch_normalization_4/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
×
$batch_normalization_4/FusedBatchNormFusedBatchNormconv2d_4/BiasAdd batch_normalization_4/gamma/readbatch_normalization_4/beta/readbatch_normalization_4/Const_4batch_normalization_4/Const_5*
T0*
data_formatNHWC*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙  @:@:@:@:@*
is_training(*
epsilon%o:
k
batch_normalization_4/ShapeShapeconv2d_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
s
)batch_normalization_4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+batch_normalization_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+batch_normalization_4/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ç
#batch_normalization_4/strided_sliceStridedSlicebatch_normalization_4/Shape)batch_normalization_4/strided_slice/stack+batch_normalization_4/strided_slice/stack_1+batch_normalization_4/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
m
batch_normalization_4/Shape_1Shapeconv2d_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
u
+batch_normalization_4/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_4/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-batch_normalization_4/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_4/strided_slice_1StridedSlicebatch_normalization_4/Shape_1+batch_normalization_4/strided_slice_1/stack-batch_normalization_4/strided_slice_1/stack_1-batch_normalization_4/strided_slice_1/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
m
batch_normalization_4/Shape_2Shapeconv2d_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
u
+batch_normalization_4/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
w
-batch_normalization_4/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_4/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ń
%batch_normalization_4/strided_slice_2StridedSlicebatch_normalization_4/Shape_2+batch_normalization_4/strided_slice_2/stack-batch_normalization_4/strided_slice_2/stack_1-batch_normalization_4/strided_slice_2/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
Ö
!batch_normalization_4/Rank/packedPack#batch_normalization_4/strided_slice%batch_normalization_4/strided_slice_1%batch_normalization_4/strided_slice_2*
T0*

axis *
N*
_output_shapes
:
\
batch_normalization_4/RankConst*
value	B :*
dtype0*
_output_shapes
: 
c
!batch_normalization_4/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!batch_normalization_4/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ž
batch_normalization_4/rangeRange!batch_normalization_4/range/startbatch_normalization_4/Rank!batch_normalization_4/range/delta*
_output_shapes
:*

Tidx0
Ő
 batch_normalization_4/Prod/inputPack#batch_normalization_4/strided_slice%batch_normalization_4/strided_slice_1%batch_normalization_4/strided_slice_2*
N*
_output_shapes
:*
T0*

axis 

batch_normalization_4/ProdProd batch_normalization_4/Prod/inputbatch_normalization_4/range*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

batch_normalization_4/Cast_2Castbatch_normalization_4/Prod*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
`
batch_normalization_4/sub/yConst*
valueB
 *Ĺ ?*
dtype0*
_output_shapes
: 
|
batch_normalization_4/subSubbatch_normalization_4/Cast_2batch_normalization_4/sub/y*
T0*
_output_shapes
: 

batch_normalization_4/truedivRealDivbatch_normalization_4/Cast_2batch_normalization_4/sub*
_output_shapes
: *
T0

batch_normalization_4/mulMul&batch_normalization_4/FusedBatchNorm:2batch_normalization_4/truediv*
T0*
_output_shapes
:@
p
+batch_normalization_4/AssignMovingAvg/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
˝
:batch_normalization_4/moving_mean/biased/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_4/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
Ę
(batch_normalization_4/moving_mean/biased
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_4/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ł
/batch_normalization_4/moving_mean/biased/AssignAssign(batch_normalization_4/moving_mean/biased:batch_normalization_4/moving_mean/biased/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(
ž
-batch_normalization_4/moving_mean/biased/readIdentity(batch_normalization_4/moving_mean/biased*
_output_shapes
:@*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean
š
>batch_normalization_4/moving_mean/local_step/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_4/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
Ć
,batch_normalization_4/moving_mean/local_step
VariableV2*4
_class*
(&loc:@batch_normalization_4/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ť
3batch_normalization_4/moving_mean/local_step/AssignAssign,batch_normalization_4/moving_mean/local_step>batch_normalization_4/moving_mean/local_step/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
: 
Â
1batch_normalization_4/moving_mean/local_step/readIdentity,batch_normalization_4/moving_mean/local_step*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean
Ź
)batch_normalization_4/AssignMovingAvg/subSub-batch_normalization_4/moving_mean/biased/read&batch_normalization_4/FusedBatchNorm:1*
_output_shapes
:@*
T0
­
)batch_normalization_4/AssignMovingAvg/mulMul)batch_normalization_4/AssignMovingAvg/sub+batch_normalization_4/AssignMovingAvg/decay*
T0*
_output_shapes
:@
˙
/batch_normalization_4/AssignMovingAvg/AssignSub	AssignSub(batch_normalization_4/moving_mean/biased)batch_normalization_4/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:@
z
5batch_normalization_4/AssignMovingAvg/AssignAdd/valueConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

/batch_normalization_4/AssignMovingAvg/AssignAdd	AssignAdd,batch_normalization_4/moving_mean/local_step5batch_normalization_4/AssignMovingAvg/AssignAdd/value*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
: 
r
-batch_normalization_4/AssignMovingAvg/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ż
+batch_normalization_4/AssignMovingAvg/sub_1Sub-batch_normalization_4/AssignMovingAvg/sub_1/x+batch_normalization_4/AssignMovingAvg/decay*
_output_shapes
: *
T0
Ż
)batch_normalization_4/AssignMovingAvg/PowPow+batch_normalization_4/AssignMovingAvg/sub_1/batch_normalization_4/AssignMovingAvg/AssignAdd*
T0*
_output_shapes
: 
r
-batch_normalization_4/AssignMovingAvg/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
­
+batch_normalization_4/AssignMovingAvg/sub_2Sub-batch_normalization_4/AssignMovingAvg/sub_2/x)batch_normalization_4/AssignMovingAvg/Pow*
_output_shapes
: *
T0
ť
-batch_normalization_4/AssignMovingAvg/truedivRealDiv/batch_normalization_4/AssignMovingAvg/AssignSub+batch_normalization_4/AssignMovingAvg/sub_2*
_output_shapes
:@*
T0

%batch_normalization_4/AssignMovingAvgAssign!batch_normalization_4/moving_mean-batch_normalization_4/AssignMovingAvg/truediv*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(
r
-batch_normalization_4/AssignMovingAvg_1/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ĺ
>batch_normalization_4/moving_variance/biased/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_4/moving_variance*
valueB@*    *
dtype0*
_output_shapes
:@
Ň
,batch_normalization_4/moving_variance/biased
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_4/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
ł
3batch_normalization_4/moving_variance/biased/AssignAssign,batch_normalization_4/moving_variance/biased>batch_normalization_4/moving_variance/biased/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance
Ę
1batch_normalization_4/moving_variance/biased/readIdentity,batch_normalization_4/moving_variance/biased*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:@*
T0
Á
Bbatch_normalization_4/moving_variance/local_step/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_4/moving_variance*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
0batch_normalization_4/moving_variance/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *8
_class.
,*loc:@batch_normalization_4/moving_variance*
	container 
ť
7batch_normalization_4/moving_variance/local_step/AssignAssign0batch_normalization_4/moving_variance/local_stepBbatch_normalization_4/moving_variance/local_step/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
: 
Î
5batch_normalization_4/moving_variance/local_step/readIdentity0batch_normalization_4/moving_variance/local_step*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
: 
Ľ
+batch_normalization_4/AssignMovingAvg_1/subSub1batch_normalization_4/moving_variance/biased/readbatch_normalization_4/mul*
_output_shapes
:@*
T0
ł
+batch_normalization_4/AssignMovingAvg_1/mulMul+batch_normalization_4/AssignMovingAvg_1/sub-batch_normalization_4/AssignMovingAvg_1/decay*
T0*
_output_shapes
:@

1batch_normalization_4/AssignMovingAvg_1/AssignSub	AssignSub,batch_normalization_4/moving_variance/biased+batch_normalization_4/AssignMovingAvg_1/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:@
|
7batch_normalization_4/AssignMovingAvg_1/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

1batch_normalization_4/AssignMovingAvg_1/AssignAdd	AssignAdd0batch_normalization_4/moving_variance/local_step7batch_normalization_4/AssignMovingAvg_1/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance
t
/batch_normalization_4/AssignMovingAvg_1/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ľ
-batch_normalization_4/AssignMovingAvg_1/sub_1Sub/batch_normalization_4/AssignMovingAvg_1/sub_1/x-batch_normalization_4/AssignMovingAvg_1/decay*
_output_shapes
: *
T0
ľ
+batch_normalization_4/AssignMovingAvg_1/PowPow-batch_normalization_4/AssignMovingAvg_1/sub_11batch_normalization_4/AssignMovingAvg_1/AssignAdd*
T0*
_output_shapes
: 
t
/batch_normalization_4/AssignMovingAvg_1/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ł
-batch_normalization_4/AssignMovingAvg_1/sub_2Sub/batch_normalization_4/AssignMovingAvg_1/sub_2/x+batch_normalization_4/AssignMovingAvg_1/Pow*
T0*
_output_shapes
: 
Á
/batch_normalization_4/AssignMovingAvg_1/truedivRealDiv1batch_normalization_4/AssignMovingAvg_1/AssignSub-batch_normalization_4/AssignMovingAvg_1/sub_2*
T0*
_output_shapes
:@

'batch_normalization_4/AssignMovingAvg_1Assign%batch_normalization_4/moving_variance/batch_normalization_4/AssignMovingAvg_1/truediv*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
z
!batch_normalization_4/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
u
#batch_normalization_4/cond/switch_tIdentity#batch_normalization_4/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_4/cond/switch_fIdentity!batch_normalization_4/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_4/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 

#batch_normalization_4/cond/Switch_1Switch$batch_normalization_4/FusedBatchNorm"batch_normalization_4/cond/pred_id*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @*
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm
Ë
)batch_normalization_4/cond/FusedBatchNormFusedBatchNorm0batch_normalization_4/cond/FusedBatchNorm/Switch2batch_normalization_4/cond/FusedBatchNorm/Switch_12batch_normalization_4/cond/FusedBatchNorm/Switch_22batch_normalization_4/cond/FusedBatchNorm/Switch_32batch_normalization_4/cond/FusedBatchNorm/Switch_4*
T0*
data_formatNHWC*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙  @:@:@:@:@*
is_training( *
epsilon%o:
ę
0batch_normalization_4/cond/FusedBatchNorm/SwitchSwitchconv2d_4/BiasAdd"batch_normalization_4/cond/pred_id*
T0*#
_class
loc:@conv2d_4/BiasAdd*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @
Ý
2batch_normalization_4/cond/FusedBatchNorm/Switch_1Switch batch_normalization_4/gamma/read"batch_normalization_4/cond/pred_id*.
_class$
" loc:@batch_normalization_4/gamma* 
_output_shapes
:@:@*
T0
Ű
2batch_normalization_4/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_4/cond/pred_id* 
_output_shapes
:@:@*
T0*-
_class#
!loc:@batch_normalization_4/beta
é
2batch_normalization_4/cond/FusedBatchNorm/Switch_3Switch&batch_normalization_4/moving_mean/read"batch_normalization_4/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean* 
_output_shapes
:@:@
ń
2batch_normalization_4/cond/FusedBatchNorm/Switch_4Switch*batch_normalization_4/moving_variance/read"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_4/moving_variance* 
_output_shapes
:@:@*
T0
Ŕ
 batch_normalization_4/cond/MergeMerge)batch_normalization_4/cond/FusedBatchNorm%batch_normalization_4/cond/Switch_1:1*
T0*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙  @: 
u
activation_4/ReluRelu batch_normalization_4/cond/Merge*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Á
max_pooling2d_2/MaxPoolMaxPoolactivation_4/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
v
conv2d_5/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
`
conv2d_5/random_uniform/minConst*
valueB
 *ď[q˝*
dtype0*
_output_shapes
: 
`
conv2d_5/random_uniform/maxConst*
valueB
 *ď[q=*
dtype0*
_output_shapes
: 
ł
%conv2d_5/random_uniform/RandomUniformRandomUniformconv2d_5/random_uniform/shape*
seedą˙ĺ)*
T0*
dtype0*'
_output_shapes
:@*
seed2źŽ
}
conv2d_5/random_uniform/subSubconv2d_5/random_uniform/maxconv2d_5/random_uniform/min*
T0*
_output_shapes
: 

conv2d_5/random_uniform/mulMul%conv2d_5/random_uniform/RandomUniformconv2d_5/random_uniform/sub*
T0*'
_output_shapes
:@

conv2d_5/random_uniformAddconv2d_5/random_uniform/mulconv2d_5/random_uniform/min*
T0*'
_output_shapes
:@

conv2d_5/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
É
conv2d_5/kernel/AssignAssignconv2d_5/kernelconv2d_5/random_uniform*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0

conv2d_5/kernel/readIdentityconv2d_5/kernel*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:@
]
conv2d_5/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
conv2d_5/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ž
conv2d_5/bias/AssignAssignconv2d_5/biasconv2d_5/Const*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes	
:
u
conv2d_5/bias/readIdentityconv2d_5/bias*
_output_shapes	
:*
T0* 
_class
loc:@conv2d_5/bias

conv2d_5/convolutionConv2Dmax_pooling2d_2/MaxPoolconv2d_5/kernel/read*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 

conv2d_5/BiasAddBiasAddconv2d_5/convolutionconv2d_5/bias/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
data_formatNHWC
j
batch_normalization_5/ConstConst*
valueB*  ?*
dtype0*
_output_shapes	
:

batch_normalization_5/gamma
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ĺ
"batch_normalization_5/gamma/AssignAssignbatch_normalization_5/gammabatch_normalization_5/Const*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:

 batch_normalization_5/gamma/readIdentitybatch_normalization_5/gamma*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:
l
batch_normalization_5/Const_1Const*
valueB*    *
dtype0*
_output_shapes	
:

batch_normalization_5/beta
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ä
!batch_normalization_5/beta/AssignAssignbatch_normalization_5/betabatch_normalization_5/Const_1*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:

batch_normalization_5/beta/readIdentitybatch_normalization_5/beta*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:
l
batch_normalization_5/Const_2Const*
valueB*    *
dtype0*
_output_shapes	
:

!batch_normalization_5/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ů
(batch_normalization_5/moving_mean/AssignAssign!batch_normalization_5/moving_meanbatch_normalization_5/Const_2*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ą
&batch_normalization_5/moving_mean/readIdentity!batch_normalization_5/moving_mean*
_output_shapes	
:*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
l
batch_normalization_5/Const_3Const*
valueB*  ?*
dtype0*
_output_shapes	
:

%batch_normalization_5/moving_variance
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 

,batch_normalization_5/moving_variance/AssignAssign%batch_normalization_5/moving_variancebatch_normalization_5/Const_3*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
˝
*batch_normalization_5/moving_variance/readIdentity%batch_normalization_5/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:
`
batch_normalization_5/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
`
batch_normalization_5/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
Ü
$batch_normalization_5/FusedBatchNormFusedBatchNormconv2d_5/BiasAdd batch_normalization_5/gamma/readbatch_normalization_5/beta/readbatch_normalization_5/Const_4batch_normalization_5/Const_5*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
is_training(*
epsilon%o:*
T0*
data_formatNHWC
k
batch_normalization_5/ShapeShapeconv2d_5/BiasAdd*
_output_shapes
:*
T0*
out_type0
s
)batch_normalization_5/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
u
+batch_normalization_5/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
u
+batch_normalization_5/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ç
#batch_normalization_5/strided_sliceStridedSlicebatch_normalization_5/Shape)batch_normalization_5/strided_slice/stack+batch_normalization_5/strided_slice/stack_1+batch_normalization_5/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
m
batch_normalization_5/Shape_1Shapeconv2d_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
u
+batch_normalization_5/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_5/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-batch_normalization_5/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_5/strided_slice_1StridedSlicebatch_normalization_5/Shape_1+batch_normalization_5/strided_slice_1/stack-batch_normalization_5/strided_slice_1/stack_1-batch_normalization_5/strided_slice_1/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
m
batch_normalization_5/Shape_2Shapeconv2d_5/BiasAdd*
out_type0*
_output_shapes
:*
T0
u
+batch_normalization_5/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_5/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_5/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_5/strided_slice_2StridedSlicebatch_normalization_5/Shape_2+batch_normalization_5/strided_slice_2/stack-batch_normalization_5/strided_slice_2/stack_1-batch_normalization_5/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
!batch_normalization_5/Rank/packedPack#batch_normalization_5/strided_slice%batch_normalization_5/strided_slice_1%batch_normalization_5/strided_slice_2*

axis *
N*
_output_shapes
:*
T0
\
batch_normalization_5/RankConst*
value	B :*
dtype0*
_output_shapes
: 
c
!batch_normalization_5/range/startConst*
_output_shapes
: *
value	B : *
dtype0
c
!batch_normalization_5/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ž
batch_normalization_5/rangeRange!batch_normalization_5/range/startbatch_normalization_5/Rank!batch_normalization_5/range/delta*

Tidx0*
_output_shapes
:
Ő
 batch_normalization_5/Prod/inputPack#batch_normalization_5/strided_slice%batch_normalization_5/strided_slice_1%batch_normalization_5/strided_slice_2*
T0*

axis *
N*
_output_shapes
:

batch_normalization_5/ProdProd batch_normalization_5/Prod/inputbatch_normalization_5/range*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

batch_normalization_5/Cast_2Castbatch_normalization_5/Prod*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
`
batch_normalization_5/sub/yConst*
valueB
 *Ĺ ?*
dtype0*
_output_shapes
: 
|
batch_normalization_5/subSubbatch_normalization_5/Cast_2batch_normalization_5/sub/y*
T0*
_output_shapes
: 

batch_normalization_5/truedivRealDivbatch_normalization_5/Cast_2batch_normalization_5/sub*
T0*
_output_shapes
: 

batch_normalization_5/mulMul&batch_normalization_5/FusedBatchNorm:2batch_normalization_5/truediv*
T0*
_output_shapes	
:
p
+batch_normalization_5/AssignMovingAvg/decayConst*
dtype0*
_output_shapes
: *
valueB
 *
×#<
ż
:batch_normalization_5/moving_mean/biased/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_5/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ě
(batch_normalization_5/moving_mean/biased
VariableV2*4
_class*
(&loc:@batch_normalization_5/moving_mean*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
¤
/batch_normalization_5/moving_mean/biased/AssignAssign(batch_normalization_5/moving_mean/biased:batch_normalization_5/moving_mean/biased/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:
ż
-batch_normalization_5/moving_mean/biased/readIdentity(batch_normalization_5/moving_mean/biased*
_output_shapes	
:*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
š
>batch_normalization_5/moving_mean/local_step/Initializer/zerosConst*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_5/moving_mean*
valueB
 *    *
dtype0
Ć
,batch_normalization_5/moving_mean/local_step
VariableV2*4
_class*
(&loc:@batch_normalization_5/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ť
3batch_normalization_5/moving_mean/local_step/AssignAssign,batch_normalization_5/moving_mean/local_step>batch_normalization_5/moving_mean/local_step/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes
: 
Â
1batch_normalization_5/moving_mean/local_step/readIdentity,batch_normalization_5/moving_mean/local_step*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
: 
­
)batch_normalization_5/AssignMovingAvg/subSub-batch_normalization_5/moving_mean/biased/read&batch_normalization_5/FusedBatchNorm:1*
_output_shapes	
:*
T0
Ž
)batch_normalization_5/AssignMovingAvg/mulMul)batch_normalization_5/AssignMovingAvg/sub+batch_normalization_5/AssignMovingAvg/decay*
T0*
_output_shapes	
:

/batch_normalization_5/AssignMovingAvg/AssignSub	AssignSub(batch_normalization_5/moving_mean/biased)batch_normalization_5/AssignMovingAvg/mul*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes	
:*
use_locking( 
z
5batch_normalization_5/AssignMovingAvg/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/batch_normalization_5/AssignMovingAvg/AssignAdd	AssignAdd,batch_normalization_5/moving_mean/local_step5batch_normalization_5/AssignMovingAvg/AssignAdd/value*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
: *
use_locking( *
T0
r
-batch_normalization_5/AssignMovingAvg/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ż
+batch_normalization_5/AssignMovingAvg/sub_1Sub-batch_normalization_5/AssignMovingAvg/sub_1/x+batch_normalization_5/AssignMovingAvg/decay*
T0*
_output_shapes
: 
Ż
)batch_normalization_5/AssignMovingAvg/PowPow+batch_normalization_5/AssignMovingAvg/sub_1/batch_normalization_5/AssignMovingAvg/AssignAdd*
T0*
_output_shapes
: 
r
-batch_normalization_5/AssignMovingAvg/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
­
+batch_normalization_5/AssignMovingAvg/sub_2Sub-batch_normalization_5/AssignMovingAvg/sub_2/x)batch_normalization_5/AssignMovingAvg/Pow*
_output_shapes
: *
T0
ź
-batch_normalization_5/AssignMovingAvg/truedivRealDiv/batch_normalization_5/AssignMovingAvg/AssignSub+batch_normalization_5/AssignMovingAvg/sub_2*
_output_shapes	
:*
T0

%batch_normalization_5/AssignMovingAvgAssign!batch_normalization_5/moving_mean-batch_normalization_5/AssignMovingAvg/truediv*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
r
-batch_normalization_5/AssignMovingAvg_1/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ç
>batch_normalization_5/moving_variance/biased/Initializer/zerosConst*
_output_shapes	
:*8
_class.
,*loc:@batch_normalization_5/moving_variance*
valueB*    *
dtype0
Ô
,batch_normalization_5/moving_variance/biased
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *8
_class.
,*loc:@batch_normalization_5/moving_variance*
	container *
shape:
´
3batch_normalization_5/moving_variance/biased/AssignAssign,batch_normalization_5/moving_variance/biased>batch_normalization_5/moving_variance/biased/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:
Ë
1batch_normalization_5/moving_variance/biased/readIdentity,batch_normalization_5/moving_variance/biased*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:*
T0
Á
Bbatch_normalization_5/moving_variance/local_step/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_5/moving_variance*
valueB
 *    *
dtype0*
_output_shapes
: 
Î
0batch_normalization_5/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: *
shared_name *8
_class.
,*loc:@batch_normalization_5/moving_variance*
	container *
shape: 
ť
7batch_normalization_5/moving_variance/local_step/AssignAssign0batch_normalization_5/moving_variance/local_stepBbatch_normalization_5/moving_variance/local_step/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes
: 
Î
5batch_normalization_5/moving_variance/local_step/readIdentity0batch_normalization_5/moving_variance/local_step*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance
Ś
+batch_normalization_5/AssignMovingAvg_1/subSub1batch_normalization_5/moving_variance/biased/readbatch_normalization_5/mul*
T0*
_output_shapes	
:
´
+batch_normalization_5/AssignMovingAvg_1/mulMul+batch_normalization_5/AssignMovingAvg_1/sub-batch_normalization_5/AssignMovingAvg_1/decay*
T0*
_output_shapes	
:

1batch_normalization_5/AssignMovingAvg_1/AssignSub	AssignSub,batch_normalization_5/moving_variance/biased+batch_normalization_5/AssignMovingAvg_1/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:
|
7batch_normalization_5/AssignMovingAvg_1/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

1batch_normalization_5/AssignMovingAvg_1/AssignAdd	AssignAdd0batch_normalization_5/moving_variance/local_step7batch_normalization_5/AssignMovingAvg_1/AssignAdd/value*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
: 
t
/batch_normalization_5/AssignMovingAvg_1/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ľ
-batch_normalization_5/AssignMovingAvg_1/sub_1Sub/batch_normalization_5/AssignMovingAvg_1/sub_1/x-batch_normalization_5/AssignMovingAvg_1/decay*
_output_shapes
: *
T0
ľ
+batch_normalization_5/AssignMovingAvg_1/PowPow-batch_normalization_5/AssignMovingAvg_1/sub_11batch_normalization_5/AssignMovingAvg_1/AssignAdd*
_output_shapes
: *
T0
t
/batch_normalization_5/AssignMovingAvg_1/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ł
-batch_normalization_5/AssignMovingAvg_1/sub_2Sub/batch_normalization_5/AssignMovingAvg_1/sub_2/x+batch_normalization_5/AssignMovingAvg_1/Pow*
T0*
_output_shapes
: 
Â
/batch_normalization_5/AssignMovingAvg_1/truedivRealDiv1batch_normalization_5/AssignMovingAvg_1/AssignSub-batch_normalization_5/AssignMovingAvg_1/sub_2*
T0*
_output_shapes	
:

'batch_normalization_5/AssignMovingAvg_1Assign%batch_normalization_5/moving_variance/batch_normalization_5/AssignMovingAvg_1/truediv*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
z
!batch_normalization_5/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_5/cond/switch_tIdentity#batch_normalization_5/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_5/cond/switch_fIdentity!batch_normalization_5/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_5/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 

#batch_normalization_5/cond/Switch_1Switch$batch_normalization_5/FusedBatchNorm"batch_normalization_5/cond/pred_id*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Đ
)batch_normalization_5/cond/FusedBatchNormFusedBatchNorm0batch_normalization_5/cond/FusedBatchNorm/Switch2batch_normalization_5/cond/FusedBatchNorm/Switch_12batch_normalization_5/cond/FusedBatchNorm/Switch_22batch_normalization_5/cond/FusedBatchNorm/Switch_32batch_normalization_5/cond/FusedBatchNorm/Switch_4*
epsilon%o:*
T0*
data_formatNHWC*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
is_training( 
ě
0batch_normalization_5/cond/FusedBatchNorm/SwitchSwitchconv2d_5/BiasAdd"batch_normalization_5/cond/pred_id*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*#
_class
loc:@conv2d_5/BiasAdd
ß
2batch_normalization_5/cond/FusedBatchNorm/Switch_1Switch batch_normalization_5/gamma/read"batch_normalization_5/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_5/gamma*"
_output_shapes
::
Ý
2batch_normalization_5/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_5/beta/read"batch_normalization_5/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_5/beta*"
_output_shapes
::
ë
2batch_normalization_5/cond/FusedBatchNorm/Switch_3Switch&batch_normalization_5/moving_mean/read"batch_normalization_5/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*"
_output_shapes
::
ó
2batch_normalization_5/cond/FusedBatchNorm/Switch_4Switch*batch_normalization_5/moving_variance/read"batch_normalization_5/cond/pred_id*8
_class.
,*loc:@batch_normalization_5/moving_variance*"
_output_shapes
::*
T0
Á
 batch_normalization_5/cond/MergeMerge)batch_normalization_5/cond/FusedBatchNorm%batch_normalization_5/cond/Switch_1:1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: *
T0*
N
v
activation_5/ReluRelu batch_normalization_5/cond/Merge*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
conv2d_6/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
`
conv2d_6/random_uniform/minConst*
_output_shapes
: *
valueB
 *ěQ˝*
dtype0
`
conv2d_6/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ěQ=*
dtype0
´
%conv2d_6/random_uniform/RandomUniformRandomUniformconv2d_6/random_uniform/shape*
T0*
dtype0*(
_output_shapes
:*
seed2ŇŇ*
seedą˙ĺ)
}
conv2d_6/random_uniform/subSubconv2d_6/random_uniform/maxconv2d_6/random_uniform/min*
T0*
_output_shapes
: 

conv2d_6/random_uniform/mulMul%conv2d_6/random_uniform/RandomUniformconv2d_6/random_uniform/sub*(
_output_shapes
:*
T0

conv2d_6/random_uniformAddconv2d_6/random_uniform/mulconv2d_6/random_uniform/min*(
_output_shapes
:*
T0

conv2d_6/kernel
VariableV2*(
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ę
conv2d_6/kernel/AssignAssignconv2d_6/kernelconv2d_6/random_uniform*"
_class
loc:@conv2d_6/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0

conv2d_6/kernel/readIdentityconv2d_6/kernel*(
_output_shapes
:*
T0*"
_class
loc:@conv2d_6/kernel
]
conv2d_6/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    
{
conv2d_6/bias
VariableV2*
_output_shapes	
:*
	container *
shape:*
shared_name *
dtype0
Ž
conv2d_6/bias/AssignAssignconv2d_6/biasconv2d_6/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias
u
conv2d_6/bias/readIdentityconv2d_6/bias*
T0* 
_class
loc:@conv2d_6/bias*
_output_shapes	
:

conv2d_6/convolutionConv2Dactivation_5/Reluconv2d_6/kernel/read*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC

conv2d_6/BiasAddBiasAddconv2d_6/convolutionconv2d_6/bias/read*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
j
batch_normalization_6/ConstConst*
valueB*  ?*
dtype0*
_output_shapes	
:

batch_normalization_6/gamma
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
ĺ
"batch_normalization_6/gamma/AssignAssignbatch_normalization_6/gammabatch_normalization_6/Const*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:

 batch_normalization_6/gamma/readIdentitybatch_normalization_6/gamma*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:
l
batch_normalization_6/Const_1Const*
dtype0*
_output_shapes	
:*
valueB*    

batch_normalization_6/beta
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ä
!batch_normalization_6/beta/AssignAssignbatch_normalization_6/betabatch_normalization_6/Const_1*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:

batch_normalization_6/beta/readIdentitybatch_normalization_6/beta*
_output_shapes	
:*
T0*-
_class#
!loc:@batch_normalization_6/beta
l
batch_normalization_6/Const_2Const*
valueB*    *
dtype0*
_output_shapes	
:

!batch_normalization_6/moving_mean
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
ů
(batch_normalization_6/moving_mean/AssignAssign!batch_normalization_6/moving_meanbatch_normalization_6/Const_2*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ą
&batch_normalization_6/moving_mean/readIdentity!batch_normalization_6/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes	
:
l
batch_normalization_6/Const_3Const*
valueB*  ?*
dtype0*
_output_shapes	
:

%batch_normalization_6/moving_variance
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 

,batch_normalization_6/moving_variance/AssignAssign%batch_normalization_6/moving_variancebatch_normalization_6/Const_3*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:
˝
*batch_normalization_6/moving_variance/readIdentity%batch_normalization_6/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes	
:
`
batch_normalization_6/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
`
batch_normalization_6/Const_5Const*
dtype0*
_output_shapes
: *
valueB 
Ü
$batch_normalization_6/FusedBatchNormFusedBatchNormconv2d_6/BiasAdd batch_normalization_6/gamma/readbatch_normalization_6/beta/readbatch_normalization_6/Const_4batch_normalization_6/Const_5*
epsilon%o:*
T0*
data_formatNHWC*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
is_training(
k
batch_normalization_6/ShapeShapeconv2d_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
s
)batch_normalization_6/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+batch_normalization_6/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
u
+batch_normalization_6/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ç
#batch_normalization_6/strided_sliceStridedSlicebatch_normalization_6/Shape)batch_normalization_6/strided_slice/stack+batch_normalization_6/strided_slice/stack_1+batch_normalization_6/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
m
batch_normalization_6/Shape_1Shapeconv2d_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
u
+batch_normalization_6/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_6/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_6/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_6/strided_slice_1StridedSlicebatch_normalization_6/Shape_1+batch_normalization_6/strided_slice_1/stack-batch_normalization_6/strided_slice_1/stack_1-batch_normalization_6/strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
m
batch_normalization_6/Shape_2Shapeconv2d_6/BiasAdd*
out_type0*
_output_shapes
:*
T0
u
+batch_normalization_6/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_6/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_6/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ń
%batch_normalization_6/strided_slice_2StridedSlicebatch_normalization_6/Shape_2+batch_normalization_6/strided_slice_2/stack-batch_normalization_6/strided_slice_2/stack_1-batch_normalization_6/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ö
!batch_normalization_6/Rank/packedPack#batch_normalization_6/strided_slice%batch_normalization_6/strided_slice_1%batch_normalization_6/strided_slice_2*
N*
_output_shapes
:*
T0*

axis 
\
batch_normalization_6/RankConst*
value	B :*
dtype0*
_output_shapes
: 
c
!batch_normalization_6/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!batch_normalization_6/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ž
batch_normalization_6/rangeRange!batch_normalization_6/range/startbatch_normalization_6/Rank!batch_normalization_6/range/delta*
_output_shapes
:*

Tidx0
Ő
 batch_normalization_6/Prod/inputPack#batch_normalization_6/strided_slice%batch_normalization_6/strided_slice_1%batch_normalization_6/strided_slice_2*
T0*

axis *
N*
_output_shapes
:

batch_normalization_6/ProdProd batch_normalization_6/Prod/inputbatch_normalization_6/range*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

batch_normalization_6/Cast_2Castbatch_normalization_6/Prod*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
`
batch_normalization_6/sub/yConst*
valueB
 *Ĺ ?*
dtype0*
_output_shapes
: 
|
batch_normalization_6/subSubbatch_normalization_6/Cast_2batch_normalization_6/sub/y*
T0*
_output_shapes
: 

batch_normalization_6/truedivRealDivbatch_normalization_6/Cast_2batch_normalization_6/sub*
T0*
_output_shapes
: 

batch_normalization_6/mulMul&batch_normalization_6/FusedBatchNorm:2batch_normalization_6/truediv*
_output_shapes	
:*
T0
p
+batch_normalization_6/AssignMovingAvg/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
ż
:batch_normalization_6/moving_mean/biased/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_6/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ě
(batch_normalization_6/moving_mean/biased
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *4
_class*
(&loc:@batch_normalization_6/moving_mean
¤
/batch_normalization_6/moving_mean/biased/AssignAssign(batch_normalization_6/moving_mean/biased:batch_normalization_6/moving_mean/biased/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(
ż
-batch_normalization_6/moving_mean/biased/readIdentity(batch_normalization_6/moving_mean/biased*
_output_shapes	
:*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean
š
>batch_normalization_6/moving_mean/local_step/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_6/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
Ć
,batch_normalization_6/moving_mean/local_step
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_6/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: 
Ť
3batch_normalization_6/moving_mean/local_step/AssignAssign,batch_normalization_6/moving_mean/local_step>batch_normalization_6/moving_mean/local_step/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes
: 
Â
1batch_normalization_6/moving_mean/local_step/readIdentity,batch_normalization_6/moving_mean/local_step*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean
­
)batch_normalization_6/AssignMovingAvg/subSub-batch_normalization_6/moving_mean/biased/read&batch_normalization_6/FusedBatchNorm:1*
T0*
_output_shapes	
:
Ž
)batch_normalization_6/AssignMovingAvg/mulMul)batch_normalization_6/AssignMovingAvg/sub+batch_normalization_6/AssignMovingAvg/decay*
T0*
_output_shapes	
:

/batch_normalization_6/AssignMovingAvg/AssignSub	AssignSub(batch_normalization_6/moving_mean/biased)batch_normalization_6/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes	
:
z
5batch_normalization_6/AssignMovingAvg/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/batch_normalization_6/AssignMovingAvg/AssignAdd	AssignAdd,batch_normalization_6/moving_mean/local_step5batch_normalization_6/AssignMovingAvg/AssignAdd/value*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
_output_shapes
: 
r
-batch_normalization_6/AssignMovingAvg/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ż
+batch_normalization_6/AssignMovingAvg/sub_1Sub-batch_normalization_6/AssignMovingAvg/sub_1/x+batch_normalization_6/AssignMovingAvg/decay*
_output_shapes
: *
T0
Ż
)batch_normalization_6/AssignMovingAvg/PowPow+batch_normalization_6/AssignMovingAvg/sub_1/batch_normalization_6/AssignMovingAvg/AssignAdd*
_output_shapes
: *
T0
r
-batch_normalization_6/AssignMovingAvg/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
­
+batch_normalization_6/AssignMovingAvg/sub_2Sub-batch_normalization_6/AssignMovingAvg/sub_2/x)batch_normalization_6/AssignMovingAvg/Pow*
T0*
_output_shapes
: 
ź
-batch_normalization_6/AssignMovingAvg/truedivRealDiv/batch_normalization_6/AssignMovingAvg/AssignSub+batch_normalization_6/AssignMovingAvg/sub_2*
T0*
_output_shapes	
:

%batch_normalization_6/AssignMovingAvgAssign!batch_normalization_6/moving_mean-batch_normalization_6/AssignMovingAvg/truediv*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ç
>batch_normalization_6/moving_variance/biased/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_6/moving_variance*
valueB*    *
dtype0*
_output_shapes	
:
Ô
,batch_normalization_6/moving_variance/biased
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *8
_class.
,*loc:@batch_normalization_6/moving_variance
´
3batch_normalization_6/moving_variance/biased/AssignAssign,batch_normalization_6/moving_variance/biased>batch_normalization_6/moving_variance/biased/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance
Ë
1batch_normalization_6/moving_variance/biased/readIdentity,batch_normalization_6/moving_variance/biased*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes	
:
Á
Bbatch_normalization_6/moving_variance/local_step/Initializer/zerosConst*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_6/moving_variance*
valueB
 *    *
dtype0
Î
0batch_normalization_6/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: *
shared_name *8
_class.
,*loc:@batch_normalization_6/moving_variance*
	container *
shape: 
ť
7batch_normalization_6/moving_variance/local_step/AssignAssign0batch_normalization_6/moving_variance/local_stepBbatch_normalization_6/moving_variance/local_step/Initializer/zeros*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
Î
5batch_normalization_6/moving_variance/local_step/readIdentity0batch_normalization_6/moving_variance/local_step*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
_output_shapes
: 
Ś
+batch_normalization_6/AssignMovingAvg_1/subSub1batch_normalization_6/moving_variance/biased/readbatch_normalization_6/mul*
T0*
_output_shapes	
:
´
+batch_normalization_6/AssignMovingAvg_1/mulMul+batch_normalization_6/AssignMovingAvg_1/sub-batch_normalization_6/AssignMovingAvg_1/decay*
_output_shapes	
:*
T0

1batch_normalization_6/AssignMovingAvg_1/AssignSub	AssignSub,batch_normalization_6/moving_variance/biased+batch_normalization_6/AssignMovingAvg_1/mul*
_output_shapes	
:*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance
|
7batch_normalization_6/AssignMovingAvg_1/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

1batch_normalization_6/AssignMovingAvg_1/AssignAdd	AssignAdd0batch_normalization_6/moving_variance/local_step7batch_normalization_6/AssignMovingAvg_1/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance
t
/batch_normalization_6/AssignMovingAvg_1/sub_1/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
ľ
-batch_normalization_6/AssignMovingAvg_1/sub_1Sub/batch_normalization_6/AssignMovingAvg_1/sub_1/x-batch_normalization_6/AssignMovingAvg_1/decay*
T0*
_output_shapes
: 
ľ
+batch_normalization_6/AssignMovingAvg_1/PowPow-batch_normalization_6/AssignMovingAvg_1/sub_11batch_normalization_6/AssignMovingAvg_1/AssignAdd*
T0*
_output_shapes
: 
t
/batch_normalization_6/AssignMovingAvg_1/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ł
-batch_normalization_6/AssignMovingAvg_1/sub_2Sub/batch_normalization_6/AssignMovingAvg_1/sub_2/x+batch_normalization_6/AssignMovingAvg_1/Pow*
T0*
_output_shapes
: 
Â
/batch_normalization_6/AssignMovingAvg_1/truedivRealDiv1batch_normalization_6/AssignMovingAvg_1/AssignSub-batch_normalization_6/AssignMovingAvg_1/sub_2*
T0*
_output_shapes	
:

'batch_normalization_6/AssignMovingAvg_1Assign%batch_normalization_6/moving_variance/batch_normalization_6/AssignMovingAvg_1/truediv*
_output_shapes	
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(
z
!batch_normalization_6/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_6/cond/switch_tIdentity#batch_normalization_6/cond/Switch:1*
_output_shapes
: *
T0

s
#batch_normalization_6/cond/switch_fIdentity!batch_normalization_6/cond/Switch*
_output_shapes
: *
T0

e
"batch_normalization_6/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 

#batch_normalization_6/cond/Switch_1Switch$batch_normalization_6/FusedBatchNorm"batch_normalization_6/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Đ
)batch_normalization_6/cond/FusedBatchNormFusedBatchNorm0batch_normalization_6/cond/FusedBatchNorm/Switch2batch_normalization_6/cond/FusedBatchNorm/Switch_12batch_normalization_6/cond/FusedBatchNorm/Switch_22batch_normalization_6/cond/FusedBatchNorm/Switch_32batch_normalization_6/cond/FusedBatchNorm/Switch_4*
T0*
data_formatNHWC*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:
ě
0batch_normalization_6/cond/FusedBatchNorm/SwitchSwitchconv2d_6/BiasAdd"batch_normalization_6/cond/pred_id*#
_class
loc:@conv2d_6/BiasAdd*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
ß
2batch_normalization_6/cond/FusedBatchNorm/Switch_1Switch batch_normalization_6/gamma/read"batch_normalization_6/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_6/gamma*"
_output_shapes
::
Ý
2batch_normalization_6/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_6/beta/read"batch_normalization_6/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_6/beta*"
_output_shapes
::
ë
2batch_normalization_6/cond/FusedBatchNorm/Switch_3Switch&batch_normalization_6/moving_mean/read"batch_normalization_6/cond/pred_id*"
_output_shapes
::*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean
ó
2batch_normalization_6/cond/FusedBatchNorm/Switch_4Switch*batch_normalization_6/moving_variance/read"batch_normalization_6/cond/pred_id*"
_output_shapes
::*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance
Á
 batch_normalization_6/cond/MergeMerge)batch_normalization_6/cond/FusedBatchNorm%batch_normalization_6/cond/Switch_1:1*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: *
T0
v
activation_6/ReluRelu batch_normalization_6/cond/Merge*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
conv2d_7/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
`
conv2d_7/random_uniform/minConst*
_output_shapes
: *
valueB
 *ěQ˝*
dtype0
`
conv2d_7/random_uniform/maxConst*
valueB
 *ěQ=*
dtype0*
_output_shapes
: 
´
%conv2d_7/random_uniform/RandomUniformRandomUniformconv2d_7/random_uniform/shape*
T0*
dtype0*(
_output_shapes
:*
seed2ĹÔ*
seedą˙ĺ)
}
conv2d_7/random_uniform/subSubconv2d_7/random_uniform/maxconv2d_7/random_uniform/min*
_output_shapes
: *
T0

conv2d_7/random_uniform/mulMul%conv2d_7/random_uniform/RandomUniformconv2d_7/random_uniform/sub*
T0*(
_output_shapes
:

conv2d_7/random_uniformAddconv2d_7/random_uniform/mulconv2d_7/random_uniform/min*
T0*(
_output_shapes
:

conv2d_7/kernel
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
Ę
conv2d_7/kernel/AssignAssignconv2d_7/kernelconv2d_7/random_uniform*
T0*"
_class
loc:@conv2d_7/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(

conv2d_7/kernel/readIdentityconv2d_7/kernel*(
_output_shapes
:*
T0*"
_class
loc:@conv2d_7/kernel
]
conv2d_7/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
conv2d_7/bias
VariableV2*
_output_shapes	
:*
	container *
shape:*
shared_name *
dtype0
Ž
conv2d_7/bias/AssignAssignconv2d_7/biasconv2d_7/Const*
use_locking(*
T0* 
_class
loc:@conv2d_7/bias*
validate_shape(*
_output_shapes	
:
u
conv2d_7/bias/readIdentityconv2d_7/bias*
T0* 
_class
loc:@conv2d_7/bias*
_output_shapes	
:

conv2d_7/convolutionConv2Dactivation_6/Reluconv2d_7/kernel/read*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations


conv2d_7/BiasAddBiasAddconv2d_7/convolutionconv2d_7/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
batch_normalization_7/ConstConst*
valueB*  ?*
dtype0*
_output_shapes	
:

batch_normalization_7/gamma
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
ĺ
"batch_normalization_7/gamma/AssignAssignbatch_normalization_7/gammabatch_normalization_7/Const*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

 batch_normalization_7/gamma/readIdentitybatch_normalization_7/gamma*
_output_shapes	
:*
T0*.
_class$
" loc:@batch_normalization_7/gamma
l
batch_normalization_7/Const_1Const*
dtype0*
_output_shapes	
:*
valueB*    

batch_normalization_7/beta
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
ä
!batch_normalization_7/beta/AssignAssignbatch_normalization_7/betabatch_normalization_7/Const_1*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:

batch_normalization_7/beta/readIdentitybatch_normalization_7/beta*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:
l
batch_normalization_7/Const_2Const*
_output_shapes	
:*
valueB*    *
dtype0

!batch_normalization_7/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
ů
(batch_normalization_7/moving_mean/AssignAssign!batch_normalization_7/moving_meanbatch_normalization_7/Const_2*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(
ą
&batch_normalization_7/moving_mean/readIdentity!batch_normalization_7/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:
l
batch_normalization_7/Const_3Const*
valueB*  ?*
dtype0*
_output_shapes	
:

%batch_normalization_7/moving_variance
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 

,batch_normalization_7/moving_variance/AssignAssign%batch_normalization_7/moving_variancebatch_normalization_7/Const_3*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:
˝
*batch_normalization_7/moving_variance/readIdentity%batch_normalization_7/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes	
:
`
batch_normalization_7/Const_4Const*
dtype0*
_output_shapes
: *
valueB 
`
batch_normalization_7/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
Ü
$batch_normalization_7/FusedBatchNormFusedBatchNormconv2d_7/BiasAdd batch_normalization_7/gamma/readbatch_normalization_7/beta/readbatch_normalization_7/Const_4batch_normalization_7/Const_5*
data_formatNHWC*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
is_training(*
epsilon%o:*
T0
k
batch_normalization_7/ShapeShapeconv2d_7/BiasAdd*
_output_shapes
:*
T0*
out_type0
s
)batch_normalization_7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
u
+batch_normalization_7/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
u
+batch_normalization_7/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ç
#batch_normalization_7/strided_sliceStridedSlicebatch_normalization_7/Shape)batch_normalization_7/strided_slice/stack+batch_normalization_7/strided_slice/stack_1+batch_normalization_7/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
m
batch_normalization_7/Shape_1Shapeconv2d_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
u
+batch_normalization_7/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_7/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_7/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_7/strided_slice_1StridedSlicebatch_normalization_7/Shape_1+batch_normalization_7/strided_slice_1/stack-batch_normalization_7/strided_slice_1/stack_1-batch_normalization_7/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
batch_normalization_7/Shape_2Shapeconv2d_7/BiasAdd*
_output_shapes
:*
T0*
out_type0
u
+batch_normalization_7/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_7/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-batch_normalization_7/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ń
%batch_normalization_7/strided_slice_2StridedSlicebatch_normalization_7/Shape_2+batch_normalization_7/strided_slice_2/stack-batch_normalization_7/strided_slice_2/stack_1-batch_normalization_7/strided_slice_2/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
Ö
!batch_normalization_7/Rank/packedPack#batch_normalization_7/strided_slice%batch_normalization_7/strided_slice_1%batch_normalization_7/strided_slice_2*
T0*

axis *
N*
_output_shapes
:
\
batch_normalization_7/RankConst*
dtype0*
_output_shapes
: *
value	B :
c
!batch_normalization_7/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!batch_normalization_7/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ž
batch_normalization_7/rangeRange!batch_normalization_7/range/startbatch_normalization_7/Rank!batch_normalization_7/range/delta*
_output_shapes
:*

Tidx0
Ő
 batch_normalization_7/Prod/inputPack#batch_normalization_7/strided_slice%batch_normalization_7/strided_slice_1%batch_normalization_7/strided_slice_2*
T0*

axis *
N*
_output_shapes
:

batch_normalization_7/ProdProd batch_normalization_7/Prod/inputbatch_normalization_7/range*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0

batch_normalization_7/Cast_2Castbatch_normalization_7/Prod*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
`
batch_normalization_7/sub/yConst*
valueB
 *Ĺ ?*
dtype0*
_output_shapes
: 
|
batch_normalization_7/subSubbatch_normalization_7/Cast_2batch_normalization_7/sub/y*
_output_shapes
: *
T0

batch_normalization_7/truedivRealDivbatch_normalization_7/Cast_2batch_normalization_7/sub*
_output_shapes
: *
T0

batch_normalization_7/mulMul&batch_normalization_7/FusedBatchNorm:2batch_normalization_7/truediv*
T0*
_output_shapes	
:
p
+batch_normalization_7/AssignMovingAvg/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
ż
:batch_normalization_7/moving_mean/biased/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_7/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ě
(batch_normalization_7/moving_mean/biased
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_7/moving_mean*
	container *
shape:*
dtype0*
_output_shapes	
:
¤
/batch_normalization_7/moving_mean/biased/AssignAssign(batch_normalization_7/moving_mean/biased:batch_normalization_7/moving_mean/biased/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean
ż
-batch_normalization_7/moving_mean/biased/readIdentity(batch_normalization_7/moving_mean/biased*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:
š
>batch_normalization_7/moving_mean/local_step/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_7/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
Ć
,batch_normalization_7/moving_mean/local_step
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *4
_class*
(&loc:@batch_normalization_7/moving_mean
Ť
3batch_normalization_7/moving_mean/local_step/AssignAssign,batch_normalization_7/moving_mean/local_step>batch_normalization_7/moving_mean/local_step/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(
Â
1batch_normalization_7/moving_mean/local_step/readIdentity,batch_normalization_7/moving_mean/local_step*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
: 
­
)batch_normalization_7/AssignMovingAvg/subSub-batch_normalization_7/moving_mean/biased/read&batch_normalization_7/FusedBatchNorm:1*
T0*
_output_shapes	
:
Ž
)batch_normalization_7/AssignMovingAvg/mulMul)batch_normalization_7/AssignMovingAvg/sub+batch_normalization_7/AssignMovingAvg/decay*
T0*
_output_shapes	
:

/batch_normalization_7/AssignMovingAvg/AssignSub	AssignSub(batch_normalization_7/moving_mean/biased)batch_normalization_7/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes	
:
z
5batch_normalization_7/AssignMovingAvg/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

/batch_normalization_7/AssignMovingAvg/AssignAdd	AssignAdd,batch_normalization_7/moving_mean/local_step5batch_normalization_7/AssignMovingAvg/AssignAdd/value*4
_class*
(&loc:@batch_normalization_7/moving_mean*
_output_shapes
: *
use_locking( *
T0
r
-batch_normalization_7/AssignMovingAvg/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ż
+batch_normalization_7/AssignMovingAvg/sub_1Sub-batch_normalization_7/AssignMovingAvg/sub_1/x+batch_normalization_7/AssignMovingAvg/decay*
_output_shapes
: *
T0
Ż
)batch_normalization_7/AssignMovingAvg/PowPow+batch_normalization_7/AssignMovingAvg/sub_1/batch_normalization_7/AssignMovingAvg/AssignAdd*
T0*
_output_shapes
: 
r
-batch_normalization_7/AssignMovingAvg/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
­
+batch_normalization_7/AssignMovingAvg/sub_2Sub-batch_normalization_7/AssignMovingAvg/sub_2/x)batch_normalization_7/AssignMovingAvg/Pow*
T0*
_output_shapes
: 
ź
-batch_normalization_7/AssignMovingAvg/truedivRealDiv/batch_normalization_7/AssignMovingAvg/AssignSub+batch_normalization_7/AssignMovingAvg/sub_2*
T0*
_output_shapes	
:

%batch_normalization_7/AssignMovingAvgAssign!batch_normalization_7/moving_mean-batch_normalization_7/AssignMovingAvg/truediv*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean
r
-batch_normalization_7/AssignMovingAvg_1/decayConst*
dtype0*
_output_shapes
: *
valueB
 *
×#<
Ç
>batch_normalization_7/moving_variance/biased/Initializer/zerosConst*8
_class.
,*loc:@batch_normalization_7/moving_variance*
valueB*    *
dtype0*
_output_shapes	
:
Ô
,batch_normalization_7/moving_variance/biased
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_7/moving_variance*
	container *
shape:*
dtype0*
_output_shapes	
:
´
3batch_normalization_7/moving_variance/biased/AssignAssign,batch_normalization_7/moving_variance/biased>batch_normalization_7/moving_variance/biased/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:
Ë
1batch_normalization_7/moving_variance/biased/readIdentity,batch_normalization_7/moving_variance/biased*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes	
:*
T0
Á
Bbatch_normalization_7/moving_variance/local_step/Initializer/zerosConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_7/moving_variance*
valueB
 *    
Î
0batch_normalization_7/moving_variance/local_step
VariableV2*8
_class.
,*loc:@batch_normalization_7/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
ť
7batch_normalization_7/moving_variance/local_step/AssignAssign0batch_normalization_7/moving_variance/local_stepBbatch_normalization_7/moving_variance/local_step/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes
: 
Î
5batch_normalization_7/moving_variance/local_step/readIdentity0batch_normalization_7/moving_variance/local_step*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
: 
Ś
+batch_normalization_7/AssignMovingAvg_1/subSub1batch_normalization_7/moving_variance/biased/readbatch_normalization_7/mul*
T0*
_output_shapes	
:
´
+batch_normalization_7/AssignMovingAvg_1/mulMul+batch_normalization_7/AssignMovingAvg_1/sub-batch_normalization_7/AssignMovingAvg_1/decay*
T0*
_output_shapes	
:

1batch_normalization_7/AssignMovingAvg_1/AssignSub	AssignSub,batch_normalization_7/moving_variance/biased+batch_normalization_7/AssignMovingAvg_1/mul*
_output_shapes	
:*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance
|
7batch_normalization_7/AssignMovingAvg_1/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

1batch_normalization_7/AssignMovingAvg_1/AssignAdd	AssignAdd0batch_normalization_7/moving_variance/local_step7batch_normalization_7/AssignMovingAvg_1/AssignAdd/value*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
_output_shapes
: 
t
/batch_normalization_7/AssignMovingAvg_1/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ľ
-batch_normalization_7/AssignMovingAvg_1/sub_1Sub/batch_normalization_7/AssignMovingAvg_1/sub_1/x-batch_normalization_7/AssignMovingAvg_1/decay*
_output_shapes
: *
T0
ľ
+batch_normalization_7/AssignMovingAvg_1/PowPow-batch_normalization_7/AssignMovingAvg_1/sub_11batch_normalization_7/AssignMovingAvg_1/AssignAdd*
T0*
_output_shapes
: 
t
/batch_normalization_7/AssignMovingAvg_1/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
ł
-batch_normalization_7/AssignMovingAvg_1/sub_2Sub/batch_normalization_7/AssignMovingAvg_1/sub_2/x+batch_normalization_7/AssignMovingAvg_1/Pow*
T0*
_output_shapes
: 
Â
/batch_normalization_7/AssignMovingAvg_1/truedivRealDiv1batch_normalization_7/AssignMovingAvg_1/AssignSub-batch_normalization_7/AssignMovingAvg_1/sub_2*
T0*
_output_shapes	
:

'batch_normalization_7/AssignMovingAvg_1Assign%batch_normalization_7/moving_variance/batch_normalization_7/AssignMovingAvg_1/truediv*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance
z
!batch_normalization_7/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

u
#batch_normalization_7/cond/switch_tIdentity#batch_normalization_7/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_7/cond/switch_fIdentity!batch_normalization_7/cond/Switch*
T0
*
_output_shapes
: 
e
"batch_normalization_7/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0


#batch_normalization_7/cond/Switch_1Switch$batch_normalization_7/FusedBatchNorm"batch_normalization_7/cond/pred_id*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm
Đ
)batch_normalization_7/cond/FusedBatchNormFusedBatchNorm0batch_normalization_7/cond/FusedBatchNorm/Switch2batch_normalization_7/cond/FusedBatchNorm/Switch_12batch_normalization_7/cond/FusedBatchNorm/Switch_22batch_normalization_7/cond/FusedBatchNorm/Switch_32batch_normalization_7/cond/FusedBatchNorm/Switch_4*
data_formatNHWC*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
is_training( *
epsilon%o:*
T0
ě
0batch_normalization_7/cond/FusedBatchNorm/SwitchSwitchconv2d_7/BiasAdd"batch_normalization_7/cond/pred_id*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*#
_class
loc:@conv2d_7/BiasAdd
ß
2batch_normalization_7/cond/FusedBatchNorm/Switch_1Switch batch_normalization_7/gamma/read"batch_normalization_7/cond/pred_id*"
_output_shapes
::*
T0*.
_class$
" loc:@batch_normalization_7/gamma
Ý
2batch_normalization_7/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_7/beta/read"batch_normalization_7/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_7/beta*"
_output_shapes
::
ë
2batch_normalization_7/cond/FusedBatchNorm/Switch_3Switch&batch_normalization_7/moving_mean/read"batch_normalization_7/cond/pred_id*"
_output_shapes
::*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean
ó
2batch_normalization_7/cond/FusedBatchNorm/Switch_4Switch*batch_normalization_7/moving_variance/read"batch_normalization_7/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*"
_output_shapes
::
Á
 batch_normalization_7/cond/MergeMerge)batch_normalization_7/cond/FusedBatchNorm%batch_normalization_7/cond/Switch_1:1*
T0*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: 
v
activation_7/ReluRelu batch_normalization_7/cond/Merge*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Â
max_pooling2d_3/MaxPoolMaxPoolactivation_7/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
reshape_1/ShapeShapemax_pooling2d_3/MaxPool*
out_type0*
_output_shapes
:*
T0
g
reshape_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
i
reshape_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ť
reshape_1/strided_sliceStridedSlicereshape_1/Shapereshape_1/strided_slice/stackreshape_1/strided_slice/stack_1reshape_1/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
\
reshape_1/Reshape/shape/2Const*
dtype0*
_output_shapes
: *
value
B :
¨
reshape_1/Reshape/shapePackreshape_1/strided_slicereshape_1/Reshape/shape/1reshape_1/Reshape/shape/2*
T0*

axis *
N*
_output_shapes
:

reshape_1/ReshapeReshapemax_pooling2d_3/MaxPoolreshape_1/Reshape/shape*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
x
'time_distributed_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
j
%time_distributed_1/random_uniform/minConst*
valueB
 *7˝*
dtype0*
_output_shapes
: 
j
%time_distributed_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *7=*
dtype0
ż
/time_distributed_1/random_uniform/RandomUniformRandomUniform'time_distributed_1/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
*
seed2ŰX*
seedą˙ĺ)

%time_distributed_1/random_uniform/subSub%time_distributed_1/random_uniform/max%time_distributed_1/random_uniform/min*
_output_shapes
: *
T0
Ż
%time_distributed_1/random_uniform/mulMul/time_distributed_1/random_uniform/RandomUniform%time_distributed_1/random_uniform/sub* 
_output_shapes
:
*
T0
Ą
!time_distributed_1/random_uniformAdd%time_distributed_1/random_uniform/mul%time_distributed_1/random_uniform/min* 
_output_shapes
:
*
T0

time_distributed_1/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
	container *
shape:
*
shared_name 
ę
 time_distributed_1/kernel/AssignAssigntime_distributed_1/kernel!time_distributed_1/random_uniform* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@time_distributed_1/kernel*
validate_shape(

time_distributed_1/kernel/readIdentitytime_distributed_1/kernel* 
_output_shapes
:
*
T0*,
_class"
 loc:@time_distributed_1/kernel
g
time_distributed_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:

time_distributed_1/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ö
time_distributed_1/bias/AssignAssigntime_distributed_1/biastime_distributed_1/Const**
_class 
loc:@time_distributed_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

time_distributed_1/bias/readIdentitytime_distributed_1/bias*
_output_shapes	
:*
T0**
_class 
loc:@time_distributed_1/bias
q
 time_distributed_1/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:

time_distributed_1/ReshapeReshapereshape_1/Reshape time_distributed_1/Reshape/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
¸
time_distributed_1/MatMulMatMultime_distributed_1/Reshapetime_distributed_1/kernel/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
¨
time_distributed_1/BiasAddBiasAddtime_distributed_1/MatMultime_distributed_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
time_distributed_1/ReluRelutime_distributed_1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
"time_distributed_1/Reshape_1/shapeConst*!
valueB"˙˙˙˙      *
dtype0*
_output_shapes
:
Š
time_distributed_1/Reshape_1Reshapetime_distributed_1/Relu"time_distributed_1/Reshape_1/shape*
T0*
Tshape0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
1global_average_pooling1d_1/Mean/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Č
global_average_pooling1d_1/MeanMeantime_distributed_1/Reshape_11global_average_pooling1d_1/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
vad_fc2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
vad_fc2/random_uniform/minConst*
valueB
 *   ž*
dtype0*
_output_shapes
: 
_
vad_fc2/random_uniform/maxConst*
valueB
 *   >*
dtype0*
_output_shapes
: 
Ş
$vad_fc2/random_uniform/RandomUniformRandomUniformvad_fc2/random_uniform/shape*
seedą˙ĺ)*
T0*
dtype0* 
_output_shapes
:
*
seed2Ź
z
vad_fc2/random_uniform/subSubvad_fc2/random_uniform/maxvad_fc2/random_uniform/min*
T0*
_output_shapes
: 

vad_fc2/random_uniform/mulMul$vad_fc2/random_uniform/RandomUniformvad_fc2/random_uniform/sub*
T0* 
_output_shapes
:


vad_fc2/random_uniformAddvad_fc2/random_uniform/mulvad_fc2/random_uniform/min*
T0* 
_output_shapes
:


vad_fc2/kernel
VariableV2*
shared_name *
dtype0* 
_output_shapes
:
*
	container *
shape:

ž
vad_fc2/kernel/AssignAssignvad_fc2/kernelvad_fc2/random_uniform*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*!
_class
loc:@vad_fc2/kernel
}
vad_fc2/kernel/readIdentityvad_fc2/kernel*
T0*!
_class
loc:@vad_fc2/kernel* 
_output_shapes
:

\
vad_fc2/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
z
vad_fc2/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ş
vad_fc2/bias/AssignAssignvad_fc2/biasvad_fc2/Const*
use_locking(*
T0*
_class
loc:@vad_fc2/bias*
validate_shape(*
_output_shapes	
:
r
vad_fc2/bias/readIdentityvad_fc2/bias*
_class
loc:@vad_fc2/bias*
_output_shapes	
:*
T0
§
vad_fc2/MatMulMatMulglobal_average_pooling1d_1/Meanvad_fc2/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

vad_fc2/BiasAddBiasAddvad_fc2/MatMulvad_fc2/bias/read*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
\
vad_bn2/ConstConst*
valueB*  ?*
dtype0*
_output_shapes	
:
{
vad_bn2/gamma
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
­
vad_bn2/gamma/AssignAssignvad_bn2/gammavad_bn2/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@vad_bn2/gamma
u
vad_bn2/gamma/readIdentityvad_bn2/gamma*
T0* 
_class
loc:@vad_bn2/gamma*
_output_shapes	
:
^
vad_bn2/Const_1Const*
valueB*    *
dtype0*
_output_shapes	
:
z
vad_bn2/beta
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ź
vad_bn2/beta/AssignAssignvad_bn2/betavad_bn2/Const_1*
use_locking(*
T0*
_class
loc:@vad_bn2/beta*
validate_shape(*
_output_shapes	
:
r
vad_bn2/beta/readIdentityvad_bn2/beta*
_output_shapes	
:*
T0*
_class
loc:@vad_bn2/beta
^
vad_bn2/Const_2Const*
valueB*    *
dtype0*
_output_shapes	
:

vad_bn2/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Á
vad_bn2/moving_mean/AssignAssignvad_bn2/moving_meanvad_bn2/Const_2*
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(

vad_bn2/moving_mean/readIdentityvad_bn2/moving_mean*
T0*&
_class
loc:@vad_bn2/moving_mean*
_output_shapes	
:
^
vad_bn2/Const_3Const*
valueB*  ?*
dtype0*
_output_shapes	
:

vad_bn2/moving_variance
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Í
vad_bn2/moving_variance/AssignAssignvad_bn2/moving_variancevad_bn2/Const_3*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0**
_class 
loc:@vad_bn2/moving_variance

vad_bn2/moving_variance/readIdentityvad_bn2/moving_variance**
_class 
loc:@vad_bn2/moving_variance*
_output_shapes	
:*
T0
p
&vad_bn2/moments/mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:

vad_bn2/moments/meanMeanvad_fc2/BiasAdd&vad_bn2/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes
:	
l
vad_bn2/moments/StopGradientStopGradientvad_bn2/moments/mean*
T0*
_output_shapes
:	

!vad_bn2/moments/SquaredDifferenceSquaredDifferencevad_fc2/BiasAddvad_bn2/moments/StopGradient*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
*vad_bn2/moments/variance/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
ś
vad_bn2/moments/varianceMean!vad_bn2/moments/SquaredDifference*vad_bn2/moments/variance/reduction_indices*
_output_shapes
:	*
	keep_dims(*

Tidx0*
T0
u
vad_bn2/moments/SqueezeSqueezevad_bn2/moments/mean*
T0*
_output_shapes	
:*
squeeze_dims
 
{
vad_bn2/moments/Squeeze_1Squeezevad_bn2/moments/variance*
_output_shapes	
:*
squeeze_dims
 *
T0
\
vad_bn2/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
v
vad_bn2/batchnorm/addAddvad_bn2/moments/Squeeze_1vad_bn2/batchnorm/add/y*
T0*
_output_shapes	
:
]
vad_bn2/batchnorm/RsqrtRsqrtvad_bn2/batchnorm/add*
T0*
_output_shapes	
:
o
vad_bn2/batchnorm/mulMulvad_bn2/batchnorm/Rsqrtvad_bn2/gamma/read*
T0*
_output_shapes	
:
y
vad_bn2/batchnorm/mul_1Mulvad_fc2/BiasAddvad_bn2/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
vad_bn2/batchnorm/mul_2Mulvad_bn2/moments/Squeezevad_bn2/batchnorm/mul*
T0*
_output_shapes	
:
n
vad_bn2/batchnorm/subSubvad_bn2/beta/readvad_bn2/batchnorm/mul_2*
_output_shapes	
:*
T0

vad_bn2/batchnorm/add_1Addvad_bn2/batchnorm/mul_1vad_bn2/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
vad_bn2/ShapeShapevad_fc2/BiasAdd*
_output_shapes
:*
T0*
out_type0
e
vad_bn2/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
g
vad_bn2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
g
vad_bn2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
vad_bn2/strided_sliceStridedSlicevad_bn2/Shapevad_bn2/strided_slice/stackvad_bn2/strided_slice/stack_1vad_bn2/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
l
vad_bn2/Rank/packedPackvad_bn2/strided_slice*
_output_shapes
:*
T0*

axis *
N
N
vad_bn2/RankConst*
value	B :*
dtype0*
_output_shapes
: 
U
vad_bn2/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
U
vad_bn2/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
v
vad_bn2/rangeRangevad_bn2/range/startvad_bn2/Rankvad_bn2/range/delta*
_output_shapes
:*

Tidx0
k
vad_bn2/Prod/inputPackvad_bn2/strided_slice*
T0*

axis *
N*
_output_shapes
:
u
vad_bn2/ProdProdvad_bn2/Prod/inputvad_bn2/range*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
b
vad_bn2/CastCastvad_bn2/Prod*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
R
vad_bn2/sub/yConst*
valueB
 *Ĺ ?*
dtype0*
_output_shapes
: 
P
vad_bn2/subSubvad_bn2/Castvad_bn2/sub/y*
_output_shapes
: *
T0
V
vad_bn2/truedivRealDivvad_bn2/Castvad_bn2/sub*
_output_shapes
: *
T0
d
vad_bn2/mulMulvad_bn2/moments/Squeeze_1vad_bn2/truediv*
T0*
_output_shapes	
:
b
vad_bn2/AssignMovingAvg/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ł
,vad_bn2/moving_mean/biased/Initializer/zerosConst*&
_class
loc:@vad_bn2/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
°
vad_bn2/moving_mean/biased
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@vad_bn2/moving_mean*
	container *
shape:
ě
!vad_bn2/moving_mean/biased/AssignAssignvad_bn2/moving_mean/biased,vad_bn2/moving_mean/biased/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(*
_output_shapes	
:

vad_bn2/moving_mean/biased/readIdentityvad_bn2/moving_mean/biased*
_output_shapes	
:*
T0*&
_class
loc:@vad_bn2/moving_mean

0vad_bn2/moving_mean/local_step/Initializer/zerosConst*
dtype0*
_output_shapes
: *&
_class
loc:@vad_bn2/moving_mean*
valueB
 *    
Ş
vad_bn2/moving_mean/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *&
_class
loc:@vad_bn2/moving_mean*
	container 
ó
%vad_bn2/moving_mean/local_step/AssignAssignvad_bn2/moving_mean/local_step0vad_bn2/moving_mean/local_step/Initializer/zeros*
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(

#vad_bn2/moving_mean/local_step/readIdentityvad_bn2/moving_mean/local_step*
T0*&
_class
loc:@vad_bn2/moving_mean*
_output_shapes
: 

vad_bn2/AssignMovingAvg/subSubvad_bn2/moving_mean/biased/readvad_bn2/moments/Squeeze*
T0*
_output_shapes	
:

vad_bn2/AssignMovingAvg/mulMulvad_bn2/AssignMovingAvg/subvad_bn2/AssignMovingAvg/decay*
T0*
_output_shapes	
:
Č
!vad_bn2/AssignMovingAvg/AssignSub	AssignSubvad_bn2/moving_mean/biasedvad_bn2/AssignMovingAvg/mul*
use_locking( *
T0*&
_class
loc:@vad_bn2/moving_mean*
_output_shapes	
:
l
'vad_bn2/AssignMovingAvg/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ó
!vad_bn2/AssignMovingAvg/AssignAdd	AssignAddvad_bn2/moving_mean/local_step'vad_bn2/AssignMovingAvg/AssignAdd/value*
use_locking( *
T0*&
_class
loc:@vad_bn2/moving_mean*
_output_shapes
: 
d
vad_bn2/AssignMovingAvg/sub_1/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

vad_bn2/AssignMovingAvg/sub_1Subvad_bn2/AssignMovingAvg/sub_1/xvad_bn2/AssignMovingAvg/decay*
_output_shapes
: *
T0

vad_bn2/AssignMovingAvg/PowPowvad_bn2/AssignMovingAvg/sub_1!vad_bn2/AssignMovingAvg/AssignAdd*
T0*
_output_shapes
: 
d
vad_bn2/AssignMovingAvg/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

vad_bn2/AssignMovingAvg/sub_2Subvad_bn2/AssignMovingAvg/sub_2/xvad_bn2/AssignMovingAvg/Pow*
T0*
_output_shapes
: 

vad_bn2/AssignMovingAvg/truedivRealDiv!vad_bn2/AssignMovingAvg/AssignSubvad_bn2/AssignMovingAvg/sub_2*
_output_shapes	
:*
T0
Î
vad_bn2/AssignMovingAvgAssignvad_bn2/moving_meanvad_bn2/AssignMovingAvg/truediv*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
d
vad_bn2/AssignMovingAvg_1/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ť
0vad_bn2/moving_variance/biased/Initializer/zerosConst**
_class 
loc:@vad_bn2/moving_variance*
valueB*    *
dtype0*
_output_shapes	
:
¸
vad_bn2/moving_variance/biased
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name **
_class 
loc:@vad_bn2/moving_variance*
	container 
ü
%vad_bn2/moving_variance/biased/AssignAssignvad_bn2/moving_variance/biased0vad_bn2/moving_variance/biased/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@vad_bn2/moving_variance*
validate_shape(*
_output_shapes	
:
Ą
#vad_bn2/moving_variance/biased/readIdentityvad_bn2/moving_variance/biased*
T0**
_class 
loc:@vad_bn2/moving_variance*
_output_shapes	
:
Ľ
4vad_bn2/moving_variance/local_step/Initializer/zerosConst**
_class 
loc:@vad_bn2/moving_variance*
valueB
 *    *
dtype0*
_output_shapes
: 
˛
"vad_bn2/moving_variance/local_step
VariableV2**
_class 
loc:@vad_bn2/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 

)vad_bn2/moving_variance/local_step/AssignAssign"vad_bn2/moving_variance/local_step4vad_bn2/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0**
_class 
loc:@vad_bn2/moving_variance*
validate_shape(
¤
'vad_bn2/moving_variance/local_step/readIdentity"vad_bn2/moving_variance/local_step*
T0**
_class 
loc:@vad_bn2/moving_variance*
_output_shapes
: 
|
vad_bn2/AssignMovingAvg_1/subSub#vad_bn2/moving_variance/biased/readvad_bn2/mul*
_output_shapes	
:*
T0

vad_bn2/AssignMovingAvg_1/mulMulvad_bn2/AssignMovingAvg_1/subvad_bn2/AssignMovingAvg_1/decay*
T0*
_output_shapes	
:
Ô
#vad_bn2/AssignMovingAvg_1/AssignSub	AssignSubvad_bn2/moving_variance/biasedvad_bn2/AssignMovingAvg_1/mul*
_output_shapes	
:*
use_locking( *
T0**
_class 
loc:@vad_bn2/moving_variance
n
)vad_bn2/AssignMovingAvg_1/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ß
#vad_bn2/AssignMovingAvg_1/AssignAdd	AssignAdd"vad_bn2/moving_variance/local_step)vad_bn2/AssignMovingAvg_1/AssignAdd/value**
_class 
loc:@vad_bn2/moving_variance*
_output_shapes
: *
use_locking( *
T0
f
!vad_bn2/AssignMovingAvg_1/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

vad_bn2/AssignMovingAvg_1/sub_1Sub!vad_bn2/AssignMovingAvg_1/sub_1/xvad_bn2/AssignMovingAvg_1/decay*
T0*
_output_shapes
: 

vad_bn2/AssignMovingAvg_1/PowPowvad_bn2/AssignMovingAvg_1/sub_1#vad_bn2/AssignMovingAvg_1/AssignAdd*
T0*
_output_shapes
: 
f
!vad_bn2/AssignMovingAvg_1/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

vad_bn2/AssignMovingAvg_1/sub_2Sub!vad_bn2/AssignMovingAvg_1/sub_2/xvad_bn2/AssignMovingAvg_1/Pow*
_output_shapes
: *
T0

!vad_bn2/AssignMovingAvg_1/truedivRealDiv#vad_bn2/AssignMovingAvg_1/AssignSubvad_bn2/AssignMovingAvg_1/sub_2*
T0*
_output_shapes	
:
Ú
vad_bn2/AssignMovingAvg_1Assignvad_bn2/moving_variance!vad_bn2/AssignMovingAvg_1/truediv**
_class 
loc:@vad_bn2/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
l
vad_bn2/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
Y
vad_bn2/cond/switch_tIdentityvad_bn2/cond/Switch:1*
T0
*
_output_shapes
: 
W
vad_bn2/cond/switch_fIdentityvad_bn2/cond/Switch*
_output_shapes
: *
T0

W
vad_bn2/cond/pred_idIdentitykeras_learning_phase*
T0
*
_output_shapes
: 
Á
vad_bn2/cond/Switch_1Switchvad_bn2/batchnorm/add_1vad_bn2/cond/pred_id*
T0**
_class 
loc:@vad_bn2/batchnorm/add_1*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
y
vad_bn2/cond/batchnorm/add/yConst^vad_bn2/cond/switch_f*
valueB
 *o:*
dtype0*
_output_shapes
: 

vad_bn2/cond/batchnorm/addAdd!vad_bn2/cond/batchnorm/add/Switchvad_bn2/cond/batchnorm/add/y*
T0*
_output_shapes	
:
¸
!vad_bn2/cond/batchnorm/add/SwitchSwitchvad_bn2/moving_variance/readvad_bn2/cond/pred_id*"
_output_shapes
::*
T0**
_class 
loc:@vad_bn2/moving_variance
g
vad_bn2/cond/batchnorm/RsqrtRsqrtvad_bn2/cond/batchnorm/add*
T0*
_output_shapes	
:

vad_bn2/cond/batchnorm/mulMulvad_bn2/cond/batchnorm/Rsqrt!vad_bn2/cond/batchnorm/mul/Switch*
_output_shapes	
:*
T0
¤
!vad_bn2/cond/batchnorm/mul/SwitchSwitchvad_bn2/gamma/readvad_bn2/cond/pred_id* 
_class
loc:@vad_bn2/gamma*"
_output_shapes
::*
T0

vad_bn2/cond/batchnorm/mul_1Mul#vad_bn2/cond/batchnorm/mul_1/Switchvad_bn2/cond/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ż
#vad_bn2/cond/batchnorm/mul_1/SwitchSwitchvad_fc2/BiasAddvad_bn2/cond/pred_id*
T0*"
_class
loc:@vad_fc2/BiasAdd*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

vad_bn2/cond/batchnorm/mul_2Mul#vad_bn2/cond/batchnorm/mul_2/Switchvad_bn2/cond/batchnorm/mul*
T0*
_output_shapes	
:
˛
#vad_bn2/cond/batchnorm/mul_2/SwitchSwitchvad_bn2/moving_mean/readvad_bn2/cond/pred_id*"
_output_shapes
::*
T0*&
_class
loc:@vad_bn2/moving_mean

vad_bn2/cond/batchnorm/subSub!vad_bn2/cond/batchnorm/sub/Switchvad_bn2/cond/batchnorm/mul_2*
_output_shapes	
:*
T0
˘
!vad_bn2/cond/batchnorm/sub/SwitchSwitchvad_bn2/beta/readvad_bn2/cond/pred_id*
T0*
_class
loc:@vad_bn2/beta*"
_output_shapes
::

vad_bn2/cond/batchnorm/add_1Addvad_bn2/cond/batchnorm/mul_1vad_bn2/cond/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

vad_bn2/cond/MergeMergevad_bn2/cond/batchnorm/add_1vad_bn2/cond/Switch_1:1**
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0*
N
[
vad_ac2/ReluReluvad_bn2/cond/Merge*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
vad_fc3/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
_
vad_fc3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ó5ž
_
vad_fc3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ó5>*
dtype0
Š
$vad_fc3/random_uniform/RandomUniformRandomUniformvad_fc3/random_uniform/shape*
dtype0*
_output_shapes
:	@*
seed2Ëć*
seedą˙ĺ)*
T0
z
vad_fc3/random_uniform/subSubvad_fc3/random_uniform/maxvad_fc3/random_uniform/min*
T0*
_output_shapes
: 

vad_fc3/random_uniform/mulMul$vad_fc3/random_uniform/RandomUniformvad_fc3/random_uniform/sub*
T0*
_output_shapes
:	@

vad_fc3/random_uniformAddvad_fc3/random_uniform/mulvad_fc3/random_uniform/min*
T0*
_output_shapes
:	@

vad_fc3/kernel
VariableV2*
dtype0*
_output_shapes
:	@*
	container *
shape:	@*
shared_name 
˝
vad_fc3/kernel/AssignAssignvad_fc3/kernelvad_fc3/random_uniform*
use_locking(*
T0*!
_class
loc:@vad_fc3/kernel*
validate_shape(*
_output_shapes
:	@
|
vad_fc3/kernel/readIdentityvad_fc3/kernel*
_output_shapes
:	@*
T0*!
_class
loc:@vad_fc3/kernel
Z
vad_fc3/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
x
vad_fc3/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Š
vad_fc3/bias/AssignAssignvad_fc3/biasvad_fc3/Const*
use_locking(*
T0*
_class
loc:@vad_fc3/bias*
validate_shape(*
_output_shapes
:@
q
vad_fc3/bias/readIdentityvad_fc3/bias*
_output_shapes
:@*
T0*
_class
loc:@vad_fc3/bias

vad_fc3/MatMulMatMulvad_ac2/Reluvad_fc3/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b( 

vad_fc3/BiasAddBiasAddvad_fc3/MatMulvad_fc3/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Z
vad_bn3/ConstConst*
valueB@*  ?*
dtype0*
_output_shapes
:@
y
vad_bn3/gamma
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Ź
vad_bn3/gamma/AssignAssignvad_bn3/gammavad_bn3/Const*
T0* 
_class
loc:@vad_bn3/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
t
vad_bn3/gamma/readIdentityvad_bn3/gamma*
T0* 
_class
loc:@vad_bn3/gamma*
_output_shapes
:@
\
vad_bn3/Const_1Const*
valueB@*    *
dtype0*
_output_shapes
:@
x
vad_bn3/beta
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ť
vad_bn3/beta/AssignAssignvad_bn3/betavad_bn3/Const_1*
_class
loc:@vad_bn3/beta*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
q
vad_bn3/beta/readIdentityvad_bn3/beta*
T0*
_class
loc:@vad_bn3/beta*
_output_shapes
:@
\
vad_bn3/Const_2Const*
_output_shapes
:@*
valueB@*    *
dtype0

vad_bn3/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ŕ
vad_bn3/moving_mean/AssignAssignvad_bn3/moving_meanvad_bn3/Const_2*
use_locking(*
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
:@

vad_bn3/moving_mean/readIdentityvad_bn3/moving_mean*
T0*&
_class
loc:@vad_bn3/moving_mean*
_output_shapes
:@
\
vad_bn3/Const_3Const*
valueB@*  ?*
dtype0*
_output_shapes
:@

vad_bn3/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ě
vad_bn3/moving_variance/AssignAssignvad_bn3/moving_variancevad_bn3/Const_3*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance

vad_bn3/moving_variance/readIdentityvad_bn3/moving_variance*
_output_shapes
:@*
T0**
_class 
loc:@vad_bn3/moving_variance
p
&vad_bn3/moments/mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:

vad_bn3/moments/meanMeanvad_fc3/BiasAdd&vad_bn3/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:@
k
vad_bn3/moments/StopGradientStopGradientvad_bn3/moments/mean*
_output_shapes

:@*
T0

!vad_bn3/moments/SquaredDifferenceSquaredDifferencevad_fc3/BiasAddvad_bn3/moments/StopGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
t
*vad_bn3/moments/variance/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
ľ
vad_bn3/moments/varianceMean!vad_bn3/moments/SquaredDifference*vad_bn3/moments/variance/reduction_indices*
_output_shapes

:@*
	keep_dims(*

Tidx0*
T0
t
vad_bn3/moments/SqueezeSqueezevad_bn3/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:@
z
vad_bn3/moments/Squeeze_1Squeezevad_bn3/moments/variance*
_output_shapes
:@*
squeeze_dims
 *
T0
\
vad_bn3/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:
u
vad_bn3/batchnorm/addAddvad_bn3/moments/Squeeze_1vad_bn3/batchnorm/add/y*
_output_shapes
:@*
T0
\
vad_bn3/batchnorm/RsqrtRsqrtvad_bn3/batchnorm/add*
T0*
_output_shapes
:@
n
vad_bn3/batchnorm/mulMulvad_bn3/batchnorm/Rsqrtvad_bn3/gamma/read*
T0*
_output_shapes
:@
x
vad_bn3/batchnorm/mul_1Mulvad_fc3/BiasAddvad_bn3/batchnorm/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
s
vad_bn3/batchnorm/mul_2Mulvad_bn3/moments/Squeezevad_bn3/batchnorm/mul*
_output_shapes
:@*
T0
m
vad_bn3/batchnorm/subSubvad_bn3/beta/readvad_bn3/batchnorm/mul_2*
_output_shapes
:@*
T0

vad_bn3/batchnorm/add_1Addvad_bn3/batchnorm/mul_1vad_bn3/batchnorm/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
\
vad_bn3/ShapeShapevad_fc3/BiasAdd*
out_type0*
_output_shapes
:*
T0
e
vad_bn3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
vad_bn3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
vad_bn3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
vad_bn3/strided_sliceStridedSlicevad_bn3/Shapevad_bn3/strided_slice/stackvad_bn3/strided_slice/stack_1vad_bn3/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
l
vad_bn3/Rank/packedPackvad_bn3/strided_slice*
N*
_output_shapes
:*
T0*

axis 
N
vad_bn3/RankConst*
value	B :*
dtype0*
_output_shapes
: 
U
vad_bn3/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
U
vad_bn3/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
v
vad_bn3/rangeRangevad_bn3/range/startvad_bn3/Rankvad_bn3/range/delta*

Tidx0*
_output_shapes
:
k
vad_bn3/Prod/inputPackvad_bn3/strided_slice*
_output_shapes
:*
T0*

axis *
N
u
vad_bn3/ProdProdvad_bn3/Prod/inputvad_bn3/range*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
b
vad_bn3/CastCastvad_bn3/Prod*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
R
vad_bn3/sub/yConst*
valueB
 *Ĺ ?*
dtype0*
_output_shapes
: 
P
vad_bn3/subSubvad_bn3/Castvad_bn3/sub/y*
T0*
_output_shapes
: 
V
vad_bn3/truedivRealDivvad_bn3/Castvad_bn3/sub*
T0*
_output_shapes
: 
c
vad_bn3/mulMulvad_bn3/moments/Squeeze_1vad_bn3/truediv*
T0*
_output_shapes
:@
b
vad_bn3/AssignMovingAvg/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ą
,vad_bn3/moving_mean/biased/Initializer/zerosConst*&
_class
loc:@vad_bn3/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
Ž
vad_bn3/moving_mean/biased
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *&
_class
loc:@vad_bn3/moving_mean*
	container *
shape:@
ë
!vad_bn3/moving_mean/biased/AssignAssignvad_bn3/moving_mean/biased,vad_bn3/moving_mean/biased/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
:@

vad_bn3/moving_mean/biased/readIdentityvad_bn3/moving_mean/biased*
T0*&
_class
loc:@vad_bn3/moving_mean*
_output_shapes
:@

0vad_bn3/moving_mean/local_step/Initializer/zerosConst*
_output_shapes
: *&
_class
loc:@vad_bn3/moving_mean*
valueB
 *    *
dtype0
Ş
vad_bn3/moving_mean/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *&
_class
loc:@vad_bn3/moving_mean*
	container 
ó
%vad_bn3/moving_mean/local_step/AssignAssignvad_bn3/moving_mean/local_step0vad_bn3/moving_mean/local_step/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
: 

#vad_bn3/moving_mean/local_step/readIdentityvad_bn3/moving_mean/local_step*
T0*&
_class
loc:@vad_bn3/moving_mean*
_output_shapes
: 

vad_bn3/AssignMovingAvg/subSubvad_bn3/moving_mean/biased/readvad_bn3/moments/Squeeze*
_output_shapes
:@*
T0

vad_bn3/AssignMovingAvg/mulMulvad_bn3/AssignMovingAvg/subvad_bn3/AssignMovingAvg/decay*
_output_shapes
:@*
T0
Ç
!vad_bn3/AssignMovingAvg/AssignSub	AssignSubvad_bn3/moving_mean/biasedvad_bn3/AssignMovingAvg/mul*
use_locking( *
T0*&
_class
loc:@vad_bn3/moving_mean*
_output_shapes
:@
l
'vad_bn3/AssignMovingAvg/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ó
!vad_bn3/AssignMovingAvg/AssignAdd	AssignAddvad_bn3/moving_mean/local_step'vad_bn3/AssignMovingAvg/AssignAdd/value*
use_locking( *
T0*&
_class
loc:@vad_bn3/moving_mean*
_output_shapes
: 
d
vad_bn3/AssignMovingAvg/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

vad_bn3/AssignMovingAvg/sub_1Subvad_bn3/AssignMovingAvg/sub_1/xvad_bn3/AssignMovingAvg/decay*
_output_shapes
: *
T0

vad_bn3/AssignMovingAvg/PowPowvad_bn3/AssignMovingAvg/sub_1!vad_bn3/AssignMovingAvg/AssignAdd*
T0*
_output_shapes
: 
d
vad_bn3/AssignMovingAvg/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

vad_bn3/AssignMovingAvg/sub_2Subvad_bn3/AssignMovingAvg/sub_2/xvad_bn3/AssignMovingAvg/Pow*
T0*
_output_shapes
: 

vad_bn3/AssignMovingAvg/truedivRealDiv!vad_bn3/AssignMovingAvg/AssignSubvad_bn3/AssignMovingAvg/sub_2*
_output_shapes
:@*
T0
Í
vad_bn3/AssignMovingAvgAssignvad_bn3/moving_meanvad_bn3/AssignMovingAvg/truediv*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*&
_class
loc:@vad_bn3/moving_mean
d
vad_bn3/AssignMovingAvg_1/decayConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Š
0vad_bn3/moving_variance/biased/Initializer/zerosConst**
_class 
loc:@vad_bn3/moving_variance*
valueB@*    *
dtype0*
_output_shapes
:@
ś
vad_bn3/moving_variance/biased
VariableV2*
_output_shapes
:@*
shared_name **
_class 
loc:@vad_bn3/moving_variance*
	container *
shape:@*
dtype0
ű
%vad_bn3/moving_variance/biased/AssignAssignvad_bn3/moving_variance/biased0vad_bn3/moving_variance/biased/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(*
_output_shapes
:@
 
#vad_bn3/moving_variance/biased/readIdentityvad_bn3/moving_variance/biased*
T0**
_class 
loc:@vad_bn3/moving_variance*
_output_shapes
:@
Ľ
4vad_bn3/moving_variance/local_step/Initializer/zerosConst**
_class 
loc:@vad_bn3/moving_variance*
valueB
 *    *
dtype0*
_output_shapes
: 
˛
"vad_bn3/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: *
shared_name **
_class 
loc:@vad_bn3/moving_variance*
	container *
shape: 

)vad_bn3/moving_variance/local_step/AssignAssign"vad_bn3/moving_variance/local_step4vad_bn3/moving_variance/local_step/Initializer/zeros*
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
¤
'vad_bn3/moving_variance/local_step/readIdentity"vad_bn3/moving_variance/local_step*
T0**
_class 
loc:@vad_bn3/moving_variance*
_output_shapes
: 
{
vad_bn3/AssignMovingAvg_1/subSub#vad_bn3/moving_variance/biased/readvad_bn3/mul*
_output_shapes
:@*
T0

vad_bn3/AssignMovingAvg_1/mulMulvad_bn3/AssignMovingAvg_1/subvad_bn3/AssignMovingAvg_1/decay*
T0*
_output_shapes
:@
Ó
#vad_bn3/AssignMovingAvg_1/AssignSub	AssignSubvad_bn3/moving_variance/biasedvad_bn3/AssignMovingAvg_1/mul*
use_locking( *
T0**
_class 
loc:@vad_bn3/moving_variance*
_output_shapes
:@
n
)vad_bn3/AssignMovingAvg_1/AssignAdd/valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ß
#vad_bn3/AssignMovingAvg_1/AssignAdd	AssignAdd"vad_bn3/moving_variance/local_step)vad_bn3/AssignMovingAvg_1/AssignAdd/value*
_output_shapes
: *
use_locking( *
T0**
_class 
loc:@vad_bn3/moving_variance
f
!vad_bn3/AssignMovingAvg_1/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

vad_bn3/AssignMovingAvg_1/sub_1Sub!vad_bn3/AssignMovingAvg_1/sub_1/xvad_bn3/AssignMovingAvg_1/decay*
_output_shapes
: *
T0

vad_bn3/AssignMovingAvg_1/PowPowvad_bn3/AssignMovingAvg_1/sub_1#vad_bn3/AssignMovingAvg_1/AssignAdd*
_output_shapes
: *
T0
f
!vad_bn3/AssignMovingAvg_1/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

vad_bn3/AssignMovingAvg_1/sub_2Sub!vad_bn3/AssignMovingAvg_1/sub_2/xvad_bn3/AssignMovingAvg_1/Pow*
T0*
_output_shapes
: 

!vad_bn3/AssignMovingAvg_1/truedivRealDiv#vad_bn3/AssignMovingAvg_1/AssignSubvad_bn3/AssignMovingAvg_1/sub_2*
T0*
_output_shapes
:@
Ů
vad_bn3/AssignMovingAvg_1Assignvad_bn3/moving_variance!vad_bn3/AssignMovingAvg_1/truediv*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(
l
vad_bn3/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
Y
vad_bn3/cond/switch_tIdentityvad_bn3/cond/Switch:1*
T0
*
_output_shapes
: 
W
vad_bn3/cond/switch_fIdentityvad_bn3/cond/Switch*
T0
*
_output_shapes
: 
W
vad_bn3/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

ż
vad_bn3/cond/Switch_1Switchvad_bn3/batchnorm/add_1vad_bn3/cond/pred_id*
T0**
_class 
loc:@vad_bn3/batchnorm/add_1*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@
y
vad_bn3/cond/batchnorm/add/yConst^vad_bn3/cond/switch_f*
valueB
 *o:*
dtype0*
_output_shapes
: 

vad_bn3/cond/batchnorm/addAdd!vad_bn3/cond/batchnorm/add/Switchvad_bn3/cond/batchnorm/add/y*
T0*
_output_shapes
:@
ś
!vad_bn3/cond/batchnorm/add/SwitchSwitchvad_bn3/moving_variance/readvad_bn3/cond/pred_id*
T0**
_class 
loc:@vad_bn3/moving_variance* 
_output_shapes
:@:@
f
vad_bn3/cond/batchnorm/RsqrtRsqrtvad_bn3/cond/batchnorm/add*
_output_shapes
:@*
T0

vad_bn3/cond/batchnorm/mulMulvad_bn3/cond/batchnorm/Rsqrt!vad_bn3/cond/batchnorm/mul/Switch*
_output_shapes
:@*
T0
˘
!vad_bn3/cond/batchnorm/mul/SwitchSwitchvad_bn3/gamma/readvad_bn3/cond/pred_id* 
_output_shapes
:@:@*
T0* 
_class
loc:@vad_bn3/gamma

vad_bn3/cond/batchnorm/mul_1Mul#vad_bn3/cond/batchnorm/mul_1/Switchvad_bn3/cond/batchnorm/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
˝
#vad_bn3/cond/batchnorm/mul_1/SwitchSwitchvad_fc3/BiasAddvad_bn3/cond/pred_id*
T0*"
_class
loc:@vad_fc3/BiasAdd*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@

vad_bn3/cond/batchnorm/mul_2Mul#vad_bn3/cond/batchnorm/mul_2/Switchvad_bn3/cond/batchnorm/mul*
_output_shapes
:@*
T0
°
#vad_bn3/cond/batchnorm/mul_2/SwitchSwitchvad_bn3/moving_mean/readvad_bn3/cond/pred_id* 
_output_shapes
:@:@*
T0*&
_class
loc:@vad_bn3/moving_mean

vad_bn3/cond/batchnorm/subSub!vad_bn3/cond/batchnorm/sub/Switchvad_bn3/cond/batchnorm/mul_2*
_output_shapes
:@*
T0
 
!vad_bn3/cond/batchnorm/sub/SwitchSwitchvad_bn3/beta/readvad_bn3/cond/pred_id* 
_output_shapes
:@:@*
T0*
_class
loc:@vad_bn3/beta

vad_bn3/cond/batchnorm/add_1Addvad_bn3/cond/batchnorm/mul_1vad_bn3/cond/batchnorm/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

vad_bn3/cond/MergeMergevad_bn3/cond/batchnorm/add_1vad_bn3/cond/Switch_1:1*
T0*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙@: 
Z
vad_ac3/ReluReluvad_bn3/cond/Merge*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
z
)vad_prediction_layer/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
'vad_prediction_layer/random_uniform/minConst*
valueB
 *˛_ž*
dtype0*
_output_shapes
: 
l
'vad_prediction_layer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *˛_>
Â
1vad_prediction_layer/random_uniform/RandomUniformRandomUniform)vad_prediction_layer/random_uniform/shape*
T0*
dtype0*
_output_shapes

:@*
seed2Ĺ*
seedą˙ĺ)
Ą
'vad_prediction_layer/random_uniform/subSub'vad_prediction_layer/random_uniform/max'vad_prediction_layer/random_uniform/min*
_output_shapes
: *
T0
ł
'vad_prediction_layer/random_uniform/mulMul1vad_prediction_layer/random_uniform/RandomUniform'vad_prediction_layer/random_uniform/sub*
_output_shapes

:@*
T0
Ľ
#vad_prediction_layer/random_uniformAdd'vad_prediction_layer/random_uniform/mul'vad_prediction_layer/random_uniform/min*
T0*
_output_shapes

:@

vad_prediction_layer/kernel
VariableV2*
dtype0*
_output_shapes

:@*
	container *
shape
:@*
shared_name 
đ
"vad_prediction_layer/kernel/AssignAssignvad_prediction_layer/kernel#vad_prediction_layer/random_uniform*
_output_shapes

:@*
use_locking(*
T0*.
_class$
" loc:@vad_prediction_layer/kernel*
validate_shape(
˘
 vad_prediction_layer/kernel/readIdentityvad_prediction_layer/kernel*
T0*.
_class$
" loc:@vad_prediction_layer/kernel*
_output_shapes

:@
g
vad_prediction_layer/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

vad_prediction_layer/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ý
 vad_prediction_layer/bias/AssignAssignvad_prediction_layer/biasvad_prediction_layer/Const*
use_locking(*
T0*,
_class"
 loc:@vad_prediction_layer/bias*
validate_shape(*
_output_shapes
:

vad_prediction_layer/bias/readIdentityvad_prediction_layer/bias*
T0*,
_class"
 loc:@vad_prediction_layer/bias*
_output_shapes
:
­
vad_prediction_layer/MatMulMatMulvad_ac3/Relu vad_prediction_layer/kernel/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
­
vad_prediction_layer/BiasAddBiasAddvad_prediction_layer/MatMulvad_prediction_layer/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
softmax/SoftmaxSoftmaxvad_prediction_layer/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
: *
shape: 
Ź
AssignAssignconv2d_1/kernelPlaceholder*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
 
Assign_1Assignconv2d_1/biasPlaceholder_1*
use_locking( *
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
V
Placeholder_2Placeholder*
shape: *
dtype0*
_output_shapes
: 
ź
Assign_2Assignbatch_normalization_1/gammaPlaceholder_2*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
: 
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
: *
shape: 
ş
Assign_3Assignbatch_normalization_1/betaPlaceholder_3*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*-
_class#
!loc:@batch_normalization_1/beta
V
Placeholder_4Placeholder*
dtype0*
_output_shapes
: *
shape: 
Č
Assign_4Assign!batch_normalization_1/moving_meanPlaceholder_4*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
: 
V
Placeholder_5Placeholder*
dtype0*
_output_shapes
: *
shape: 
Đ
Assign_5Assign%batch_normalization_1/moving_variancePlaceholder_5*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
n
Placeholder_6Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
°
Assign_6Assignconv2d_2/kernelPlaceholder_6*
use_locking( *
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:  
V
Placeholder_7Placeholder*
dtype0*
_output_shapes
: *
shape: 
 
Assign_7Assignconv2d_2/biasPlaceholder_7*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
V
Placeholder_8Placeholder*
dtype0*
_output_shapes
: *
shape: 
ź
Assign_8Assignbatch_normalization_2/gammaPlaceholder_8*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
: 
V
Placeholder_9Placeholder*
dtype0*
_output_shapes
: *
shape: 
ş
Assign_9Assignbatch_normalization_2/betaPlaceholder_9*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
: 
W
Placeholder_10Placeholder*
shape: *
dtype0*
_output_shapes
: 
Ę
	Assign_10Assign!batch_normalization_2/moving_meanPlaceholder_10*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
W
Placeholder_11Placeholder*
_output_shapes
: *
shape: *
dtype0
Ň
	Assign_11Assign%batch_normalization_2/moving_variancePlaceholder_11*
_output_shapes
: *
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(
o
Placeholder_12Placeholder*&
_output_shapes
: @*
shape: @*
dtype0
˛
	Assign_12Assignconv2d_3/kernelPlaceholder_12*
validate_shape(*&
_output_shapes
: @*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel
W
Placeholder_13Placeholder*
dtype0*
_output_shapes
:@*
shape:@
˘
	Assign_13Assignconv2d_3/biasPlaceholder_13* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0
W
Placeholder_14Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ž
	Assign_14Assignbatch_normalization_3/gammaPlaceholder_14*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes
:@
W
Placeholder_15Placeholder*
shape:@*
dtype0*
_output_shapes
:@
ź
	Assign_15Assignbatch_normalization_3/betaPlaceholder_15*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_3/beta
W
Placeholder_16Placeholder*
dtype0*
_output_shapes
:@*
shape:@
Ę
	Assign_16Assign!batch_normalization_3/moving_meanPlaceholder_16*
_output_shapes
:@*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(
W
Placeholder_17Placeholder*
dtype0*
_output_shapes
:@*
shape:@
Ň
	Assign_17Assign%batch_normalization_3/moving_variancePlaceholder_17*
_output_shapes
:@*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(
o
Placeholder_18Placeholder*
dtype0*&
_output_shapes
:@@*
shape:@@
˛
	Assign_18Assignconv2d_4/kernelPlaceholder_18*
use_locking( *
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:@@
W
Placeholder_19Placeholder*
dtype0*
_output_shapes
:@*
shape:@
˘
	Assign_19Assignconv2d_4/biasPlaceholder_19*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
:@*
use_locking( 
W
Placeholder_20Placeholder*
shape:@*
dtype0*
_output_shapes
:@
ž
	Assign_20Assignbatch_normalization_4/gammaPlaceholder_20*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes
:@*
use_locking( 
W
Placeholder_21Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź
	Assign_21Assignbatch_normalization_4/betaPlaceholder_21*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes
:@
W
Placeholder_22Placeholder*
_output_shapes
:@*
shape:@*
dtype0
Ę
	Assign_22Assign!batch_normalization_4/moving_meanPlaceholder_22*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0
W
Placeholder_23Placeholder*
_output_shapes
:@*
shape:@*
dtype0
Ň
	Assign_23Assign%batch_normalization_4/moving_variancePlaceholder_23*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0
q
Placeholder_24Placeholder*'
_output_shapes
:@*
shape:@*
dtype0
ł
	Assign_24Assignconv2d_5/kernelPlaceholder_24*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking( *
T0
Y
Placeholder_25Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ł
	Assign_25Assignconv2d_5/biasPlaceholder_25*
use_locking( *
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes	
:
Y
Placeholder_26Placeholder*
dtype0*
_output_shapes	
:*
shape:
ż
	Assign_26Assignbatch_normalization_5/gammaPlaceholder_26*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0
Y
Placeholder_27Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝
	Assign_27Assignbatch_normalization_5/betaPlaceholder_27*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_5/beta
Y
Placeholder_28Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ë
	Assign_28Assign!batch_normalization_5/moving_meanPlaceholder_28*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:
Y
Placeholder_29Placeholder*
_output_shapes	
:*
shape:*
dtype0
Ó
	Assign_29Assign%batch_normalization_5/moving_variancePlaceholder_29*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:
s
Placeholder_30Placeholder*
dtype0*(
_output_shapes
:*
shape:
´
	Assign_30Assignconv2d_6/kernelPlaceholder_30*
validate_shape(*(
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@conv2d_6/kernel
Y
Placeholder_31Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ł
	Assign_31Assignconv2d_6/biasPlaceholder_31*
use_locking( *
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes	
:
Y
Placeholder_32Placeholder*
shape:*
dtype0*
_output_shapes	
:
ż
	Assign_32Assignbatch_normalization_6/gammaPlaceholder_32*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:*
use_locking( 
Y
Placeholder_33Placeholder*
dtype0*
_output_shapes	
:*
shape:
˝
	Assign_33Assignbatch_normalization_6/betaPlaceholder_33*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:
Y
Placeholder_34Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ë
	Assign_34Assign!batch_normalization_6/moving_meanPlaceholder_34*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0
Y
Placeholder_35Placeholder*
_output_shapes	
:*
shape:*
dtype0
Ó
	Assign_35Assign%batch_normalization_6/moving_variancePlaceholder_35*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:
s
Placeholder_36Placeholder*
shape:*
dtype0*(
_output_shapes
:
´
	Assign_36Assignconv2d_7/kernelPlaceholder_36*
use_locking( *
T0*"
_class
loc:@conv2d_7/kernel*
validate_shape(*(
_output_shapes
:
Y
Placeholder_37Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ł
	Assign_37Assignconv2d_7/biasPlaceholder_37* 
_class
loc:@conv2d_7/bias*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0
Y
Placeholder_38Placeholder*
dtype0*
_output_shapes	
:*
shape:
ż
	Assign_38Assignbatch_normalization_7/gammaPlaceholder_38*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:
Y
Placeholder_39Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝
	Assign_39Assignbatch_normalization_7/betaPlaceholder_39*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:
Y
Placeholder_40Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ë
	Assign_40Assign!batch_normalization_7/moving_meanPlaceholder_40*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean
Y
Placeholder_41Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ó
	Assign_41Assign%batch_normalization_7/moving_variancePlaceholder_41*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0
c
Placeholder_42Placeholder*
dtype0* 
_output_shapes
:
*
shape:

Ŕ
	Assign_42Assigntime_distributed_1/kernelPlaceholder_42*,
_class"
 loc:@time_distributed_1/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking( *
T0
Y
Placeholder_43Placeholder*
dtype0*
_output_shapes	
:*
shape:
ˇ
	Assign_43Assigntime_distributed_1/biasPlaceholder_43*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0**
_class 
loc:@time_distributed_1/bias
c
Placeholder_44Placeholder*
shape:
*
dtype0* 
_output_shapes
:

Ş
	Assign_44Assignvad_fc2/kernelPlaceholder_44* 
_output_shapes
:
*
use_locking( *
T0*!
_class
loc:@vad_fc2/kernel*
validate_shape(
Y
Placeholder_45Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ą
	Assign_45Assignvad_fc2/biasPlaceholder_45*
_output_shapes	
:*
use_locking( *
T0*
_class
loc:@vad_fc2/bias*
validate_shape(
Y
Placeholder_46Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ł
	Assign_46Assignvad_bn2/gammaPlaceholder_46*
use_locking( *
T0* 
_class
loc:@vad_bn2/gamma*
validate_shape(*
_output_shapes	
:
Y
Placeholder_47Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ą
	Assign_47Assignvad_bn2/betaPlaceholder_47*
T0*
_class
loc:@vad_bn2/beta*
validate_shape(*
_output_shapes	
:*
use_locking( 
Y
Placeholder_48Placeholder*
shape:*
dtype0*
_output_shapes	
:
Ż
	Assign_48Assignvad_bn2/moving_meanPlaceholder_48*
_output_shapes	
:*
use_locking( *
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(
Y
Placeholder_49Placeholder*
dtype0*
_output_shapes	
:*
shape:
ˇ
	Assign_49Assignvad_bn2/moving_variancePlaceholder_49*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0**
_class 
loc:@vad_bn2/moving_variance
a
Placeholder_50Placeholder*
_output_shapes
:	@*
shape:	@*
dtype0
Š
	Assign_50Assignvad_fc3/kernelPlaceholder_50*
validate_shape(*
_output_shapes
:	@*
use_locking( *
T0*!
_class
loc:@vad_fc3/kernel
W
Placeholder_51Placeholder*
shape:@*
dtype0*
_output_shapes
:@
 
	Assign_51Assignvad_fc3/biasPlaceholder_51*
use_locking( *
T0*
_class
loc:@vad_fc3/bias*
validate_shape(*
_output_shapes
:@
W
Placeholder_52Placeholder*
dtype0*
_output_shapes
:@*
shape:@
˘
	Assign_52Assignvad_bn3/gammaPlaceholder_52*
T0* 
_class
loc:@vad_bn3/gamma*
validate_shape(*
_output_shapes
:@*
use_locking( 
W
Placeholder_53Placeholder*
shape:@*
dtype0*
_output_shapes
:@
 
	Assign_53Assignvad_bn3/betaPlaceholder_53*
T0*
_class
loc:@vad_bn3/beta*
validate_shape(*
_output_shapes
:@*
use_locking( 
W
Placeholder_54Placeholder*
_output_shapes
:@*
shape:@*
dtype0
Ž
	Assign_54Assignvad_bn3/moving_meanPlaceholder_54*
use_locking( *
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
:@
W
Placeholder_55Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ś
	Assign_55Assignvad_bn3/moving_variancePlaceholder_55*
use_locking( *
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(*
_output_shapes
:@
_
Placeholder_56Placeholder*
dtype0*
_output_shapes

:@*
shape
:@
Â
	Assign_56Assignvad_prediction_layer/kernelPlaceholder_56*
use_locking( *
T0*.
_class$
" loc:@vad_prediction_layer/kernel*
validate_shape(*
_output_shapes

:@
W
Placeholder_57Placeholder*
shape:*
dtype0*
_output_shapes
:
ş
	Assign_57Assignvad_prediction_layer/biasPlaceholder_57*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@vad_prediction_layer/bias
ł
IsVariableInitializedIsVariableInitialized(batch_normalization_1/moving_mean/biased*
dtype0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_1/moving_mean
š
IsVariableInitialized_1IsVariableInitialized,batch_normalization_1/moving_mean/local_step*4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
: 
˝
IsVariableInitialized_2IsVariableInitialized,batch_normalization_1/moving_variance/biased*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
Á
IsVariableInitialized_3IsVariableInitialized0batch_normalization_1/moving_variance/local_step*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializedconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializedconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_6IsVariableInitializedbatch_normalization_2/gamma*.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_7IsVariableInitializedbatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
: 
Ž
IsVariableInitialized_8IsVariableInitialized!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
ś
IsVariableInitialized_9IsVariableInitialized%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
ś
IsVariableInitialized_10IsVariableInitialized(batch_normalization_2/moving_mean/biased*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
ş
IsVariableInitialized_11IsVariableInitialized,batch_normalization_2/moving_mean/local_step*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
ž
IsVariableInitialized_12IsVariableInitialized,batch_normalization_2/moving_variance/biased*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
Â
IsVariableInitialized_13IsVariableInitialized0batch_normalization_2/moving_variance/local_step*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitializedconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
Ł
IsVariableInitialized_16IsVariableInitializedbatch_normalization_3/gamma*.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes
: 
Ą
IsVariableInitialized_17IsVariableInitializedbatch_normalization_3/beta*-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
_output_shapes
: 
Ż
IsVariableInitialized_18IsVariableInitialized!batch_normalization_3/moving_mean*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes
: 
ˇ
IsVariableInitialized_19IsVariableInitialized%batch_normalization_3/moving_variance*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes
: 
ś
IsVariableInitialized_20IsVariableInitialized(batch_normalization_3/moving_mean/biased*4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0*
_output_shapes
: 
ş
IsVariableInitialized_21IsVariableInitialized,batch_normalization_3/moving_mean/local_step*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_3/moving_mean*
dtype0
ž
IsVariableInitialized_22IsVariableInitialized,batch_normalization_3/moving_variance/biased*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes
: 
Â
IsVariableInitialized_23IsVariableInitialized0batch_normalization_3/moving_variance/local_step*8
_class.
,*loc:@batch_normalization_3/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_24IsVariableInitializedconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_25IsVariableInitializedconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
Ł
IsVariableInitialized_26IsVariableInitializedbatch_normalization_4/gamma*.
_class$
" loc:@batch_normalization_4/gamma*
dtype0*
_output_shapes
: 
Ą
IsVariableInitialized_27IsVariableInitializedbatch_normalization_4/beta*-
_class#
!loc:@batch_normalization_4/beta*
dtype0*
_output_shapes
: 
Ż
IsVariableInitialized_28IsVariableInitialized!batch_normalization_4/moving_mean*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0*
_output_shapes
: 
ˇ
IsVariableInitialized_29IsVariableInitialized%batch_normalization_4/moving_variance*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
_output_shapes
: 
ś
IsVariableInitialized_30IsVariableInitialized(batch_normalization_4/moving_mean/biased*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0*
_output_shapes
: 
ş
IsVariableInitialized_31IsVariableInitialized,batch_normalization_4/moving_mean/local_step*4
_class*
(&loc:@batch_normalization_4/moving_mean*
dtype0*
_output_shapes
: 
ž
IsVariableInitialized_32IsVariableInitialized,batch_normalization_4/moving_variance/biased*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0
Â
IsVariableInitialized_33IsVariableInitialized0batch_normalization_4/moving_variance/local_step*8
_class.
,*loc:@batch_normalization_4/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_34IsVariableInitializedconv2d_5/kernel*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_35IsVariableInitializedconv2d_5/bias*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_5/bias
Ł
IsVariableInitialized_36IsVariableInitializedbatch_normalization_5/gamma*.
_class$
" loc:@batch_normalization_5/gamma*
dtype0*
_output_shapes
: 
Ą
IsVariableInitialized_37IsVariableInitializedbatch_normalization_5/beta*-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
_output_shapes
: 
Ż
IsVariableInitialized_38IsVariableInitialized!batch_normalization_5/moving_mean*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0*
_output_shapes
: 
ˇ
IsVariableInitialized_39IsVariableInitialized%batch_normalization_5/moving_variance*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0*
_output_shapes
: 
ś
IsVariableInitialized_40IsVariableInitialized(batch_normalization_5/moving_mean/biased*
dtype0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_5/moving_mean
ş
IsVariableInitialized_41IsVariableInitialized,batch_normalization_5/moving_mean/local_step*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0*
_output_shapes
: 
ž
IsVariableInitialized_42IsVariableInitialized,batch_normalization_5/moving_variance/biased*
dtype0*
_output_shapes
: *8
_class.
,*loc:@batch_normalization_5/moving_variance
Â
IsVariableInitialized_43IsVariableInitialized0batch_normalization_5/moving_variance/local_step*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_44IsVariableInitializedconv2d_6/kernel*"
_class
loc:@conv2d_6/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_45IsVariableInitializedconv2d_6/bias* 
_class
loc:@conv2d_6/bias*
dtype0*
_output_shapes
: 
Ł
IsVariableInitialized_46IsVariableInitializedbatch_normalization_6/gamma*.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
_output_shapes
: 
Ą
IsVariableInitialized_47IsVariableInitializedbatch_normalization_6/beta*-
_class#
!loc:@batch_normalization_6/beta*
dtype0*
_output_shapes
: 
Ż
IsVariableInitialized_48IsVariableInitialized!batch_normalization_6/moving_mean*4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0*
_output_shapes
: 
ˇ
IsVariableInitialized_49IsVariableInitialized%batch_normalization_6/moving_variance*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes
: 
ś
IsVariableInitialized_50IsVariableInitialized(batch_normalization_6/moving_mean/biased*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0
ş
IsVariableInitialized_51IsVariableInitialized,batch_normalization_6/moving_mean/local_step*4
_class*
(&loc:@batch_normalization_6/moving_mean*
dtype0*
_output_shapes
: 
ž
IsVariableInitialized_52IsVariableInitialized,batch_normalization_6/moving_variance/biased*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes
: 
Â
IsVariableInitialized_53IsVariableInitialized0batch_normalization_6/moving_variance/local_step*8
_class.
,*loc:@batch_normalization_6/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_54IsVariableInitializedconv2d_7/kernel*"
_class
loc:@conv2d_7/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_55IsVariableInitializedconv2d_7/bias* 
_class
loc:@conv2d_7/bias*
dtype0*
_output_shapes
: 
Ł
IsVariableInitialized_56IsVariableInitializedbatch_normalization_7/gamma*
_output_shapes
: *.
_class$
" loc:@batch_normalization_7/gamma*
dtype0
Ą
IsVariableInitialized_57IsVariableInitializedbatch_normalization_7/beta*-
_class#
!loc:@batch_normalization_7/beta*
dtype0*
_output_shapes
: 
Ż
IsVariableInitialized_58IsVariableInitialized!batch_normalization_7/moving_mean*
dtype0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_7/moving_mean
ˇ
IsVariableInitialized_59IsVariableInitialized%batch_normalization_7/moving_variance*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
_output_shapes
: 
ś
IsVariableInitialized_60IsVariableInitialized(batch_normalization_7/moving_mean/biased*4
_class*
(&loc:@batch_normalization_7/moving_mean*
dtype0*
_output_shapes
: 
ş
IsVariableInitialized_61IsVariableInitialized,batch_normalization_7/moving_mean/local_step*
dtype0*
_output_shapes
: *4
_class*
(&loc:@batch_normalization_7/moving_mean
ž
IsVariableInitialized_62IsVariableInitialized,batch_normalization_7/moving_variance/biased*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
_output_shapes
: 
Â
IsVariableInitialized_63IsVariableInitialized0batch_normalization_7/moving_variance/local_step*8
_class.
,*loc:@batch_normalization_7/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_64IsVariableInitializedtime_distributed_1/kernel*,
_class"
 loc:@time_distributed_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_65IsVariableInitializedtime_distributed_1/bias*
dtype0*
_output_shapes
: **
_class 
loc:@time_distributed_1/bias

IsVariableInitialized_66IsVariableInitializedvad_fc2/kernel*!
_class
loc:@vad_fc2/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_67IsVariableInitializedvad_fc2/bias*
_output_shapes
: *
_class
loc:@vad_fc2/bias*
dtype0

IsVariableInitialized_68IsVariableInitializedvad_bn2/gamma*
dtype0*
_output_shapes
: * 
_class
loc:@vad_bn2/gamma

IsVariableInitialized_69IsVariableInitializedvad_bn2/beta*
_class
loc:@vad_bn2/beta*
dtype0*
_output_shapes
: 

IsVariableInitialized_70IsVariableInitializedvad_bn2/moving_mean*&
_class
loc:@vad_bn2/moving_mean*
dtype0*
_output_shapes
: 

IsVariableInitialized_71IsVariableInitializedvad_bn2/moving_variance*
dtype0*
_output_shapes
: **
_class 
loc:@vad_bn2/moving_variance

IsVariableInitialized_72IsVariableInitializedvad_bn2/moving_mean/biased*
dtype0*
_output_shapes
: *&
_class
loc:@vad_bn2/moving_mean

IsVariableInitialized_73IsVariableInitializedvad_bn2/moving_mean/local_step*
_output_shapes
: *&
_class
loc:@vad_bn2/moving_mean*
dtype0
˘
IsVariableInitialized_74IsVariableInitializedvad_bn2/moving_variance/biased**
_class 
loc:@vad_bn2/moving_variance*
dtype0*
_output_shapes
: 
Ś
IsVariableInitialized_75IsVariableInitialized"vad_bn2/moving_variance/local_step**
_class 
loc:@vad_bn2/moving_variance*
dtype0*
_output_shapes
: 

IsVariableInitialized_76IsVariableInitializedvad_fc3/kernel*!
_class
loc:@vad_fc3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_77IsVariableInitializedvad_fc3/bias*
_output_shapes
: *
_class
loc:@vad_fc3/bias*
dtype0

IsVariableInitialized_78IsVariableInitializedvad_bn3/gamma*
_output_shapes
: * 
_class
loc:@vad_bn3/gamma*
dtype0

IsVariableInitialized_79IsVariableInitializedvad_bn3/beta*
_class
loc:@vad_bn3/beta*
dtype0*
_output_shapes
: 

IsVariableInitialized_80IsVariableInitializedvad_bn3/moving_mean*&
_class
loc:@vad_bn3/moving_mean*
dtype0*
_output_shapes
: 

IsVariableInitialized_81IsVariableInitializedvad_bn3/moving_variance*
dtype0*
_output_shapes
: **
_class 
loc:@vad_bn3/moving_variance

IsVariableInitialized_82IsVariableInitializedvad_bn3/moving_mean/biased*&
_class
loc:@vad_bn3/moving_mean*
dtype0*
_output_shapes
: 

IsVariableInitialized_83IsVariableInitializedvad_bn3/moving_mean/local_step*
_output_shapes
: *&
_class
loc:@vad_bn3/moving_mean*
dtype0
˘
IsVariableInitialized_84IsVariableInitializedvad_bn3/moving_variance/biased*
_output_shapes
: **
_class 
loc:@vad_bn3/moving_variance*
dtype0
Ś
IsVariableInitialized_85IsVariableInitialized"vad_bn3/moving_variance/local_step**
_class 
loc:@vad_bn3/moving_variance*
dtype0*
_output_shapes
: 
Ł
IsVariableInitialized_86IsVariableInitializedvad_prediction_layer/kernel*
_output_shapes
: *.
_class$
" loc:@vad_prediction_layer/kernel*
dtype0

IsVariableInitialized_87IsVariableInitializedvad_prediction_layer/bias*,
_class"
 loc:@vad_prediction_layer/bias*
dtype0*
_output_shapes
: 
ä
initNoOp0^batch_normalization_1/moving_mean/biased/Assign4^batch_normalization_1/moving_mean/local_step/Assign4^batch_normalization_1/moving_variance/biased/Assign8^batch_normalization_1/moving_variance/local_step/Assign"^batch_normalization_2/beta/Assign#^batch_normalization_2/gamma/Assign)^batch_normalization_2/moving_mean/Assign0^batch_normalization_2/moving_mean/biased/Assign4^batch_normalization_2/moving_mean/local_step/Assign-^batch_normalization_2/moving_variance/Assign4^batch_normalization_2/moving_variance/biased/Assign8^batch_normalization_2/moving_variance/local_step/Assign"^batch_normalization_3/beta/Assign#^batch_normalization_3/gamma/Assign)^batch_normalization_3/moving_mean/Assign0^batch_normalization_3/moving_mean/biased/Assign4^batch_normalization_3/moving_mean/local_step/Assign-^batch_normalization_3/moving_variance/Assign4^batch_normalization_3/moving_variance/biased/Assign8^batch_normalization_3/moving_variance/local_step/Assign"^batch_normalization_4/beta/Assign#^batch_normalization_4/gamma/Assign)^batch_normalization_4/moving_mean/Assign0^batch_normalization_4/moving_mean/biased/Assign4^batch_normalization_4/moving_mean/local_step/Assign-^batch_normalization_4/moving_variance/Assign4^batch_normalization_4/moving_variance/biased/Assign8^batch_normalization_4/moving_variance/local_step/Assign"^batch_normalization_5/beta/Assign#^batch_normalization_5/gamma/Assign)^batch_normalization_5/moving_mean/Assign0^batch_normalization_5/moving_mean/biased/Assign4^batch_normalization_5/moving_mean/local_step/Assign-^batch_normalization_5/moving_variance/Assign4^batch_normalization_5/moving_variance/biased/Assign8^batch_normalization_5/moving_variance/local_step/Assign"^batch_normalization_6/beta/Assign#^batch_normalization_6/gamma/Assign)^batch_normalization_6/moving_mean/Assign0^batch_normalization_6/moving_mean/biased/Assign4^batch_normalization_6/moving_mean/local_step/Assign-^batch_normalization_6/moving_variance/Assign4^batch_normalization_6/moving_variance/biased/Assign8^batch_normalization_6/moving_variance/local_step/Assign"^batch_normalization_7/beta/Assign#^batch_normalization_7/gamma/Assign)^batch_normalization_7/moving_mean/Assign0^batch_normalization_7/moving_mean/biased/Assign4^batch_normalization_7/moving_mean/local_step/Assign-^batch_normalization_7/moving_variance/Assign4^batch_normalization_7/moving_variance/biased/Assign8^batch_normalization_7/moving_variance/local_step/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Assign^conv2d_6/bias/Assign^conv2d_6/kernel/Assign^conv2d_7/bias/Assign^conv2d_7/kernel/Assign^time_distributed_1/bias/Assign!^time_distributed_1/kernel/Assign^vad_bn2/beta/Assign^vad_bn2/gamma/Assign^vad_bn2/moving_mean/Assign"^vad_bn2/moving_mean/biased/Assign&^vad_bn2/moving_mean/local_step/Assign^vad_bn2/moving_variance/Assign&^vad_bn2/moving_variance/biased/Assign*^vad_bn2/moving_variance/local_step/Assign^vad_bn3/beta/Assign^vad_bn3/gamma/Assign^vad_bn3/moving_mean/Assign"^vad_bn3/moving_mean/biased/Assign&^vad_bn3/moving_mean/local_step/Assign^vad_bn3/moving_variance/Assign&^vad_bn3/moving_variance/biased/Assign*^vad_bn3/moving_variance/local_step/Assign^vad_fc2/bias/Assign^vad_fc2/kernel/Assign^vad_fc3/bias/Assign^vad_fc3/kernel/Assign!^vad_prediction_layer/bias/Assign#^vad_prediction_layer/kernel/Assign
_
Adam/iterations/initial_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
s
Adam/iterations
VariableV2*
shape: *
shared_name *
dtype0	*
_output_shapes
: *
	container 
ž
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*"
_class
loc:@Adam/iterations
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
_output_shapes
: *
T0*
_class
loc:@Adam/lr
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ž
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
j
Adam/beta_1/readIdentityAdam/beta_1*
_output_shapes
: *
T0*
_class
loc:@Adam/beta_1
^
Adam/beta_2/initial_valueConst*
_output_shapes
: *
valueB
 *wž?*
dtype0
o
Adam/beta_2
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ž
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
_class
loc:@Adam/beta_2*
_output_shapes
: *
T0
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ş
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/decay
g
Adam/decay/readIdentity
Adam/decay*
T0*
_class
loc:@Adam/decay*
_output_shapes
: 

softmax_targetPlaceholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
q
softmax_sample_weightsPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
\
loss/softmax_loss/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
\
loss/softmax_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/softmax_loss/subSubloss/softmax_loss/sub/xloss/softmax_loss/Const*
T0*
_output_shapes
: 

'loss/softmax_loss/clip_by_value/MinimumMinimumsoftmax/Softmaxloss/softmax_loss/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

loss/softmax_loss/clip_by_valueMaximum'loss/softmax_loss/clip_by_value/Minimumloss/softmax_loss/Const*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
loss/softmax_loss/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

loss/softmax_loss/sub_1Subloss/softmax_loss/sub_1/xloss/softmax_loss/clip_by_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/softmax_loss/truedivRealDivloss/softmax_loss/clip_by_valueloss/softmax_loss/sub_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
loss/softmax_loss/LogLogloss/softmax_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

*loss/softmax_loss/logistic_loss/zeros_like	ZerosLikeloss/softmax_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ą
,loss/softmax_loss/logistic_loss/GreaterEqualGreaterEqualloss/softmax_loss/Log*loss/softmax_loss/logistic_loss/zeros_like*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
&loss/softmax_loss/logistic_loss/SelectSelect,loss/softmax_loss/logistic_loss/GreaterEqualloss/softmax_loss/Log*loss/softmax_loss/logistic_loss/zeros_like*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
s
#loss/softmax_loss/logistic_loss/NegNegloss/softmax_loss/Log*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
(loss/softmax_loss/logistic_loss/Select_1Select,loss/softmax_loss/logistic_loss/GreaterEqual#loss/softmax_loss/logistic_loss/Negloss/softmax_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

#loss/softmax_loss/logistic_loss/mulMulloss/softmax_loss/Logsoftmax_target*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Š
#loss/softmax_loss/logistic_loss/subSub&loss/softmax_loss/logistic_loss/Select#loss/softmax_loss/logistic_loss/mul*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

#loss/softmax_loss/logistic_loss/ExpExp(loss/softmax_loss/logistic_loss/Select_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

%loss/softmax_loss/logistic_loss/Log1pLog1p#loss/softmax_loss/logistic_loss/Exp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
loss/softmax_loss/logistic_lossAdd#loss/softmax_loss/logistic_loss/sub%loss/softmax_loss/logistic_loss/Log1p*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
(loss/softmax_loss/Mean/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
´
loss/softmax_loss/MeanMeanloss/softmax_loss/logistic_loss(loss/softmax_loss/Mean/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
*loss/softmax_loss/Mean_1/reduction_indicesConst*
valueB *
dtype0*
_output_shapes
: 
Ż
loss/softmax_loss/Mean_1Meanloss/softmax_loss/Mean*loss/softmax_loss/Mean_1/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
|
loss/softmax_loss/mulMulloss/softmax_loss/Mean_1softmax_sample_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
loss/softmax_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/softmax_loss/NotEqualNotEqualsoftmax_sample_weightsloss/softmax_loss/NotEqual/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/softmax_loss/CastCastloss/softmax_loss/NotEqual*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

c
loss/softmax_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/softmax_loss/Mean_2Meanloss/softmax_loss/Castloss/softmax_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

loss/softmax_loss/truediv_1RealDivloss/softmax_loss/mulloss/softmax_loss/Mean_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
c
loss/softmax_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/softmax_loss/Mean_3Meanloss/softmax_loss/truediv_1loss/softmax_loss/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
V
loss/mulMul
loss/mul/xloss/softmax_loss/Mean_3*
_output_shapes
: *
T0
]
metrics/acc/RoundRoundsoftmax/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
metrics/acc/EqualEqualsoftmax_targetmetrics/acc/Round*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
metrics/acc/CastCastmetrics/acc/Equal*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0
*
Truncate( 
m
"metrics/acc/Mean/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/MeanMeanmetrics/acc/Cast"metrics/acc/Mean/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0*
T0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/Mean_1Meanmetrics/acc/Meanmetrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
}
training/Adam/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@loss/mul

!training/Adam/gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
_class
loc:@loss/mul*
dtype0
ś
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss/mul
Ś
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/softmax_loss/Mean_3*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
ş
Ctraining/Adam/gradients/loss/softmax_loss/Mean_3_grad/Reshape/shapeConst*
valueB:*+
_class!
loc:@loss/softmax_loss/Mean_3*
dtype0*
_output_shapes
:

=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/softmax_loss/Mean_3_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss/softmax_loss/Mean_3*
_output_shapes
:
Ă
;training/Adam/gradients/loss/softmax_loss/Mean_3_grad/ShapeShapeloss/softmax_loss/truediv_1*
out_type0*+
_class!
loc:@loss/softmax_loss/Mean_3*
_output_shapes
:*
T0
Ť
:training/Adam/gradients/loss/softmax_loss/Mean_3_grad/TileTile=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Reshape;training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0*+
_class!
loc:@loss/softmax_loss/Mean_3
Ĺ
=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Shape_1Shapeloss/softmax_loss/truediv_1*
T0*
out_type0*+
_class!
loc:@loss/softmax_loss/Mean_3*
_output_shapes
:
­
=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Shape_2Const*
_output_shapes
: *
valueB *+
_class!
loc:@loss/softmax_loss/Mean_3*
dtype0
˛
;training/Adam/gradients/loss/softmax_loss/Mean_3_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/softmax_loss/Mean_3
Š
:training/Adam/gradients/loss/softmax_loss/Mean_3_grad/ProdProd=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Shape_1;training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Const*+
_class!
loc:@loss/softmax_loss/Mean_3*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
´
=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *+
_class!
loc:@loss/softmax_loss/Mean_3
­
<training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Prod_1Prod=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Shape_2=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/softmax_loss/Mean_3
Ž
?training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/softmax_loss/Mean_3*
dtype0*
_output_shapes
: 

=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/MaximumMaximum<training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Prod_1?training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Maximum/y*
_output_shapes
: *
T0*+
_class!
loc:@loss/softmax_loss/Mean_3

>training/Adam/gradients/loss/softmax_loss/Mean_3_grad/floordivFloorDiv:training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Prod=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Maximum*
T0*+
_class!
loc:@loss/softmax_loss/Mean_3*
_output_shapes
: 
ď
:training/Adam/gradients/loss/softmax_loss/Mean_3_grad/CastCast>training/Adam/gradients/loss/softmax_loss/Mean_3_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0*+
_class!
loc:@loss/softmax_loss/Mean_3*
Truncate( 

=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/truedivRealDiv:training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Tile:training/Adam/gradients/loss/softmax_loss/Mean_3_grad/Cast*
T0*+
_class!
loc:@loss/softmax_loss/Mean_3*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
>training/Adam/gradients/loss/softmax_loss/truediv_1_grad/ShapeShapeloss/softmax_loss/mul*
T0*
out_type0*.
_class$
" loc:@loss/softmax_loss/truediv_1*
_output_shapes
:
ł
@training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Shape_1Const*
valueB *.
_class$
" loc:@loss/softmax_loss/truediv_1*
dtype0*
_output_shapes
: 
Ö
Ntraining/Adam/gradients/loss/softmax_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/softmax_loss/truediv_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

@training/Adam/gradients/loss/softmax_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/truedivloss/softmax_loss/Mean_2*.
_class$
" loc:@loss/softmax_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
<training/Adam/gradients/loss/softmax_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/softmax_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/softmax_loss/truediv_1_grad/BroadcastGradientArgs*
T0*.
_class$
" loc:@loss/softmax_loss/truediv_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
ľ
@training/Adam/gradients/loss/softmax_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*.
_class$
" loc:@loss/softmax_loss/truediv_1
¸
<training/Adam/gradients/loss/softmax_loss/truediv_1_grad/NegNegloss/softmax_loss/mul*.
_class$
" loc:@loss/softmax_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Btraining/Adam/gradients/loss/softmax_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Negloss/softmax_loss/Mean_2*.
_class$
" loc:@loss/softmax_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Btraining/Adam/gradients/loss/softmax_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/softmax_loss/truediv_1_grad/RealDiv_1loss/softmax_loss/Mean_2*
T0*.
_class$
" loc:@loss/softmax_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
<training/Adam/gradients/loss/softmax_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/softmax_loss/Mean_3_grad/truedivBtraining/Adam/gradients/loss/softmax_loss/truediv_1_grad/RealDiv_2*.
_class$
" loc:@loss/softmax_loss/truediv_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ĺ
>training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/softmax_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/softmax_loss/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*.
_class$
" loc:@loss/softmax_loss/truediv_1*
_output_shapes
:
Ž
Btraining/Adam/gradients/loss/softmax_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*.
_class$
" loc:@loss/softmax_loss/truediv_1*
_output_shapes
: 
ş
8training/Adam/gradients/loss/softmax_loss/mul_grad/ShapeShapeloss/softmax_loss/Mean_1*
T0*
out_type0*(
_class
loc:@loss/softmax_loss/mul*
_output_shapes
:
ş
:training/Adam/gradients/loss/softmax_loss/mul_grad/Shape_1Shapesoftmax_sample_weights*
T0*
out_type0*(
_class
loc:@loss/softmax_loss/mul*
_output_shapes
:
ž
Htraining/Adam/gradients/loss/softmax_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/softmax_loss/mul_grad/Shape:training/Adam/gradients/loss/softmax_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/softmax_loss/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ď
6training/Adam/gradients/loss/softmax_loss/mul_grad/MulMul@training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Reshapesoftmax_sample_weights*
T0*(
_class
loc:@loss/softmax_loss/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
6training/Adam/gradients/loss/softmax_loss/mul_grad/SumSum6training/Adam/gradients/loss/softmax_loss/mul_grad/MulHtraining/Adam/gradients/loss/softmax_loss/mul_grad/BroadcastGradientArgs*
T0*(
_class
loc:@loss/softmax_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 

:training/Adam/gradients/loss/softmax_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/softmax_loss/mul_grad/Sum8training/Adam/gradients/loss/softmax_loss/mul_grad/Shape*
T0*
Tshape0*(
_class
loc:@loss/softmax_loss/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
8training/Adam/gradients/loss/softmax_loss/mul_grad/Mul_1Mulloss/softmax_loss/Mean_1@training/Adam/gradients/loss/softmax_loss/truediv_1_grad/Reshape*(
_class
loc:@loss/softmax_loss/mul*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ż
8training/Adam/gradients/loss/softmax_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/softmax_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/softmax_loss/mul_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@loss/softmax_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ł
<training/Adam/gradients/loss/softmax_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/softmax_loss/mul_grad/Sum_1:training/Adam/gradients/loss/softmax_loss/mul_grad/Shape_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*(
_class
loc:@loss/softmax_loss/mul
ž
;training/Adam/gradients/loss/softmax_loss/Mean_1_grad/ShapeShapeloss/softmax_loss/Mean*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/softmax_loss/Mean_1
Š
:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/SizeConst*
value	B :*+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
: 
ř
9training/Adam/gradients/loss/softmax_loss/Mean_1_grad/addAdd*loss/softmax_loss/Mean_1/reduction_indices:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Size*
T0*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
: 

9training/Adam/gradients/loss/softmax_loss/Mean_1_grad/modFloorMod9training/Adam/gradients/loss/softmax_loss/Mean_1_grad/add:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Size*
_output_shapes
: *
T0*+
_class!
loc:@loss/softmax_loss/Mean_1
´
=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Shape_1Const*
valueB: *+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
:
°
Atraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/range/startConst*
value	B : *+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
: 
°
Atraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/range/deltaConst*
value	B :*+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
: 
Ű
;training/Adam/gradients/loss/softmax_loss/Mean_1_grad/rangeRangeAtraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/range/start:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/SizeAtraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/range/delta*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
:*

Tidx0
Ż
@training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
: 
Ľ
:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/FillFill=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Shape_1@training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
: 
 
Ctraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/DynamicStitchDynamicStitch;training/Adam/gradients/loss/softmax_loss/Mean_1_grad/range9training/Adam/gradients/loss/softmax_loss/Mean_1_grad/mod;training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Shape:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Fill*+
_class!
loc:@loss/softmax_loss/Mean_1*
N*
_output_shapes
:*
T0
Ž
?training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
: 
 
=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/MaximumMaximumCtraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/DynamicStitch?training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Maximum/y*
T0*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
:

>training/Adam/gradients/loss/softmax_loss/Mean_1_grad/floordivFloorDiv;training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Maximum*
T0*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
:
˛
=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/ReshapeReshape:training/Adam/gradients/loss/softmax_loss/mul_grad/ReshapeCtraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss/softmax_loss/Mean_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Reshape>training/Adam/gradients/loss/softmax_loss/Mean_1_grad/floordiv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0*+
_class!
loc:@loss/softmax_loss/Mean_1
Ŕ
=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Shape_2Shapeloss/softmax_loss/Mean*
T0*
out_type0*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
:
Â
=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Shape_3Shapeloss/softmax_loss/Mean_1*
T0*
out_type0*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
:
˛
;training/Adam/gradients/loss/softmax_loss/Mean_1_grad/ConstConst*
valueB: *+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
:
Š
:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/ProdProd=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Shape_2;training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/softmax_loss/Mean_1
´
=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Const_1Const*
valueB: *+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
:
­
<training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Prod_1Prod=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Shape_3=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Const_1*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
°
Atraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/Maximum_1/yConst*
value	B :*+
_class!
loc:@loss/softmax_loss/Mean_1*
dtype0*
_output_shapes
: 

?training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Maximum_1Maximum<training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Prod_1Atraining/Adam/gradients/loss/softmax_loss/Mean_1_grad/Maximum_1/y*
T0*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
: 

@training/Adam/gradients/loss/softmax_loss/Mean_1_grad/floordiv_1FloorDiv:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Prod?training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Maximum_1*+
_class!
loc:@loss/softmax_loss/Mean_1*
_output_shapes
: *
T0
ń
:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/CastCast@training/Adam/gradients/loss/softmax_loss/Mean_1_grad/floordiv_1*

SrcT0*+
_class!
loc:@loss/softmax_loss/Mean_1*
Truncate( *
_output_shapes
: *

DstT0

=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Tile:training/Adam/gradients/loss/softmax_loss/Mean_1_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@loss/softmax_loss/Mean_1
Ă
9training/Adam/gradients/loss/softmax_loss/Mean_grad/ShapeShapeloss/softmax_loss/logistic_loss*
T0*
out_type0*)
_class
loc:@loss/softmax_loss/Mean*
_output_shapes
:
Ľ
8training/Adam/gradients/loss/softmax_loss/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*)
_class
loc:@loss/softmax_loss/Mean
î
7training/Adam/gradients/loss/softmax_loss/Mean_grad/addAdd(loss/softmax_loss/Mean/reduction_indices8training/Adam/gradients/loss/softmax_loss/Mean_grad/Size*)
_class
loc:@loss/softmax_loss/Mean*
_output_shapes
: *
T0

7training/Adam/gradients/loss/softmax_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/softmax_loss/Mean_grad/add8training/Adam/gradients/loss/softmax_loss/Mean_grad/Size*
_output_shapes
: *
T0*)
_class
loc:@loss/softmax_loss/Mean
Š
;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_1Const*
valueB *)
_class
loc:@loss/softmax_loss/Mean*
dtype0*
_output_shapes
: 
Ź
?training/Adam/gradients/loss/softmax_loss/Mean_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *)
_class
loc:@loss/softmax_loss/Mean
Ź
?training/Adam/gradients/loss/softmax_loss/Mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*)
_class
loc:@loss/softmax_loss/Mean
Ń
9training/Adam/gradients/loss/softmax_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/softmax_loss/Mean_grad/range/start8training/Adam/gradients/loss/softmax_loss/Mean_grad/Size?training/Adam/gradients/loss/softmax_loss/Mean_grad/range/delta*)
_class
loc:@loss/softmax_loss/Mean*
_output_shapes
:*

Tidx0
Ť
>training/Adam/gradients/loss/softmax_loss/Mean_grad/Fill/valueConst*
value	B :*)
_class
loc:@loss/softmax_loss/Mean*
dtype0*
_output_shapes
: 

8training/Adam/gradients/loss/softmax_loss/Mean_grad/FillFill;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/softmax_loss/Mean_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*)
_class
loc:@loss/softmax_loss/Mean

Atraining/Adam/gradients/loss/softmax_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/softmax_loss/Mean_grad/range7training/Adam/gradients/loss/softmax_loss/Mean_grad/mod9training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape8training/Adam/gradients/loss/softmax_loss/Mean_grad/Fill*
T0*)
_class
loc:@loss/softmax_loss/Mean*
N*
_output_shapes
:
Ş
=training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum/yConst*
value	B :*)
_class
loc:@loss/softmax_loss/Mean*
dtype0*
_output_shapes
: 

;training/Adam/gradients/loss/softmax_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/softmax_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/softmax_loss/Mean*
_output_shapes
:

<training/Adam/gradients/loss/softmax_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape;training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum*
_output_shapes
:*
T0*)
_class
loc:@loss/softmax_loss/Mean
ź
;training/Adam/gradients/loss/softmax_loss/Mean_grad/ReshapeReshape=training/Adam/gradients/loss/softmax_loss/Mean_1_grad/truedivAtraining/Adam/gradients/loss/softmax_loss/Mean_grad/DynamicStitch*
T0*
Tshape0*)
_class
loc:@loss/softmax_loss/Mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ł
8training/Adam/gradients/loss/softmax_loss/Mean_grad/TileTile;training/Adam/gradients/loss/softmax_loss/Mean_grad/Reshape<training/Adam/gradients/loss/softmax_loss/Mean_grad/floordiv*

Tmultiples0*
T0*)
_class
loc:@loss/softmax_loss/Mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ĺ
;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_2Shapeloss/softmax_loss/logistic_loss*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@loss/softmax_loss/Mean
ź
;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_3Shapeloss/softmax_loss/Mean*
T0*
out_type0*)
_class
loc:@loss/softmax_loss/Mean*
_output_shapes
:
Ž
9training/Adam/gradients/loss/softmax_loss/Mean_grad/ConstConst*
valueB: *)
_class
loc:@loss/softmax_loss/Mean*
dtype0*
_output_shapes
:
Ą
8training/Adam/gradients/loss/softmax_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_29training/Adam/gradients/loss/softmax_loss/Mean_grad/Const*)
_class
loc:@loss/softmax_loss/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
°
;training/Adam/gradients/loss/softmax_loss/Mean_grad/Const_1Const*
valueB: *)
_class
loc:@loss/softmax_loss/Mean*
dtype0*
_output_shapes
:
Ľ
:training/Adam/gradients/loss/softmax_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/softmax_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/softmax_loss/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss/softmax_loss/Mean
Ź
?training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum_1/yConst*
value	B :*)
_class
loc:@loss/softmax_loss/Mean*
dtype0*
_output_shapes
: 

=training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/softmax_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/softmax_loss/Mean*
_output_shapes
: 

>training/Adam/gradients/loss/softmax_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/softmax_loss/Mean_grad/Prod=training/Adam/gradients/loss/softmax_loss/Mean_grad/Maximum_1*
_output_shapes
: *
T0*)
_class
loc:@loss/softmax_loss/Mean
ë
8training/Adam/gradients/loss/softmax_loss/Mean_grad/CastCast>training/Adam/gradients/loss/softmax_loss/Mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0*)
_class
loc:@loss/softmax_loss/Mean*
Truncate( 

;training/Adam/gradients/loss/softmax_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/softmax_loss/Mean_grad/Tile8training/Adam/gradients/loss/softmax_loss/Mean_grad/Cast*
T0*)
_class
loc:@loss/softmax_loss/Mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Btraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/ShapeShape#loss/softmax_loss/logistic_loss/sub*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@loss/softmax_loss/logistic_loss
Ý
Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Shape_1Shape%loss/softmax_loss/logistic_loss/Log1p*
T0*
out_type0*2
_class(
&$loc:@loss/softmax_loss/logistic_loss*
_output_shapes
:
ć
Rtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/ShapeDtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Shape_1*
T0*2
_class(
&$loc:@loss/softmax_loss/logistic_loss*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ě
@training/Adam/gradients/loss/softmax_loss/logistic_loss_grad/SumSum;training/Adam/gradients/loss/softmax_loss/Mean_grad/truedivRtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/BroadcastGradientArgs*
T0*2
_class(
&$loc:@loss/softmax_loss/logistic_loss*
_output_shapes
:*

Tidx0*
	keep_dims( 
É
Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/ReshapeReshape@training/Adam/gradients/loss/softmax_loss/logistic_loss_grad/SumBtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/softmax_loss/logistic_loss*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
Btraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Sum_1Sum;training/Adam/gradients/loss/softmax_loss/Mean_grad/truedivTtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/softmax_loss/logistic_loss
Ď
Ftraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Sum_1Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Shape_1*
T0*
Tshape0*2
_class(
&$loc:@loss/softmax_loss/logistic_loss*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
Ftraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/ShapeShape&loss/softmax_loss/logistic_loss/Select*
T0*
out_type0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/sub*
_output_shapes
:
ă
Htraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Shape_1Shape#loss/softmax_loss/logistic_loss/mul*
_output_shapes
:*
T0*
out_type0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/sub
ö
Vtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/ShapeHtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Shape_1*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/sub*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
á
Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/SumSumDtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/ReshapeVtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/sub
Ů
Htraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/ReshapeReshapeDtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/SumFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/sub
ĺ
Ftraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Sum_1SumDtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/ReshapeXtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/BroadcastGradientArgs:1*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/sub*
_output_shapes
:*

Tidx0*
	keep_dims( 
î
Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/NegNegFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Sum_1*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/sub*
_output_shapes
:
Ý
Jtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Reshape_1ReshapeDtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/NegHtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Htraining/Adam/gradients/loss/softmax_loss/logistic_loss/Log1p_grad/add/xConstG^training/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Reshape_1*
dtype0*
_output_shapes
: *
valueB
 *  ?*8
_class.
,*loc:@loss/softmax_loss/logistic_loss/Log1p
¨
Ftraining/Adam/gradients/loss/softmax_loss/logistic_loss/Log1p_grad/addAddHtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Log1p_grad/add/x#loss/softmax_loss/logistic_loss/Exp*
T0*8
_class.
,*loc:@loss/softmax_loss/logistic_loss/Log1p*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Mtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Log1p_grad/Reciprocal
ReciprocalFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Log1p_grad/add*
T0*8
_class.
,*loc:@loss/softmax_loss/logistic_loss/Log1p*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
Ftraining/Adam/gradients/loss/softmax_loss/logistic_loss/Log1p_grad/mulMulFtraining/Adam/gradients/loss/softmax_loss/logistic_loss_grad/Reshape_1Mtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Log1p_grad/Reciprocal*
T0*8
_class.
,*loc:@loss/softmax_loss/logistic_loss/Log1p*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
Ntraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_grad/zeros_like	ZerosLikeloss/softmax_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*9
_class/
-+loc:@loss/softmax_loss/logistic_loss/Select

Jtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_grad/SelectSelect,loss/softmax_loss/logistic_loss/GreaterEqualHtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/ReshapeNtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_grad/zeros_like*
T0*9
_class/
-+loc:@loss/softmax_loss/logistic_loss/Select*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ltraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_grad/Select_1Select,loss/softmax_loss/logistic_loss/GreaterEqualNtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_grad/zeros_likeHtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Reshape*
T0*9
_class/
-+loc:@loss/softmax_loss/logistic_loss/Select*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
Ftraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/ShapeShapeloss/softmax_loss/Log*
_output_shapes
:*
T0*
out_type0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul
Î
Htraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Shape_1Shapesoftmax_target*
T0*
out_type0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul*
_output_shapes
:
ö
Vtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/ShapeHtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Shape_1*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/MulMulJtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Reshape_1softmax_target*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/SumSumDtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/MulVtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ů
Htraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/ReshapeReshapeDtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/SumFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Shape*
T0*
Tshape0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ftraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Mul_1Mulloss/softmax_loss/LogJtraining/Adam/gradients/loss/softmax_loss/logistic_loss/sub_grad/Reshape_1*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ç
Ftraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Sum_1SumFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Mul_1Xtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul*
_output_shapes
:
č
Jtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Reshape_1ReshapeFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Sum_1Htraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/Shape_1*
Tshape0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
˘
Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Exp_grad/mulMulFtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Log1p_grad/mul#loss/softmax_loss/logistic_loss/Exp*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/Exp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Ptraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_1_grad/zeros_like	ZerosLike#loss/softmax_loss/logistic_loss/Neg*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*;
_class1
/-loc:@loss/softmax_loss/logistic_loss/Select_1

Ltraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_1_grad/SelectSelect,loss/softmax_loss/logistic_loss/GreaterEqualDtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Exp_grad/mulPtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_1_grad/zeros_like*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*;
_class1
/-loc:@loss/softmax_loss/logistic_loss/Select_1

Ntraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_1_grad/Select_1Select,loss/softmax_loss/logistic_loss/GreaterEqualPtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_1_grad/zeros_likeDtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Exp_grad/mul*
T0*;
_class1
/-loc:@loss/softmax_loss/logistic_loss/Select_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Neg_grad/NegNegLtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_1_grad/Select*
T0*6
_class,
*(loc:@loss/softmax_loss/logistic_loss/Neg*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
training/Adam/gradients/AddNAddNJtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_grad/SelectHtraining/Adam/gradients/loss/softmax_loss/logistic_loss/mul_grad/ReshapeNtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Select_1_grad/Select_1Dtraining/Adam/gradients/loss/softmax_loss/logistic_loss/Neg_grad/Neg*
T0*9
_class/
-+loc:@loss/softmax_loss/logistic_loss/Select*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
á
=training/Adam/gradients/loss/softmax_loss/Log_grad/Reciprocal
Reciprocalloss/softmax_loss/truediv^training/Adam/gradients/AddN*
T0*(
_class
loc:@loss/softmax_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
6training/Adam/gradients/loss/softmax_loss/Log_grad/mulMultraining/Adam/gradients/AddN=training/Adam/gradients/loss/softmax_loss/Log_grad/Reciprocal*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*(
_class
loc:@loss/softmax_loss/Log
É
<training/Adam/gradients/loss/softmax_loss/truediv_grad/ShapeShapeloss/softmax_loss/clip_by_value*
out_type0*,
_class"
 loc:@loss/softmax_loss/truediv*
_output_shapes
:*
T0
Ă
>training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape_1Shapeloss/softmax_loss/sub_1*
_output_shapes
:*
T0*
out_type0*,
_class"
 loc:@loss/softmax_loss/truediv
Î
Ltraining/Adam/gradients/loss/softmax_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape>training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/softmax_loss/truediv*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ú
>training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDivRealDiv6training/Adam/gradients/loss/softmax_loss/Log_grad/mulloss/softmax_loss/sub_1*
T0*,
_class"
 loc:@loss/softmax_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
:training/Adam/gradients/loss/softmax_loss/truediv_grad/SumSum>training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/softmax_loss/truediv_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@loss/softmax_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
ą
>training/Adam/gradients/loss/softmax_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/softmax_loss/truediv_grad/Sum<training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@loss/softmax_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
:training/Adam/gradients/loss/softmax_loss/truediv_grad/NegNegloss/softmax_loss/clip_by_value*
T0*,
_class"
 loc:@loss/softmax_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

@training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/softmax_loss/truediv_grad/Negloss/softmax_loss/sub_1*,
_class"
 loc:@loss/softmax_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

@training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDiv_1loss/softmax_loss/sub_1*
T0*,
_class"
 loc:@loss/softmax_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:training/Adam/gradients/loss/softmax_loss/truediv_grad/mulMul6training/Adam/gradients/loss/softmax_loss/Log_grad/mul@training/Adam/gradients/loss/softmax_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/softmax_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
<training/Adam/gradients/loss/softmax_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/softmax_loss/truediv_grad/mulNtraining/Adam/gradients/loss/softmax_loss/truediv_grad/BroadcastGradientArgs:1*
T0*,
_class"
 loc:@loss/softmax_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
ˇ
@training/Adam/gradients/loss/softmax_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/softmax_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/softmax_loss/truediv_grad/Shape_1*
T0*
Tshape0*,
_class"
 loc:@loss/softmax_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
:training/Adam/gradients/loss/softmax_loss/sub_1_grad/ShapeConst*
valueB **
_class 
loc:@loss/softmax_loss/sub_1*
dtype0*
_output_shapes
: 
Ç
<training/Adam/gradients/loss/softmax_loss/sub_1_grad/Shape_1Shapeloss/softmax_loss/clip_by_value*
T0*
out_type0**
_class 
loc:@loss/softmax_loss/sub_1*
_output_shapes
:
Ć
Jtraining/Adam/gradients/loss/softmax_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/softmax_loss/sub_1_grad/Shape<training/Adam/gradients/loss/softmax_loss/sub_1_grad/Shape_1**
_class 
loc:@loss/softmax_loss/sub_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
š
8training/Adam/gradients/loss/softmax_loss/sub_1_grad/SumSum@training/Adam/gradients/loss/softmax_loss/truediv_grad/Reshape_1Jtraining/Adam/gradients/loss/softmax_loss/sub_1_grad/BroadcastGradientArgs*
T0**
_class 
loc:@loss/softmax_loss/sub_1*
_output_shapes
:*

Tidx0*
	keep_dims( 

<training/Adam/gradients/loss/softmax_loss/sub_1_grad/ReshapeReshape8training/Adam/gradients/loss/softmax_loss/sub_1_grad/Sum:training/Adam/gradients/loss/softmax_loss/sub_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@loss/softmax_loss/sub_1*
_output_shapes
: 
˝
:training/Adam/gradients/loss/softmax_loss/sub_1_grad/Sum_1Sum@training/Adam/gradients/loss/softmax_loss/truediv_grad/Reshape_1Ltraining/Adam/gradients/loss/softmax_loss/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@loss/softmax_loss/sub_1
Ę
8training/Adam/gradients/loss/softmax_loss/sub_1_grad/NegNeg:training/Adam/gradients/loss/softmax_loss/sub_1_grad/Sum_1*
T0**
_class 
loc:@loss/softmax_loss/sub_1*
_output_shapes
:
­
>training/Adam/gradients/loss/softmax_loss/sub_1_grad/Reshape_1Reshape8training/Adam/gradients/loss/softmax_loss/sub_1_grad/Neg<training/Adam/gradients/loss/softmax_loss/sub_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@loss/softmax_loss/sub_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

training/Adam/gradients/AddN_1AddN>training/Adam/gradients/loss/softmax_loss/truediv_grad/Reshape>training/Adam/gradients/loss/softmax_loss/sub_1_grad/Reshape_1*
T0*,
_class"
 loc:@loss/softmax_loss/truediv*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
Btraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/ShapeShape'loss/softmax_loss/clip_by_value/Minimum*
T0*
out_type0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value*
_output_shapes
:
ť
Dtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_1Const*
valueB *2
_class(
&$loc:@loss/softmax_loss/clip_by_value*
dtype0*
_output_shapes
: 
Ö
Dtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_2Shapetraining/Adam/gradients/AddN_1*
_output_shapes
:*
T0*
out_type0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
Á
Htraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *2
_class(
&$loc:@loss/softmax_loss/clip_by_value*
dtype0*
_output_shapes
: 
Ň
Btraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_2Htraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Itraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/GreaterEqualGreaterEqual'loss/softmax_loss/clip_by_value/Minimumloss/softmax_loss/Const*
T0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
Rtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
â
Ctraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/SelectSelectItraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/GreaterEqualtraining/Adam/gradients/AddN_1Btraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
@training/Adam/gradients/loss/softmax_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/SelectRtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value*
_output_shapes
:
É
Dtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/softmax_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape*
T0*
Tshape0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ä
Etraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Select_1SelectItraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/GreaterEqualBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/zerostraining/Adam/gradients/AddN_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value
Ú
Btraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/BroadcastGradientArgs:1*
T0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
ž
Ftraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Shape_1*
Tshape0*2
_class(
&$loc:@loss/softmax_loss/clip_by_value*
_output_shapes
: *
T0
Ő
Jtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/ShapeShapesoftmax/Softmax*
T0*
out_type0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*
_output_shapes
:
Ë
Ltraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 

Ltraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_2ShapeDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Reshape*
out_type0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*
_output_shapes
:*
T0
Ń
Ptraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ň
Jtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zerosFillLtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_2Ptraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Ntraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualsoftmax/Softmaxloss/softmax_loss/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum

Ztraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/ShapeLtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_1*
T0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
Ktraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/SelectSelectNtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/LessEqualDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/ReshapeJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zeros*
T0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ô
Htraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/SumSumKtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/SelectZtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
é
Ltraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/ReshapeReshapeHtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/SumJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
Mtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Select_1SelectNtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/LessEqualJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/zerosDtraining/Adam/gradients/loss/softmax_loss/clip_by_value_grad/Reshape*
T0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ú
Jtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Sum_1SumMtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Select_1\training/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ţ
Ntraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeJtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Sum_1Ltraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*:
_class0
.,loc:@loss/softmax_loss/clip_by_value/Minimum
ě
0training/Adam/gradients/softmax/Softmax_grad/mulMulLtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Reshapesoftmax/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*"
_class
loc:@softmax/Softmax
ą
Btraining/Adam/gradients/softmax/Softmax_grad/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*"
_class
loc:@softmax/Softmax*
dtype0*
_output_shapes
: 
 
0training/Adam/gradients/softmax/Softmax_grad/SumSum0training/Adam/gradients/softmax/Softmax_grad/mulBtraining/Adam/gradients/softmax/Softmax_grad/Sum/reduction_indices*
T0*"
_class
loc:@softmax/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims(

0training/Adam/gradients/softmax/Softmax_grad/subSubLtraining/Adam/gradients/loss/softmax_loss/clip_by_value/Minimum_grad/Reshape0training/Adam/gradients/softmax/Softmax_grad/Sum*
T0*"
_class
loc:@softmax/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
2training/Adam/gradients/softmax/Softmax_grad/mul_1Mul0training/Adam/gradients/softmax/Softmax_grad/subsoftmax/Softmax*
T0*"
_class
loc:@softmax/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
Etraining/Adam/gradients/vad_prediction_layer/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/softmax/Softmax_grad/mul_1*
_output_shapes
:*
T0*/
_class%
#!loc:@vad_prediction_layer/BiasAdd*
data_formatNHWC
§
?training/Adam/gradients/vad_prediction_layer/MatMul_grad/MatMulMatMul2training/Adam/gradients/softmax/Softmax_grad/mul_1 vad_prediction_layer/kernel/read*.
_class$
" loc:@vad_prediction_layer/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b(*
T0

Atraining/Adam/gradients/vad_prediction_layer/MatMul_grad/MatMul_1MatMulvad_ac3/Relu2training/Adam/gradients/softmax/Softmax_grad/mul_1*
T0*.
_class$
" loc:@vad_prediction_layer/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( 
ŕ
2training/Adam/gradients/vad_ac3/Relu_grad/ReluGradReluGrad?training/Adam/gradients/vad_prediction_layer/MatMul_grad/MatMulvad_ac3/Relu*
T0*
_class
loc:@vad_ac3/Relu*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ó
9training/Adam/gradients/vad_bn3/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/vad_ac3/Relu_grad/ReluGradvad_bn3/cond/pred_id*
T0*
_class
loc:@vad_ac3/Relu*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@
Ě
?training/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/ShapeShapevad_bn3/cond/batchnorm/mul_1*
T0*
out_type0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/add_1*
_output_shapes
:
ź
Atraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Shape_1Const*
valueB:@*/
_class%
#!loc:@vad_bn3/cond/batchnorm/add_1*
dtype0*
_output_shapes
:
Ú
Otraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/ShapeAtraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/add_1
Á
=training/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/SumSum9training/Adam/gradients/vad_bn3/cond/Merge_grad/cond_gradOtraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/add_1
˝
Atraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/ReshapeReshape=training/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Sum?training/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/add_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ĺ
?training/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Sum_1Sum9training/Adam/gradients/vad_bn3/cond/Merge_grad/cond_gradQtraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@vad_bn3/cond/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ś
Ctraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Reshape_1Reshape?training/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Sum_1Atraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/add_1*
_output_shapes
:@
Č
training/Adam/gradients/SwitchSwitchvad_bn3/batchnorm/add_1vad_bn3/cond/pred_id*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@*
T0**
_class 
loc:@vad_bn3/batchnorm/add_1
Ş
 training/Adam/gradients/IdentityIdentitytraining/Adam/gradients/Switch*
T0**
_class 
loc:@vad_bn3/batchnorm/add_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Š
training/Adam/gradients/Shape_1Shapetraining/Adam/gradients/Switch*
T0*
out_type0**
_class 
loc:@vad_bn3/batchnorm/add_1*
_output_shapes
:
ˇ
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
valueB
 *    **
_class 
loc:@vad_bn3/batchnorm/add_1*
dtype0*
_output_shapes
: 
Ű
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*

index_type0**
_class 
loc:@vad_bn3/batchnorm/add_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

<training/Adam/gradients/vad_bn3/cond/Switch_1_grad/cond_gradMergetraining/Adam/gradients/zeros;training/Adam/gradients/vad_bn3/cond/Merge_grad/cond_grad:1*
T0**
_class 
loc:@vad_bn3/batchnorm/add_1*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙@: 
Ó
?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/ShapeShape#vad_bn3/cond/batchnorm/mul_1/Switch*
out_type0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*
_output_shapes
:*
T0
ź
Atraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Shape_1Const*
valueB:@*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*
dtype0*
_output_shapes
:
Ú
Otraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/ShapeAtraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/MulMulAtraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Reshapevad_bn3/cond/batchnorm/mul*
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ĺ
=training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/SumSum=training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/MulOtraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
˝
Atraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/ReshapeReshape=training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Sum?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Mul_1Mul#vad_bn3/cond/batchnorm/mul_1/SwitchAtraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Reshape*
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ë
?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Sum_1Sum?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Mul_1Qtraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*
_output_shapes
:
ś
Ctraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Sum_1Atraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*
_output_shapes
:@
Ű
;training/Adam/gradients/vad_bn3/cond/batchnorm/sub_grad/NegNegCtraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Reshape_1*
T0*-
_class#
!loc:@vad_bn3/cond/batchnorm/sub*
_output_shapes
:@
˝
:training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/ShapeShapevad_bn3/batchnorm/mul_1*
T0*
out_type0**
_class 
loc:@vad_bn3/batchnorm/add_1*
_output_shapes
:
˛
<training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Shape_1Const*
_output_shapes
:*
valueB:@**
_class 
loc:@vad_bn3/batchnorm/add_1*
dtype0
Ć
Jtraining/Adam/gradients/vad_bn3/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Shape<training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Shape_1*
T0**
_class 
loc:@vad_bn3/batchnorm/add_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ľ
8training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/SumSum<training/Adam/gradients/vad_bn3/cond/Switch_1_grad/cond_gradJtraining/Adam/gradients/vad_bn3/batchnorm/add_1_grad/BroadcastGradientArgs*
T0**
_class 
loc:@vad_bn3/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Š
<training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/ReshapeReshape8training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Sum:training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
Tshape0**
_class 
loc:@vad_bn3/batchnorm/add_1
š
:training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Sum_1Sum<training/Adam/gradients/vad_bn3/cond/Switch_1_grad/cond_gradLtraining/Adam/gradients/vad_bn3/batchnorm/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@vad_bn3/batchnorm/add_1*
_output_shapes
:
˘
>training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Reshape_1Reshape:training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Sum_1<training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@vad_bn3/batchnorm/add_1*
_output_shapes
:@
ş
 training/Adam/gradients/Switch_1Switchvad_fc3/BiasAddvad_bn3/cond/pred_id*"
_class
loc:@vad_fc3/BiasAdd*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙@:˙˙˙˙˙˙˙˙˙@*
T0
¨
"training/Adam/gradients/Identity_1Identity"training/Adam/gradients/Switch_1:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*"
_class
loc:@vad_fc3/BiasAdd
Ľ
training/Adam/gradients/Shape_2Shape"training/Adam/gradients/Switch_1:1*
T0*
out_type0*"
_class
loc:@vad_fc3/BiasAdd*
_output_shapes
:
ł
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
valueB
 *    *"
_class
loc:@vad_fc3/BiasAdd*
dtype0*
_output_shapes
: 
×
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*
T0*

index_type0*"
_class
loc:@vad_fc3/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

Jtraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAtraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Reshapetraining/Adam/gradients/zeros_1*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙@: *
T0*"
_class
loc:@vad_fc3/BiasAdd

 training/Adam/gradients/Switch_2Switchvad_bn3/beta/readvad_bn3/cond/pred_id*
T0*
_class
loc:@vad_bn3/beta* 
_output_shapes
:@:@

"training/Adam/gradients/Identity_2Identity"training/Adam/gradients/Switch_2:1*
T0*
_class
loc:@vad_bn3/beta*
_output_shapes
:@
˘
training/Adam/gradients/Shape_3Shape"training/Adam/gradients/Switch_2:1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@vad_bn3/beta
°
%training/Adam/gradients/zeros_2/ConstConst#^training/Adam/gradients/Identity_2*
valueB
 *    *
_class
loc:@vad_bn3/beta*
dtype0*
_output_shapes
: 
Ç
training/Adam/gradients/zeros_2Filltraining/Adam/gradients/Shape_3%training/Adam/gradients/zeros_2/Const*
_output_shapes
:@*
T0*

index_type0*
_class
loc:@vad_bn3/beta

Htraining/Adam/gradients/vad_bn3/cond/batchnorm/sub/Switch_grad/cond_gradMergeCtraining/Adam/gradients/vad_bn3/cond/batchnorm/add_1_grad/Reshape_1training/Adam/gradients/zeros_2*
_output_shapes

:@: *
T0*
_class
loc:@vad_bn3/beta*
N
ó
=training/Adam/gradients/vad_bn3/cond/batchnorm/mul_2_grad/MulMul;training/Adam/gradients/vad_bn3/cond/batchnorm/sub_grad/Negvad_bn3/cond/batchnorm/mul*
_output_shapes
:@*
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_2
ţ
?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_2_grad/Mul_1Mul;training/Adam/gradients/vad_bn3/cond/batchnorm/sub_grad/Neg#vad_bn3/cond/batchnorm/mul_2/Switch*
_output_shapes
:@*
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_2
ľ
:training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/ShapeShapevad_fc3/BiasAdd*
T0*
out_type0**
_class 
loc:@vad_bn3/batchnorm/mul_1*
_output_shapes
:
˛
<training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Shape_1Const*
valueB:@**
_class 
loc:@vad_bn3/batchnorm/mul_1*
dtype0*
_output_shapes
:
Ć
Jtraining/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Shape<training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Shape_1*
T0**
_class 
loc:@vad_bn3/batchnorm/mul_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ň
8training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/MulMul<training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Reshapevad_bn3/batchnorm/mul*
T0**
_class 
loc:@vad_bn3/batchnorm/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ą
8training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/SumSum8training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/MulJtraining/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@vad_bn3/batchnorm/mul_1*
_output_shapes
:
Š
<training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/ReshapeReshape8training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Sum:training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@vad_bn3/batchnorm/mul_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
î
:training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Mul_1Mulvad_fc3/BiasAdd<training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0**
_class 
loc:@vad_bn3/batchnorm/mul_1
ˇ
:training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Sum_1Sum:training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Mul_1Ltraining/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@vad_bn3/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
˘
>training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Reshape_1Reshape:training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Sum_1<training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Shape_1*
_output_shapes
:@*
T0*
Tshape0**
_class 
loc:@vad_bn3/batchnorm/mul_1
Ě
6training/Adam/gradients/vad_bn3/batchnorm/sub_grad/NegNeg>training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:@*
T0*(
_class
loc:@vad_bn3/batchnorm/sub

training/Adam/gradients/AddN_2AddNCtraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1_grad/Reshape_1?training/Adam/gradients/vad_bn3/cond/batchnorm/mul_2_grad/Mul_1*
T0*/
_class%
#!loc:@vad_bn3/cond/batchnorm/mul_1*
N*
_output_shapes
:@
Ů
;training/Adam/gradients/vad_bn3/cond/batchnorm/mul_grad/MulMultraining/Adam/gradients/AddN_2!vad_bn3/cond/batchnorm/mul/Switch*
T0*-
_class#
!loc:@vad_bn3/cond/batchnorm/mul*
_output_shapes
:@
Ö
=training/Adam/gradients/vad_bn3/cond/batchnorm/mul_grad/Mul_1Multraining/Adam/gradients/AddN_2vad_bn3/cond/batchnorm/Rsqrt*
_output_shapes
:@*
T0*-
_class#
!loc:@vad_bn3/cond/batchnorm/mul
˙
training/Adam/gradients/AddN_3AddNHtraining/Adam/gradients/vad_bn3/cond/batchnorm/sub/Switch_grad/cond_grad>training/Adam/gradients/vad_bn3/batchnorm/add_1_grad/Reshape_1*
T0*
_class
loc:@vad_bn3/beta*
N*
_output_shapes
:@
ß
8training/Adam/gradients/vad_bn3/batchnorm/mul_2_grad/MulMul6training/Adam/gradients/vad_bn3/batchnorm/sub_grad/Negvad_bn3/batchnorm/mul*
T0**
_class 
loc:@vad_bn3/batchnorm/mul_2*
_output_shapes
:@
ă
:training/Adam/gradients/vad_bn3/batchnorm/mul_2_grad/Mul_1Mul6training/Adam/gradients/vad_bn3/batchnorm/sub_grad/Negvad_bn3/moments/Squeeze**
_class 
loc:@vad_bn3/batchnorm/mul_2*
_output_shapes
:@*
T0
Ą
 training/Adam/gradients/Switch_3Switchvad_bn3/gamma/readvad_bn3/cond/pred_id*
T0* 
_class
loc:@vad_bn3/gamma* 
_output_shapes
:@:@

"training/Adam/gradients/Identity_3Identity"training/Adam/gradients/Switch_3:1*
T0* 
_class
loc:@vad_bn3/gamma*
_output_shapes
:@
Ł
training/Adam/gradients/Shape_4Shape"training/Adam/gradients/Switch_3:1*
T0*
out_type0* 
_class
loc:@vad_bn3/gamma*
_output_shapes
:
ą
%training/Adam/gradients/zeros_3/ConstConst#^training/Adam/gradients/Identity_3*
valueB
 *    * 
_class
loc:@vad_bn3/gamma*
dtype0*
_output_shapes
: 
Č
training/Adam/gradients/zeros_3Filltraining/Adam/gradients/Shape_4%training/Adam/gradients/zeros_3/Const*
T0*

index_type0* 
_class
loc:@vad_bn3/gamma*
_output_shapes
:@

Htraining/Adam/gradients/vad_bn3/cond/batchnorm/mul/Switch_grad/cond_gradMerge=training/Adam/gradients/vad_bn3/cond/batchnorm/mul_grad/Mul_1training/Adam/gradients/zeros_3*
N*
_output_shapes

:@: *
T0* 
_class
loc:@vad_bn3/gamma
ˇ
:training/Adam/gradients/vad_bn3/moments/Squeeze_grad/ShapeConst*
valueB"   @   **
_class 
loc:@vad_bn3/moments/Squeeze*
dtype0*
_output_shapes
:
 
<training/Adam/gradients/vad_bn3/moments/Squeeze_grad/ReshapeReshape8training/Adam/gradients/vad_bn3/batchnorm/mul_2_grad/Mul:training/Adam/gradients/vad_bn3/moments/Squeeze_grad/Shape*
T0*
Tshape0**
_class 
loc:@vad_bn3/moments/Squeeze*
_output_shapes

:@
ü
training/Adam/gradients/AddN_4AddN>training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/Reshape_1:training/Adam/gradients/vad_bn3/batchnorm/mul_2_grad/Mul_1**
_class 
loc:@vad_bn3/batchnorm/mul_1*
N*
_output_shapes
:@*
T0
Ŕ
6training/Adam/gradients/vad_bn3/batchnorm/mul_grad/MulMultraining/Adam/gradients/AddN_4vad_bn3/gamma/read*
T0*(
_class
loc:@vad_bn3/batchnorm/mul*
_output_shapes
:@
Ç
8training/Adam/gradients/vad_bn3/batchnorm/mul_grad/Mul_1Multraining/Adam/gradients/AddN_4vad_bn3/batchnorm/Rsqrt*(
_class
loc:@vad_bn3/batchnorm/mul*
_output_shapes
:@*
T0
í
>training/Adam/gradients/vad_bn3/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGradvad_bn3/batchnorm/Rsqrt6training/Adam/gradients/vad_bn3/batchnorm/mul_grad/Mul**
_class 
loc:@vad_bn3/batchnorm/Rsqrt*
_output_shapes
:@*
T0
ú
training/Adam/gradients/AddN_5AddNHtraining/Adam/gradients/vad_bn3/cond/batchnorm/mul/Switch_grad/cond_grad8training/Adam/gradients/vad_bn3/batchnorm/mul_grad/Mul_1*
N*
_output_shapes
:@*
T0* 
_class
loc:@vad_bn3/gamma
Ź
8training/Adam/gradients/vad_bn3/batchnorm/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:@*(
_class
loc:@vad_bn3/batchnorm/add
§
:training/Adam/gradients/vad_bn3/batchnorm/add_grad/Shape_1Const*
_output_shapes
: *
valueB *(
_class
loc:@vad_bn3/batchnorm/add*
dtype0
ž
Htraining/Adam/gradients/vad_bn3/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/vad_bn3/batchnorm/add_grad/Shape:training/Adam/gradients/vad_bn3/batchnorm/add_grad/Shape_1*
T0*(
_class
loc:@vad_bn3/batchnorm/add*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ł
6training/Adam/gradients/vad_bn3/batchnorm/add_grad/SumSum>training/Adam/gradients/vad_bn3/batchnorm/Rsqrt_grad/RsqrtGradHtraining/Adam/gradients/vad_bn3/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:@*

Tidx0*
	keep_dims( *
T0*(
_class
loc:@vad_bn3/batchnorm/add

:training/Adam/gradients/vad_bn3/batchnorm/add_grad/ReshapeReshape6training/Adam/gradients/vad_bn3/batchnorm/add_grad/Sum8training/Adam/gradients/vad_bn3/batchnorm/add_grad/Shape*
T0*
Tshape0*(
_class
loc:@vad_bn3/batchnorm/add*
_output_shapes
:@
ł
8training/Adam/gradients/vad_bn3/batchnorm/add_grad/Sum_1Sum>training/Adam/gradients/vad_bn3/batchnorm/Rsqrt_grad/RsqrtGradJtraining/Adam/gradients/vad_bn3/batchnorm/add_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@vad_bn3/batchnorm/add*
_output_shapes
: *

Tidx0*
	keep_dims( 

<training/Adam/gradients/vad_bn3/batchnorm/add_grad/Reshape_1Reshape8training/Adam/gradients/vad_bn3/batchnorm/add_grad/Sum_1:training/Adam/gradients/vad_bn3/batchnorm/add_grad/Shape_1*
T0*
Tshape0*(
_class
loc:@vad_bn3/batchnorm/add*
_output_shapes
: 
ť
<training/Adam/gradients/vad_bn3/moments/Squeeze_1_grad/ShapeConst*
valueB"   @   *,
_class"
 loc:@vad_bn3/moments/Squeeze_1*
dtype0*
_output_shapes
:
¨
>training/Adam/gradients/vad_bn3/moments/Squeeze_1_grad/ReshapeReshape:training/Adam/gradients/vad_bn3/batchnorm/add_grad/Reshape<training/Adam/gradients/vad_bn3/moments/Squeeze_1_grad/Shape*
_output_shapes

:@*
T0*
Tshape0*,
_class"
 loc:@vad_bn3/moments/Squeeze_1
É
;training/Adam/gradients/vad_bn3/moments/variance_grad/ShapeShape!vad_bn3/moments/SquaredDifference*
out_type0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
:*
T0
Š
:training/Adam/gradients/vad_bn3/moments/variance_grad/SizeConst*
value	B :*+
_class!
loc:@vad_bn3/moments/variance*
dtype0*
_output_shapes
: 
ú
9training/Adam/gradients/vad_bn3/moments/variance_grad/addAdd*vad_bn3/moments/variance/reduction_indices:training/Adam/gradients/vad_bn3/moments/variance_grad/Size*
T0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
:

9training/Adam/gradients/vad_bn3/moments/variance_grad/modFloorMod9training/Adam/gradients/vad_bn3/moments/variance_grad/add:training/Adam/gradients/vad_bn3/moments/variance_grad/Size*
T0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
:
´
=training/Adam/gradients/vad_bn3/moments/variance_grad/Shape_1Const*
valueB:*+
_class!
loc:@vad_bn3/moments/variance*
dtype0*
_output_shapes
:
°
Atraining/Adam/gradients/vad_bn3/moments/variance_grad/range/startConst*
value	B : *+
_class!
loc:@vad_bn3/moments/variance*
dtype0*
_output_shapes
: 
°
Atraining/Adam/gradients/vad_bn3/moments/variance_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@vad_bn3/moments/variance
Ű
;training/Adam/gradients/vad_bn3/moments/variance_grad/rangeRangeAtraining/Adam/gradients/vad_bn3/moments/variance_grad/range/start:training/Adam/gradients/vad_bn3/moments/variance_grad/SizeAtraining/Adam/gradients/vad_bn3/moments/variance_grad/range/delta*

Tidx0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
:
Ż
@training/Adam/gradients/vad_bn3/moments/variance_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@vad_bn3/moments/variance
§
:training/Adam/gradients/vad_bn3/moments/variance_grad/FillFill=training/Adam/gradients/vad_bn3/moments/variance_grad/Shape_1@training/Adam/gradients/vad_bn3/moments/variance_grad/Fill/value*

index_type0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
:*
T0
 
Ctraining/Adam/gradients/vad_bn3/moments/variance_grad/DynamicStitchDynamicStitch;training/Adam/gradients/vad_bn3/moments/variance_grad/range9training/Adam/gradients/vad_bn3/moments/variance_grad/mod;training/Adam/gradients/vad_bn3/moments/variance_grad/Shape:training/Adam/gradients/vad_bn3/moments/variance_grad/Fill*
N*
_output_shapes
:*
T0*+
_class!
loc:@vad_bn3/moments/variance
Ž
?training/Adam/gradients/vad_bn3/moments/variance_grad/Maximum/yConst*
value	B :*+
_class!
loc:@vad_bn3/moments/variance*
dtype0*
_output_shapes
: 
 
=training/Adam/gradients/vad_bn3/moments/variance_grad/MaximumMaximumCtraining/Adam/gradients/vad_bn3/moments/variance_grad/DynamicStitch?training/Adam/gradients/vad_bn3/moments/variance_grad/Maximum/y*
T0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
:

>training/Adam/gradients/vad_bn3/moments/variance_grad/floordivFloorDiv;training/Adam/gradients/vad_bn3/moments/variance_grad/Shape=training/Adam/gradients/vad_bn3/moments/variance_grad/Maximum*
T0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
:
Ă
=training/Adam/gradients/vad_bn3/moments/variance_grad/ReshapeReshape>training/Adam/gradients/vad_bn3/moments/Squeeze_1_grad/ReshapeCtraining/Adam/gradients/vad_bn3/moments/variance_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@vad_bn3/moments/variance*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ť
:training/Adam/gradients/vad_bn3/moments/variance_grad/TileTile=training/Adam/gradients/vad_bn3/moments/variance_grad/Reshape>training/Adam/gradients/vad_bn3/moments/variance_grad/floordiv*
T0*+
_class!
loc:@vad_bn3/moments/variance*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0
Ë
=training/Adam/gradients/vad_bn3/moments/variance_grad/Shape_2Shape!vad_bn3/moments/SquaredDifference*
T0*
out_type0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
:
ť
=training/Adam/gradients/vad_bn3/moments/variance_grad/Shape_3Const*
valueB"   @   *+
_class!
loc:@vad_bn3/moments/variance*
dtype0*
_output_shapes
:
˛
;training/Adam/gradients/vad_bn3/moments/variance_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *+
_class!
loc:@vad_bn3/moments/variance
Š
:training/Adam/gradients/vad_bn3/moments/variance_grad/ProdProd=training/Adam/gradients/vad_bn3/moments/variance_grad/Shape_2;training/Adam/gradients/vad_bn3/moments/variance_grad/Const*
T0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
: *

Tidx0*
	keep_dims( 
´
=training/Adam/gradients/vad_bn3/moments/variance_grad/Const_1Const*
valueB: *+
_class!
loc:@vad_bn3/moments/variance*
dtype0*
_output_shapes
:
­
<training/Adam/gradients/vad_bn3/moments/variance_grad/Prod_1Prod=training/Adam/gradients/vad_bn3/moments/variance_grad/Shape_3=training/Adam/gradients/vad_bn3/moments/variance_grad/Const_1*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
: 
°
Atraining/Adam/gradients/vad_bn3/moments/variance_grad/Maximum_1/yConst*
value	B :*+
_class!
loc:@vad_bn3/moments/variance*
dtype0*
_output_shapes
: 

?training/Adam/gradients/vad_bn3/moments/variance_grad/Maximum_1Maximum<training/Adam/gradients/vad_bn3/moments/variance_grad/Prod_1Atraining/Adam/gradients/vad_bn3/moments/variance_grad/Maximum_1/y*
T0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
: 

@training/Adam/gradients/vad_bn3/moments/variance_grad/floordiv_1FloorDiv:training/Adam/gradients/vad_bn3/moments/variance_grad/Prod?training/Adam/gradients/vad_bn3/moments/variance_grad/Maximum_1*
T0*+
_class!
loc:@vad_bn3/moments/variance*
_output_shapes
: 
ń
:training/Adam/gradients/vad_bn3/moments/variance_grad/CastCast@training/Adam/gradients/vad_bn3/moments/variance_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0*+
_class!
loc:@vad_bn3/moments/variance*
Truncate( 

=training/Adam/gradients/vad_bn3/moments/variance_grad/truedivRealDiv:training/Adam/gradients/vad_bn3/moments/variance_grad/Tile:training/Adam/gradients/vad_bn3/moments/variance_grad/Cast*
T0*+
_class!
loc:@vad_bn3/moments/variance*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
É
Dtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/ShapeShapevad_fc3/BiasAdd*
_output_shapes
:*
T0*
out_type0*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference
Í
Ftraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Shape_1Const*
valueB"   @   *4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*
dtype0*
_output_shapes
:
î
Ttraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/ShapeFtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Shape_1*
T0*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

Etraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/scalarConst>^training/Adam/gradients/vad_bn3/moments/variance_grad/truediv*
valueB
 *   @*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*
dtype0*
_output_shapes
: 
ˇ
Btraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/MulMulEtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/scalar=training/Adam/gradients/vad_bn3/moments/variance_grad/truediv*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
 
Btraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/subSubvad_fc3/BiasAddvad_bn3/moments/StopGradient>^training/Adam/gradients/vad_bn3/moments/variance_grad/truediv*
T0*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ť
Dtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/mul_1MulBtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/MulBtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/sub*
T0*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ű
Btraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/SumSumDtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/mul_1Ttraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*
_output_shapes
:
Ń
Ftraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/ReshapeReshapeBtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/SumDtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ß
Dtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Sum_1SumDtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/mul_1Vtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/BroadcastGradientArgs:1*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Î
Htraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Reshape_1ReshapeDtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Sum_1Ftraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*
_output_shapes

:@
ň
Btraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/NegNegHtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Reshape_1*
T0*4
_class*
(&loc:@vad_bn3/moments/SquaredDifference*
_output_shapes

:@
Ż
7training/Adam/gradients/vad_bn3/moments/mean_grad/ShapeShapevad_fc3/BiasAdd*
T0*
out_type0*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
:
Ą
6training/Adam/gradients/vad_bn3/moments/mean_grad/SizeConst*
value	B :*'
_class
loc:@vad_bn3/moments/mean*
dtype0*
_output_shapes
: 
ę
5training/Adam/gradients/vad_bn3/moments/mean_grad/addAdd&vad_bn3/moments/mean/reduction_indices6training/Adam/gradients/vad_bn3/moments/mean_grad/Size*
T0*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
:
ţ
5training/Adam/gradients/vad_bn3/moments/mean_grad/modFloorMod5training/Adam/gradients/vad_bn3/moments/mean_grad/add6training/Adam/gradients/vad_bn3/moments/mean_grad/Size*
_output_shapes
:*
T0*'
_class
loc:@vad_bn3/moments/mean
Ź
9training/Adam/gradients/vad_bn3/moments/mean_grad/Shape_1Const*
valueB:*'
_class
loc:@vad_bn3/moments/mean*
dtype0*
_output_shapes
:
¨
=training/Adam/gradients/vad_bn3/moments/mean_grad/range/startConst*
value	B : *'
_class
loc:@vad_bn3/moments/mean*
dtype0*
_output_shapes
: 
¨
=training/Adam/gradients/vad_bn3/moments/mean_grad/range/deltaConst*
_output_shapes
: *
value	B :*'
_class
loc:@vad_bn3/moments/mean*
dtype0
Ç
7training/Adam/gradients/vad_bn3/moments/mean_grad/rangeRange=training/Adam/gradients/vad_bn3/moments/mean_grad/range/start6training/Adam/gradients/vad_bn3/moments/mean_grad/Size=training/Adam/gradients/vad_bn3/moments/mean_grad/range/delta*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
:*

Tidx0
§
<training/Adam/gradients/vad_bn3/moments/mean_grad/Fill/valueConst*
_output_shapes
: *
value	B :*'
_class
loc:@vad_bn3/moments/mean*
dtype0

6training/Adam/gradients/vad_bn3/moments/mean_grad/FillFill9training/Adam/gradients/vad_bn3/moments/mean_grad/Shape_1<training/Adam/gradients/vad_bn3/moments/mean_grad/Fill/value*
T0*

index_type0*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
:

?training/Adam/gradients/vad_bn3/moments/mean_grad/DynamicStitchDynamicStitch7training/Adam/gradients/vad_bn3/moments/mean_grad/range5training/Adam/gradients/vad_bn3/moments/mean_grad/mod7training/Adam/gradients/vad_bn3/moments/mean_grad/Shape6training/Adam/gradients/vad_bn3/moments/mean_grad/Fill*
T0*'
_class
loc:@vad_bn3/moments/mean*
N*
_output_shapes
:
Ś
;training/Adam/gradients/vad_bn3/moments/mean_grad/Maximum/yConst*
value	B :*'
_class
loc:@vad_bn3/moments/mean*
dtype0*
_output_shapes
: 

9training/Adam/gradients/vad_bn3/moments/mean_grad/MaximumMaximum?training/Adam/gradients/vad_bn3/moments/mean_grad/DynamicStitch;training/Adam/gradients/vad_bn3/moments/mean_grad/Maximum/y*
T0*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
:

:training/Adam/gradients/vad_bn3/moments/mean_grad/floordivFloorDiv7training/Adam/gradients/vad_bn3/moments/mean_grad/Shape9training/Adam/gradients/vad_bn3/moments/mean_grad/Maximum*
_output_shapes
:*
T0*'
_class
loc:@vad_bn3/moments/mean
ľ
9training/Adam/gradients/vad_bn3/moments/mean_grad/ReshapeReshape<training/Adam/gradients/vad_bn3/moments/Squeeze_grad/Reshape?training/Adam/gradients/vad_bn3/moments/mean_grad/DynamicStitch*
T0*
Tshape0*'
_class
loc:@vad_bn3/moments/mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ť
6training/Adam/gradients/vad_bn3/moments/mean_grad/TileTile9training/Adam/gradients/vad_bn3/moments/mean_grad/Reshape:training/Adam/gradients/vad_bn3/moments/mean_grad/floordiv*

Tmultiples0*
T0*'
_class
loc:@vad_bn3/moments/mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ą
9training/Adam/gradients/vad_bn3/moments/mean_grad/Shape_2Shapevad_fc3/BiasAdd*
out_type0*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
:*
T0
ł
9training/Adam/gradients/vad_bn3/moments/mean_grad/Shape_3Const*
valueB"   @   *'
_class
loc:@vad_bn3/moments/mean*
dtype0*
_output_shapes
:
Ş
7training/Adam/gradients/vad_bn3/moments/mean_grad/ConstConst*
_output_shapes
:*
valueB: *'
_class
loc:@vad_bn3/moments/mean*
dtype0

6training/Adam/gradients/vad_bn3/moments/mean_grad/ProdProd9training/Adam/gradients/vad_bn3/moments/mean_grad/Shape_27training/Adam/gradients/vad_bn3/moments/mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*'
_class
loc:@vad_bn3/moments/mean
Ź
9training/Adam/gradients/vad_bn3/moments/mean_grad/Const_1Const*
_output_shapes
:*
valueB: *'
_class
loc:@vad_bn3/moments/mean*
dtype0

8training/Adam/gradients/vad_bn3/moments/mean_grad/Prod_1Prod9training/Adam/gradients/vad_bn3/moments/mean_grad/Shape_39training/Adam/gradients/vad_bn3/moments/mean_grad/Const_1*
T0*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
¨
=training/Adam/gradients/vad_bn3/moments/mean_grad/Maximum_1/yConst*
_output_shapes
: *
value	B :*'
_class
loc:@vad_bn3/moments/mean*
dtype0

;training/Adam/gradients/vad_bn3/moments/mean_grad/Maximum_1Maximum8training/Adam/gradients/vad_bn3/moments/mean_grad/Prod_1=training/Adam/gradients/vad_bn3/moments/mean_grad/Maximum_1/y*
T0*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
: 

<training/Adam/gradients/vad_bn3/moments/mean_grad/floordiv_1FloorDiv6training/Adam/gradients/vad_bn3/moments/mean_grad/Prod;training/Adam/gradients/vad_bn3/moments/mean_grad/Maximum_1*
T0*'
_class
loc:@vad_bn3/moments/mean*
_output_shapes
: 
ĺ
6training/Adam/gradients/vad_bn3/moments/mean_grad/CastCast<training/Adam/gradients/vad_bn3/moments/mean_grad/floordiv_1*

SrcT0*'
_class
loc:@vad_bn3/moments/mean*
Truncate( *
_output_shapes
: *

DstT0

9training/Adam/gradients/vad_bn3/moments/mean_grad/truedivRealDiv6training/Adam/gradients/vad_bn3/moments/mean_grad/Tile6training/Adam/gradients/vad_bn3/moments/mean_grad/Cast*
T0*'
_class
loc:@vad_bn3/moments/mean*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

training/Adam/gradients/AddN_6AddNJtraining/Adam/gradients/vad_bn3/cond/batchnorm/mul_1/Switch_grad/cond_grad<training/Adam/gradients/vad_bn3/batchnorm/mul_1_grad/ReshapeFtraining/Adam/gradients/vad_bn3/moments/SquaredDifference_grad/Reshape9training/Adam/gradients/vad_bn3/moments/mean_grad/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*"
_class
loc:@vad_fc3/BiasAdd*
N
Ç
8training/Adam/gradients/vad_fc3/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_6*
data_formatNHWC*
_output_shapes
:@*
T0*"
_class
loc:@vad_fc3/BiasAdd
í
2training/Adam/gradients/vad_fc3/MatMul_grad/MatMulMatMultraining/Adam/gradients/AddN_6vad_fc3/kernel/read*!
_class
loc:@vad_fc3/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
ß
4training/Adam/gradients/vad_fc3/MatMul_grad/MatMul_1MatMulvad_ac2/Relutraining/Adam/gradients/AddN_6*
transpose_b( *
T0*!
_class
loc:@vad_fc3/MatMul*
_output_shapes
:	@*
transpose_a(
Ô
2training/Adam/gradients/vad_ac2/Relu_grad/ReluGradReluGrad2training/Adam/gradients/vad_fc3/MatMul_grad/MatMulvad_ac2/Relu*
_class
loc:@vad_ac2/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ő
9training/Adam/gradients/vad_bn2/cond/Merge_grad/cond_gradSwitch2training/Adam/gradients/vad_ac2/Relu_grad/ReluGradvad_bn2/cond/pred_id*
T0*
_class
loc:@vad_ac2/Relu*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ě
?training/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/ShapeShapevad_bn2/cond/batchnorm/mul_1*
T0*
out_type0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/add_1*
_output_shapes
:
˝
Atraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Shape_1Const*
valueB:*/
_class%
#!loc:@vad_bn2/cond/batchnorm/add_1*
dtype0*
_output_shapes
:
Ú
Otraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/ShapeAtraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/add_1
Á
=training/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/SumSum9training/Adam/gradients/vad_bn2/cond/Merge_grad/cond_gradOtraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
ž
Atraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/ReshapeReshape=training/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Sum?training/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ĺ
?training/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Sum_1Sum9training/Adam/gradients/vad_bn2/cond/Merge_grad/cond_gradQtraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
ˇ
Ctraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Reshape_1Reshape?training/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Sum_1Atraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/add_1*
_output_shapes	
:
Ě
 training/Adam/gradients/Switch_4Switchvad_bn2/batchnorm/add_1vad_bn2/cond/pred_id*
T0**
_class 
loc:@vad_bn2/batchnorm/add_1*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ż
"training/Adam/gradients/Identity_4Identity training/Adam/gradients/Switch_4*
T0**
_class 
loc:@vad_bn2/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
training/Adam/gradients/Shape_5Shape training/Adam/gradients/Switch_4*
T0*
out_type0**
_class 
loc:@vad_bn2/batchnorm/add_1*
_output_shapes
:
ť
%training/Adam/gradients/zeros_4/ConstConst#^training/Adam/gradients/Identity_4*
valueB
 *    **
_class 
loc:@vad_bn2/batchnorm/add_1*
dtype0*
_output_shapes
: 
ŕ
training/Adam/gradients/zeros_4Filltraining/Adam/gradients/Shape_5%training/Adam/gradients/zeros_4/Const*
T0*

index_type0**
_class 
loc:@vad_bn2/batchnorm/add_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

<training/Adam/gradients/vad_bn2/cond/Switch_1_grad/cond_gradMergetraining/Adam/gradients/zeros_4;training/Adam/gradients/vad_bn2/cond/Merge_grad/cond_grad:1**
_class 
loc:@vad_bn2/batchnorm/add_1*
N**
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0
Ó
?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/ShapeShape#vad_bn2/cond/batchnorm/mul_1/Switch*
T0*
out_type0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1*
_output_shapes
:
˝
Atraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1
Ú
Otraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/ShapeAtraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Shape_1*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/MulMulAtraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Reshapevad_bn2/cond/batchnorm/mul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1
Ĺ
=training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/SumSum=training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/MulOtraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/BroadcastGradientArgs*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
ž
Atraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/ReshapeReshape=training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Sum?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Mul_1Mul#vad_bn2/cond/batchnorm/mul_1/SwitchAtraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1
Ë
?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Sum_1Sum?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Mul_1Qtraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/BroadcastGradientArgs:1*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ˇ
Ctraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Reshape_1Reshape?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Sum_1Atraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1*
_output_shapes	
:
Ü
;training/Adam/gradients/vad_bn2/cond/batchnorm/sub_grad/NegNegCtraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Reshape_1*
T0*-
_class#
!loc:@vad_bn2/cond/batchnorm/sub*
_output_shapes	
:
˝
:training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/ShapeShapevad_bn2/batchnorm/mul_1*
out_type0**
_class 
loc:@vad_bn2/batchnorm/add_1*
_output_shapes
:*
T0
ł
<training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Shape_1Const*
valueB:**
_class 
loc:@vad_bn2/batchnorm/add_1*
dtype0*
_output_shapes
:
Ć
Jtraining/Adam/gradients/vad_bn2/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Shape<training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Shape_1*
T0**
_class 
loc:@vad_bn2/batchnorm/add_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ľ
8training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/SumSum<training/Adam/gradients/vad_bn2/cond/Switch_1_grad/cond_gradJtraining/Adam/gradients/vad_bn2/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0**
_class 
loc:@vad_bn2/batchnorm/add_1
Ş
<training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/ReshapeReshape8training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Sum:training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0**
_class 
loc:@vad_bn2/batchnorm/add_1
š
:training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Sum_1Sum<training/Adam/gradients/vad_bn2/cond/Switch_1_grad/cond_gradLtraining/Adam/gradients/vad_bn2/batchnorm/add_1_grad/BroadcastGradientArgs:1*
T0**
_class 
loc:@vad_bn2/batchnorm/add_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ł
>training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Reshape_1Reshape:training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Sum_1<training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Shape_1*
_output_shapes	
:*
T0*
Tshape0**
_class 
loc:@vad_bn2/batchnorm/add_1
ź
 training/Adam/gradients/Switch_5Switchvad_fc2/BiasAddvad_bn2/cond/pred_id*
T0*"
_class
loc:@vad_fc2/BiasAdd*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Š
"training/Adam/gradients/Identity_5Identity"training/Adam/gradients/Switch_5:1*
T0*"
_class
loc:@vad_fc2/BiasAdd*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
training/Adam/gradients/Shape_6Shape"training/Adam/gradients/Switch_5:1*
_output_shapes
:*
T0*
out_type0*"
_class
loc:@vad_fc2/BiasAdd
ł
%training/Adam/gradients/zeros_5/ConstConst#^training/Adam/gradients/Identity_5*
valueB
 *    *"
_class
loc:@vad_fc2/BiasAdd*
dtype0*
_output_shapes
: 
Ř
training/Adam/gradients/zeros_5Filltraining/Adam/gradients/Shape_6%training/Adam/gradients/zeros_5/Const*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0*"
_class
loc:@vad_fc2/BiasAdd

Jtraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1/Switch_grad/cond_gradMergeAtraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Reshapetraining/Adam/gradients/zeros_5**
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0*"
_class
loc:@vad_fc2/BiasAdd*
N
Ą
 training/Adam/gradients/Switch_6Switchvad_bn2/beta/readvad_bn2/cond/pred_id*"
_output_shapes
::*
T0*
_class
loc:@vad_bn2/beta

"training/Adam/gradients/Identity_6Identity"training/Adam/gradients/Switch_6:1*
T0*
_class
loc:@vad_bn2/beta*
_output_shapes	
:
˘
training/Adam/gradients/Shape_7Shape"training/Adam/gradients/Switch_6:1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@vad_bn2/beta
°
%training/Adam/gradients/zeros_6/ConstConst#^training/Adam/gradients/Identity_6*
_output_shapes
: *
valueB
 *    *
_class
loc:@vad_bn2/beta*
dtype0
Č
training/Adam/gradients/zeros_6Filltraining/Adam/gradients/Shape_7%training/Adam/gradients/zeros_6/Const*
T0*

index_type0*
_class
loc:@vad_bn2/beta*
_output_shapes	
:

Htraining/Adam/gradients/vad_bn2/cond/batchnorm/sub/Switch_grad/cond_gradMergeCtraining/Adam/gradients/vad_bn2/cond/batchnorm/add_1_grad/Reshape_1training/Adam/gradients/zeros_6*
T0*
_class
loc:@vad_bn2/beta*
N*
_output_shapes
	:: 
ô
=training/Adam/gradients/vad_bn2/cond/batchnorm/mul_2_grad/MulMul;training/Adam/gradients/vad_bn2/cond/batchnorm/sub_grad/Negvad_bn2/cond/batchnorm/mul*
_output_shapes	
:*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_2
˙
?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_2_grad/Mul_1Mul;training/Adam/gradients/vad_bn2/cond/batchnorm/sub_grad/Neg#vad_bn2/cond/batchnorm/mul_2/Switch*
_output_shapes	
:*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_2
ľ
:training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/ShapeShapevad_fc2/BiasAdd*
T0*
out_type0**
_class 
loc:@vad_bn2/batchnorm/mul_1*
_output_shapes
:
ł
<training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Shape_1Const*
valueB:**
_class 
loc:@vad_bn2/batchnorm/mul_1*
dtype0*
_output_shapes
:
Ć
Jtraining/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Shape<training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Shape_1*
T0**
_class 
loc:@vad_bn2/batchnorm/mul_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ó
8training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/MulMul<training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Reshapevad_bn2/batchnorm/mul*
T0**
_class 
loc:@vad_bn2/batchnorm/mul_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ą
8training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/SumSum8training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/MulJtraining/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/BroadcastGradientArgs*
T0**
_class 
loc:@vad_bn2/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ş
<training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/ReshapeReshape8training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Sum:training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Shape*
T0*
Tshape0**
_class 
loc:@vad_bn2/batchnorm/mul_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ď
:training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Mul_1Mulvad_fc2/BiasAdd<training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Reshape*
T0**
_class 
loc:@vad_bn2/batchnorm/mul_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
:training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Sum_1Sum:training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Mul_1Ltraining/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/BroadcastGradientArgs:1**
_class 
loc:@vad_bn2/batchnorm/mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ł
>training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Reshape_1Reshape:training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Sum_1<training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0**
_class 
loc:@vad_bn2/batchnorm/mul_1*
_output_shapes	
:
Í
6training/Adam/gradients/vad_bn2/batchnorm/sub_grad/NegNeg>training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Reshape_1*
T0*(
_class
loc:@vad_bn2/batchnorm/sub*
_output_shapes	
:

training/Adam/gradients/AddN_7AddNCtraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1_grad/Reshape_1?training/Adam/gradients/vad_bn2/cond/batchnorm/mul_2_grad/Mul_1*
T0*/
_class%
#!loc:@vad_bn2/cond/batchnorm/mul_1*
N*
_output_shapes	
:
Ú
;training/Adam/gradients/vad_bn2/cond/batchnorm/mul_grad/MulMultraining/Adam/gradients/AddN_7!vad_bn2/cond/batchnorm/mul/Switch*
T0*-
_class#
!loc:@vad_bn2/cond/batchnorm/mul*
_output_shapes	
:
×
=training/Adam/gradients/vad_bn2/cond/batchnorm/mul_grad/Mul_1Multraining/Adam/gradients/AddN_7vad_bn2/cond/batchnorm/Rsqrt*
T0*-
_class#
!loc:@vad_bn2/cond/batchnorm/mul*
_output_shapes	
:

training/Adam/gradients/AddN_8AddNHtraining/Adam/gradients/vad_bn2/cond/batchnorm/sub/Switch_grad/cond_grad>training/Adam/gradients/vad_bn2/batchnorm/add_1_grad/Reshape_1*
T0*
_class
loc:@vad_bn2/beta*
N*
_output_shapes	
:
ŕ
8training/Adam/gradients/vad_bn2/batchnorm/mul_2_grad/MulMul6training/Adam/gradients/vad_bn2/batchnorm/sub_grad/Negvad_bn2/batchnorm/mul*
_output_shapes	
:*
T0**
_class 
loc:@vad_bn2/batchnorm/mul_2
ä
:training/Adam/gradients/vad_bn2/batchnorm/mul_2_grad/Mul_1Mul6training/Adam/gradients/vad_bn2/batchnorm/sub_grad/Negvad_bn2/moments/Squeeze**
_class 
loc:@vad_bn2/batchnorm/mul_2*
_output_shapes	
:*
T0
Ł
 training/Adam/gradients/Switch_7Switchvad_bn2/gamma/readvad_bn2/cond/pred_id*"
_output_shapes
::*
T0* 
_class
loc:@vad_bn2/gamma

"training/Adam/gradients/Identity_7Identity"training/Adam/gradients/Switch_7:1*
T0* 
_class
loc:@vad_bn2/gamma*
_output_shapes	
:
Ł
training/Adam/gradients/Shape_8Shape"training/Adam/gradients/Switch_7:1*
T0*
out_type0* 
_class
loc:@vad_bn2/gamma*
_output_shapes
:
ą
%training/Adam/gradients/zeros_7/ConstConst#^training/Adam/gradients/Identity_7*
dtype0*
_output_shapes
: *
valueB
 *    * 
_class
loc:@vad_bn2/gamma
É
training/Adam/gradients/zeros_7Filltraining/Adam/gradients/Shape_8%training/Adam/gradients/zeros_7/Const*
T0*

index_type0* 
_class
loc:@vad_bn2/gamma*
_output_shapes	
:

Htraining/Adam/gradients/vad_bn2/cond/batchnorm/mul/Switch_grad/cond_gradMerge=training/Adam/gradients/vad_bn2/cond/batchnorm/mul_grad/Mul_1training/Adam/gradients/zeros_7*
N*
_output_shapes
	:: *
T0* 
_class
loc:@vad_bn2/gamma
ˇ
:training/Adam/gradients/vad_bn2/moments/Squeeze_grad/ShapeConst*
valueB"      **
_class 
loc:@vad_bn2/moments/Squeeze*
dtype0*
_output_shapes
:
Ą
<training/Adam/gradients/vad_bn2/moments/Squeeze_grad/ReshapeReshape8training/Adam/gradients/vad_bn2/batchnorm/mul_2_grad/Mul:training/Adam/gradients/vad_bn2/moments/Squeeze_grad/Shape*
T0*
Tshape0**
_class 
loc:@vad_bn2/moments/Squeeze*
_output_shapes
:	
ý
training/Adam/gradients/AddN_9AddN>training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/Reshape_1:training/Adam/gradients/vad_bn2/batchnorm/mul_2_grad/Mul_1*
T0**
_class 
loc:@vad_bn2/batchnorm/mul_1*
N*
_output_shapes	
:
Á
6training/Adam/gradients/vad_bn2/batchnorm/mul_grad/MulMultraining/Adam/gradients/AddN_9vad_bn2/gamma/read*
T0*(
_class
loc:@vad_bn2/batchnorm/mul*
_output_shapes	
:
Č
8training/Adam/gradients/vad_bn2/batchnorm/mul_grad/Mul_1Multraining/Adam/gradients/AddN_9vad_bn2/batchnorm/Rsqrt*(
_class
loc:@vad_bn2/batchnorm/mul*
_output_shapes	
:*
T0
î
>training/Adam/gradients/vad_bn2/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGradvad_bn2/batchnorm/Rsqrt6training/Adam/gradients/vad_bn2/batchnorm/mul_grad/Mul*
T0**
_class 
loc:@vad_bn2/batchnorm/Rsqrt*
_output_shapes	
:
ü
training/Adam/gradients/AddN_10AddNHtraining/Adam/gradients/vad_bn2/cond/batchnorm/mul/Switch_grad/cond_grad8training/Adam/gradients/vad_bn2/batchnorm/mul_grad/Mul_1*
T0* 
_class
loc:@vad_bn2/gamma*
N*
_output_shapes	
:
­
8training/Adam/gradients/vad_bn2/batchnorm/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:*(
_class
loc:@vad_bn2/batchnorm/add
§
:training/Adam/gradients/vad_bn2/batchnorm/add_grad/Shape_1Const*
valueB *(
_class
loc:@vad_bn2/batchnorm/add*
dtype0*
_output_shapes
: 
ž
Htraining/Adam/gradients/vad_bn2/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/vad_bn2/batchnorm/add_grad/Shape:training/Adam/gradients/vad_bn2/batchnorm/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*(
_class
loc:@vad_bn2/batchnorm/add
´
6training/Adam/gradients/vad_bn2/batchnorm/add_grad/SumSum>training/Adam/gradients/vad_bn2/batchnorm/Rsqrt_grad/RsqrtGradHtraining/Adam/gradients/vad_bn2/batchnorm/add_grad/BroadcastGradientArgs*
T0*(
_class
loc:@vad_bn2/batchnorm/add*
_output_shapes	
:*

Tidx0*
	keep_dims( 

:training/Adam/gradients/vad_bn2/batchnorm/add_grad/ReshapeReshape6training/Adam/gradients/vad_bn2/batchnorm/add_grad/Sum8training/Adam/gradients/vad_bn2/batchnorm/add_grad/Shape*
_output_shapes	
:*
T0*
Tshape0*(
_class
loc:@vad_bn2/batchnorm/add
ł
8training/Adam/gradients/vad_bn2/batchnorm/add_grad/Sum_1Sum>training/Adam/gradients/vad_bn2/batchnorm/Rsqrt_grad/RsqrtGradJtraining/Adam/gradients/vad_bn2/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*(
_class
loc:@vad_bn2/batchnorm/add

<training/Adam/gradients/vad_bn2/batchnorm/add_grad/Reshape_1Reshape8training/Adam/gradients/vad_bn2/batchnorm/add_grad/Sum_1:training/Adam/gradients/vad_bn2/batchnorm/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*(
_class
loc:@vad_bn2/batchnorm/add
ť
<training/Adam/gradients/vad_bn2/moments/Squeeze_1_grad/ShapeConst*
valueB"      *,
_class"
 loc:@vad_bn2/moments/Squeeze_1*
dtype0*
_output_shapes
:
Š
>training/Adam/gradients/vad_bn2/moments/Squeeze_1_grad/ReshapeReshape:training/Adam/gradients/vad_bn2/batchnorm/add_grad/Reshape<training/Adam/gradients/vad_bn2/moments/Squeeze_1_grad/Shape*
T0*
Tshape0*,
_class"
 loc:@vad_bn2/moments/Squeeze_1*
_output_shapes
:	
É
;training/Adam/gradients/vad_bn2/moments/variance_grad/ShapeShape!vad_bn2/moments/SquaredDifference*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@vad_bn2/moments/variance
Š
:training/Adam/gradients/vad_bn2/moments/variance_grad/SizeConst*
value	B :*+
_class!
loc:@vad_bn2/moments/variance*
dtype0*
_output_shapes
: 
ú
9training/Adam/gradients/vad_bn2/moments/variance_grad/addAdd*vad_bn2/moments/variance/reduction_indices:training/Adam/gradients/vad_bn2/moments/variance_grad/Size*
T0*+
_class!
loc:@vad_bn2/moments/variance*
_output_shapes
:

9training/Adam/gradients/vad_bn2/moments/variance_grad/modFloorMod9training/Adam/gradients/vad_bn2/moments/variance_grad/add:training/Adam/gradients/vad_bn2/moments/variance_grad/Size*
_output_shapes
:*
T0*+
_class!
loc:@vad_bn2/moments/variance
´
=training/Adam/gradients/vad_bn2/moments/variance_grad/Shape_1Const*
_output_shapes
:*
valueB:*+
_class!
loc:@vad_bn2/moments/variance*
dtype0
°
Atraining/Adam/gradients/vad_bn2/moments/variance_grad/range/startConst*
value	B : *+
_class!
loc:@vad_bn2/moments/variance*
dtype0*
_output_shapes
: 
°
Atraining/Adam/gradients/vad_bn2/moments/variance_grad/range/deltaConst*
_output_shapes
: *
value	B :*+
_class!
loc:@vad_bn2/moments/variance*
dtype0
Ű
;training/Adam/gradients/vad_bn2/moments/variance_grad/rangeRangeAtraining/Adam/gradients/vad_bn2/moments/variance_grad/range/start:training/Adam/gradients/vad_bn2/moments/variance_grad/SizeAtraining/Adam/gradients/vad_bn2/moments/variance_grad/range/delta*+
_class!
loc:@vad_bn2/moments/variance*
_output_shapes
:*

Tidx0
Ż
@training/Adam/gradients/vad_bn2/moments/variance_grad/Fill/valueConst*
_output_shapes
: *
value	B :*+
_class!
loc:@vad_bn2/moments/variance*
dtype0
§
:training/Adam/gradients/vad_bn2/moments/variance_grad/FillFill=training/Adam/gradients/vad_bn2/moments/variance_grad/Shape_1@training/Adam/gradients/vad_bn2/moments/variance_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@vad_bn2/moments/variance*
_output_shapes
:
 
Ctraining/Adam/gradients/vad_bn2/moments/variance_grad/DynamicStitchDynamicStitch;training/Adam/gradients/vad_bn2/moments/variance_grad/range9training/Adam/gradients/vad_bn2/moments/variance_grad/mod;training/Adam/gradients/vad_bn2/moments/variance_grad/Shape:training/Adam/gradients/vad_bn2/moments/variance_grad/Fill*
T0*+
_class!
loc:@vad_bn2/moments/variance*
N*
_output_shapes
:
Ž
?training/Adam/gradients/vad_bn2/moments/variance_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@vad_bn2/moments/variance
 
=training/Adam/gradients/vad_bn2/moments/variance_grad/MaximumMaximumCtraining/Adam/gradients/vad_bn2/moments/variance_grad/DynamicStitch?training/Adam/gradients/vad_bn2/moments/variance_grad/Maximum/y*
_output_shapes
:*
T0*+
_class!
loc:@vad_bn2/moments/variance

>training/Adam/gradients/vad_bn2/moments/variance_grad/floordivFloorDiv;training/Adam/gradients/vad_bn2/moments/variance_grad/Shape=training/Adam/gradients/vad_bn2/moments/variance_grad/Maximum*
T0*+
_class!
loc:@vad_bn2/moments/variance*
_output_shapes
:
Ă
=training/Adam/gradients/vad_bn2/moments/variance_grad/ReshapeReshape>training/Adam/gradients/vad_bn2/moments/Squeeze_1_grad/ReshapeCtraining/Adam/gradients/vad_bn2/moments/variance_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@vad_bn2/moments/variance*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ť
:training/Adam/gradients/vad_bn2/moments/variance_grad/TileTile=training/Adam/gradients/vad_bn2/moments/variance_grad/Reshape>training/Adam/gradients/vad_bn2/moments/variance_grad/floordiv*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0*+
_class!
loc:@vad_bn2/moments/variance
Ë
=training/Adam/gradients/vad_bn2/moments/variance_grad/Shape_2Shape!vad_bn2/moments/SquaredDifference*
T0*
out_type0*+
_class!
loc:@vad_bn2/moments/variance*
_output_shapes
:
ť
=training/Adam/gradients/vad_bn2/moments/variance_grad/Shape_3Const*
valueB"      *+
_class!
loc:@vad_bn2/moments/variance*
dtype0*
_output_shapes
:
˛
;training/Adam/gradients/vad_bn2/moments/variance_grad/ConstConst*
valueB: *+
_class!
loc:@vad_bn2/moments/variance*
dtype0*
_output_shapes
:
Š
:training/Adam/gradients/vad_bn2/moments/variance_grad/ProdProd=training/Adam/gradients/vad_bn2/moments/variance_grad/Shape_2;training/Adam/gradients/vad_bn2/moments/variance_grad/Const*
T0*+
_class!
loc:@vad_bn2/moments/variance*
_output_shapes
: *

Tidx0*
	keep_dims( 
´
=training/Adam/gradients/vad_bn2/moments/variance_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: *+
_class!
loc:@vad_bn2/moments/variance
­
<training/Adam/gradients/vad_bn2/moments/variance_grad/Prod_1Prod=training/Adam/gradients/vad_bn2/moments/variance_grad/Shape_3=training/Adam/gradients/vad_bn2/moments/variance_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@vad_bn2/moments/variance
°
Atraining/Adam/gradients/vad_bn2/moments/variance_grad/Maximum_1/yConst*
_output_shapes
: *
value	B :*+
_class!
loc:@vad_bn2/moments/variance*
dtype0

?training/Adam/gradients/vad_bn2/moments/variance_grad/Maximum_1Maximum<training/Adam/gradients/vad_bn2/moments/variance_grad/Prod_1Atraining/Adam/gradients/vad_bn2/moments/variance_grad/Maximum_1/y*
_output_shapes
: *
T0*+
_class!
loc:@vad_bn2/moments/variance

@training/Adam/gradients/vad_bn2/moments/variance_grad/floordiv_1FloorDiv:training/Adam/gradients/vad_bn2/moments/variance_grad/Prod?training/Adam/gradients/vad_bn2/moments/variance_grad/Maximum_1*
_output_shapes
: *
T0*+
_class!
loc:@vad_bn2/moments/variance
ń
:training/Adam/gradients/vad_bn2/moments/variance_grad/CastCast@training/Adam/gradients/vad_bn2/moments/variance_grad/floordiv_1*

SrcT0*+
_class!
loc:@vad_bn2/moments/variance*
Truncate( *
_output_shapes
: *

DstT0
 
=training/Adam/gradients/vad_bn2/moments/variance_grad/truedivRealDiv:training/Adam/gradients/vad_bn2/moments/variance_grad/Tile:training/Adam/gradients/vad_bn2/moments/variance_grad/Cast*
T0*+
_class!
loc:@vad_bn2/moments/variance*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
É
Dtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/ShapeShapevad_fc2/BiasAdd*
T0*
out_type0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*
_output_shapes
:
Í
Ftraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Shape_1Const*
valueB"      *4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*
dtype0*
_output_shapes
:
î
Ttraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/ShapeFtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Shape_1*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

Etraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/scalarConst>^training/Adam/gradients/vad_bn2/moments/variance_grad/truediv*
_output_shapes
: *
valueB
 *   @*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*
dtype0
¸
Btraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/MulMulEtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/scalar=training/Adam/gradients/vad_bn2/moments/variance_grad/truediv*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference
Ą
Btraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/subSubvad_fc2/BiasAddvad_bn2/moments/StopGradient>^training/Adam/gradients/vad_bn2/moments/variance_grad/truediv*
T0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
Dtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/mul_1MulBtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/MulBtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/sub*
T0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
Btraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/SumSumDtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/mul_1Ttraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*
_output_shapes
:
Ň
Ftraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/ReshapeReshapeBtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/SumDtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Shape*
Tshape0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ß
Dtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Sum_1SumDtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/mul_1Vtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ď
Htraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Reshape_1ReshapeDtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Sum_1Ftraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Shape_1*
_output_shapes
:	*
T0*
Tshape0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference
ó
Btraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/NegNegHtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Reshape_1*
_output_shapes
:	*
T0*4
_class*
(&loc:@vad_bn2/moments/SquaredDifference
Ż
7training/Adam/gradients/vad_bn2/moments/mean_grad/ShapeShapevad_fc2/BiasAdd*
T0*
out_type0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
:
Ą
6training/Adam/gradients/vad_bn2/moments/mean_grad/SizeConst*
value	B :*'
_class
loc:@vad_bn2/moments/mean*
dtype0*
_output_shapes
: 
ę
5training/Adam/gradients/vad_bn2/moments/mean_grad/addAdd&vad_bn2/moments/mean/reduction_indices6training/Adam/gradients/vad_bn2/moments/mean_grad/Size*
T0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
:
ţ
5training/Adam/gradients/vad_bn2/moments/mean_grad/modFloorMod5training/Adam/gradients/vad_bn2/moments/mean_grad/add6training/Adam/gradients/vad_bn2/moments/mean_grad/Size*
T0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
:
Ź
9training/Adam/gradients/vad_bn2/moments/mean_grad/Shape_1Const*
_output_shapes
:*
valueB:*'
_class
loc:@vad_bn2/moments/mean*
dtype0
¨
=training/Adam/gradients/vad_bn2/moments/mean_grad/range/startConst*
_output_shapes
: *
value	B : *'
_class
loc:@vad_bn2/moments/mean*
dtype0
¨
=training/Adam/gradients/vad_bn2/moments/mean_grad/range/deltaConst*
value	B :*'
_class
loc:@vad_bn2/moments/mean*
dtype0*
_output_shapes
: 
Ç
7training/Adam/gradients/vad_bn2/moments/mean_grad/rangeRange=training/Adam/gradients/vad_bn2/moments/mean_grad/range/start6training/Adam/gradients/vad_bn2/moments/mean_grad/Size=training/Adam/gradients/vad_bn2/moments/mean_grad/range/delta*

Tidx0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
:
§
<training/Adam/gradients/vad_bn2/moments/mean_grad/Fill/valueConst*
value	B :*'
_class
loc:@vad_bn2/moments/mean*
dtype0*
_output_shapes
: 

6training/Adam/gradients/vad_bn2/moments/mean_grad/FillFill9training/Adam/gradients/vad_bn2/moments/mean_grad/Shape_1<training/Adam/gradients/vad_bn2/moments/mean_grad/Fill/value*
T0*

index_type0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
:

?training/Adam/gradients/vad_bn2/moments/mean_grad/DynamicStitchDynamicStitch7training/Adam/gradients/vad_bn2/moments/mean_grad/range5training/Adam/gradients/vad_bn2/moments/mean_grad/mod7training/Adam/gradients/vad_bn2/moments/mean_grad/Shape6training/Adam/gradients/vad_bn2/moments/mean_grad/Fill*
N*
_output_shapes
:*
T0*'
_class
loc:@vad_bn2/moments/mean
Ś
;training/Adam/gradients/vad_bn2/moments/mean_grad/Maximum/yConst*
value	B :*'
_class
loc:@vad_bn2/moments/mean*
dtype0*
_output_shapes
: 

9training/Adam/gradients/vad_bn2/moments/mean_grad/MaximumMaximum?training/Adam/gradients/vad_bn2/moments/mean_grad/DynamicStitch;training/Adam/gradients/vad_bn2/moments/mean_grad/Maximum/y*
T0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
:

:training/Adam/gradients/vad_bn2/moments/mean_grad/floordivFloorDiv7training/Adam/gradients/vad_bn2/moments/mean_grad/Shape9training/Adam/gradients/vad_bn2/moments/mean_grad/Maximum*
T0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
:
ľ
9training/Adam/gradients/vad_bn2/moments/mean_grad/ReshapeReshape<training/Adam/gradients/vad_bn2/moments/Squeeze_grad/Reshape?training/Adam/gradients/vad_bn2/moments/mean_grad/DynamicStitch*
T0*
Tshape0*'
_class
loc:@vad_bn2/moments/mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ť
6training/Adam/gradients/vad_bn2/moments/mean_grad/TileTile9training/Adam/gradients/vad_bn2/moments/mean_grad/Reshape:training/Adam/gradients/vad_bn2/moments/mean_grad/floordiv*'
_class
loc:@vad_bn2/moments/mean*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
ą
9training/Adam/gradients/vad_bn2/moments/mean_grad/Shape_2Shapevad_fc2/BiasAdd*
T0*
out_type0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
:
ł
9training/Adam/gradients/vad_bn2/moments/mean_grad/Shape_3Const*
valueB"      *'
_class
loc:@vad_bn2/moments/mean*
dtype0*
_output_shapes
:
Ş
7training/Adam/gradients/vad_bn2/moments/mean_grad/ConstConst*
valueB: *'
_class
loc:@vad_bn2/moments/mean*
dtype0*
_output_shapes
:

6training/Adam/gradients/vad_bn2/moments/mean_grad/ProdProd9training/Adam/gradients/vad_bn2/moments/mean_grad/Shape_27training/Adam/gradients/vad_bn2/moments/mean_grad/Const*

Tidx0*
	keep_dims( *
T0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
: 
Ź
9training/Adam/gradients/vad_bn2/moments/mean_grad/Const_1Const*
_output_shapes
:*
valueB: *'
_class
loc:@vad_bn2/moments/mean*
dtype0

8training/Adam/gradients/vad_bn2/moments/mean_grad/Prod_1Prod9training/Adam/gradients/vad_bn2/moments/mean_grad/Shape_39training/Adam/gradients/vad_bn2/moments/mean_grad/Const_1*
T0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
¨
=training/Adam/gradients/vad_bn2/moments/mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :*'
_class
loc:@vad_bn2/moments/mean

;training/Adam/gradients/vad_bn2/moments/mean_grad/Maximum_1Maximum8training/Adam/gradients/vad_bn2/moments/mean_grad/Prod_1=training/Adam/gradients/vad_bn2/moments/mean_grad/Maximum_1/y*
T0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
: 

<training/Adam/gradients/vad_bn2/moments/mean_grad/floordiv_1FloorDiv6training/Adam/gradients/vad_bn2/moments/mean_grad/Prod;training/Adam/gradients/vad_bn2/moments/mean_grad/Maximum_1*
T0*'
_class
loc:@vad_bn2/moments/mean*
_output_shapes
: 
ĺ
6training/Adam/gradients/vad_bn2/moments/mean_grad/CastCast<training/Adam/gradients/vad_bn2/moments/mean_grad/floordiv_1*'
_class
loc:@vad_bn2/moments/mean*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

9training/Adam/gradients/vad_bn2/moments/mean_grad/truedivRealDiv6training/Adam/gradients/vad_bn2/moments/mean_grad/Tile6training/Adam/gradients/vad_bn2/moments/mean_grad/Cast*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*'
_class
loc:@vad_bn2/moments/mean

training/Adam/gradients/AddN_11AddNJtraining/Adam/gradients/vad_bn2/cond/batchnorm/mul_1/Switch_grad/cond_grad<training/Adam/gradients/vad_bn2/batchnorm/mul_1_grad/ReshapeFtraining/Adam/gradients/vad_bn2/moments/SquaredDifference_grad/Reshape9training/Adam/gradients/vad_bn2/moments/mean_grad/truediv*"
_class
loc:@vad_fc2/BiasAdd*
N*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
É
8training/Adam/gradients/vad_fc2/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_11*
T0*"
_class
loc:@vad_fc2/BiasAdd*
data_formatNHWC*
_output_shapes	
:
î
2training/Adam/gradients/vad_fc2/MatMul_grad/MatMulMatMultraining/Adam/gradients/AddN_11vad_fc2/kernel/read*!
_class
loc:@vad_fc2/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
ô
4training/Adam/gradients/vad_fc2/MatMul_grad/MatMul_1MatMulglobal_average_pooling1d_1/Meantraining/Adam/gradients/AddN_11*
T0*!
_class
loc:@vad_fc2/MatMul* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
Ň
Btraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/ShapeShapetime_distributed_1/Reshape_1*
T0*
out_type0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
:
ˇ
Atraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/SizeConst*
value	B :*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
dtype0*
_output_shapes
: 

@training/Adam/gradients/global_average_pooling1d_1/Mean_grad/addAdd1global_average_pooling1d_1/Mean/reduction_indicesAtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Size*
_output_shapes
: *
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean
Ś
@training/Adam/gradients/global_average_pooling1d_1/Mean_grad/modFloorMod@training/Adam/gradients/global_average_pooling1d_1/Mean_grad/addAtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Size*
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
: 
ť
Dtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Shape_1Const*
valueB *2
_class(
&$loc:@global_average_pooling1d_1/Mean*
dtype0*
_output_shapes
: 
ž
Htraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/range/startConst*
value	B : *2
_class(
&$loc:@global_average_pooling1d_1/Mean*
dtype0*
_output_shapes
: 
ž
Htraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/range/deltaConst*
value	B :*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
dtype0*
_output_shapes
: 
ţ
Btraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/rangeRangeHtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/range/startAtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/SizeHtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/range/delta*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
:*

Tidx0
˝
Gtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Fill/valueConst*
value	B :*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
dtype0*
_output_shapes
: 
ż
Atraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/FillFillDtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Shape_1Gtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Fill/value*
T0*

index_type0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
: 
Ę
Jtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/DynamicStitchDynamicStitchBtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/range@training/Adam/gradients/global_average_pooling1d_1/Mean_grad/modBtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/ShapeAtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Fill*
_output_shapes
:*
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
N
ź
Ftraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
dtype0*
_output_shapes
: 
ź
Dtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/MaximumMaximumJtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/DynamicStitchFtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Maximum/y*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
:*
T0
´
Etraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/floordivFloorDivBtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/ShapeDtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Maximum*
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
:
Ů
Dtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/ReshapeReshape2training/Adam/gradients/vad_fc2/MatMul_grad/MatMulJtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/DynamicStitch*
T0*
Tshape0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ä
Atraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/TileTileDtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/ReshapeEtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/floordiv*

Tmultiples0*
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ô
Dtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Shape_2Shapetime_distributed_1/Reshape_1*
T0*
out_type0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
:
×
Dtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Shape_3Shapeglobal_average_pooling1d_1/Mean*
T0*
out_type0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
:
Ŕ
Btraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: *2
_class(
&$loc:@global_average_pooling1d_1/Mean
Ĺ
Atraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/ProdProdDtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Shape_2Btraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
: 
Â
Dtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *2
_class(
&$loc:@global_average_pooling1d_1/Mean*
dtype0
É
Ctraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Prod_1ProdDtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Shape_3Dtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Const_1*
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
: *

Tidx0*
	keep_dims( 
ž
Htraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Maximum_1/yConst*
_output_shapes
: *
value	B :*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
dtype0
ľ
Ftraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Maximum_1MaximumCtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Prod_1Htraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Maximum_1/y*
_output_shapes
: *
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean
ł
Gtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/floordiv_1FloorDivAtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/ProdFtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Maximum_1*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
_output_shapes
: *
T0

Atraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/CastCastGtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/floordiv_1*2
_class(
&$loc:@global_average_pooling1d_1/Mean*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
Ŕ
Dtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/truedivRealDivAtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/TileAtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/Cast*
T0*2
_class(
&$loc:@global_average_pooling1d_1/Mean*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
?training/Adam/gradients/time_distributed_1/Reshape_1_grad/ShapeShapetime_distributed_1/Relu*
_output_shapes
:*
T0*
out_type0*/
_class%
#!loc:@time_distributed_1/Reshape_1
Ĺ
Atraining/Adam/gradients/time_distributed_1/Reshape_1_grad/ReshapeReshapeDtraining/Adam/gradients/global_average_pooling1d_1/Mean_grad/truediv?training/Adam/gradients/time_distributed_1/Reshape_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@time_distributed_1/Reshape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

=training/Adam/gradients/time_distributed_1/Relu_grad/ReluGradReluGradAtraining/Adam/gradients/time_distributed_1/Reshape_1_grad/Reshapetime_distributed_1/Relu*
T0**
_class 
loc:@time_distributed_1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ý
Ctraining/Adam/gradients/time_distributed_1/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/time_distributed_1/Relu_grad/ReluGrad*
T0*-
_class#
!loc:@time_distributed_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
­
=training/Adam/gradients/time_distributed_1/MatMul_grad/MatMulMatMul=training/Adam/gradients/time_distributed_1/Relu_grad/ReluGradtime_distributed_1/kernel/read*
T0*,
_class"
 loc:@time_distributed_1/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
Ł
?training/Adam/gradients/time_distributed_1/MatMul_grad/MatMul_1MatMultime_distributed_1/Reshape=training/Adam/gradients/time_distributed_1/Relu_grad/ReluGrad*
T0*,
_class"
 loc:@time_distributed_1/MatMul* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
˝
=training/Adam/gradients/time_distributed_1/Reshape_grad/ShapeShapereshape_1/Reshape*
T0*
out_type0*-
_class#
!loc:@time_distributed_1/Reshape*
_output_shapes
:
ź
?training/Adam/gradients/time_distributed_1/Reshape_grad/ReshapeReshape=training/Adam/gradients/time_distributed_1/MatMul_grad/MatMul=training/Adam/gradients/time_distributed_1/Reshape_grad/Shape*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*-
_class#
!loc:@time_distributed_1/Reshape
ą
4training/Adam/gradients/reshape_1/Reshape_grad/ShapeShapemax_pooling2d_3/MaxPool*
_output_shapes
:*
T0*
out_type0*$
_class
loc:@reshape_1/Reshape
§
6training/Adam/gradients/reshape_1/Reshape_grad/ReshapeReshape?training/Adam/gradients/time_distributed_1/Reshape_grad/Reshape4training/Adam/gradients/reshape_1/Reshape_grad/Shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*$
_class
loc:@reshape_1/Reshape
ě
@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_7/Relumax_pooling2d_3/MaxPool6training/Adam/gradients/reshape_1/Reshape_grad/Reshape*
T0**
_class 
loc:@max_pooling2d_3/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ů
7training/Adam/gradients/activation_7/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_3/MaxPool_grad/MaxPoolGradactivation_7/Relu*
T0*$
_class
loc:@activation_7/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Gtraining/Adam/gradients/batch_normalization_7/cond/Merge_grad/cond_gradSwitch7training/Adam/gradients/activation_7/Relu_grad/ReluGrad"batch_normalization_7/cond/pred_id*
T0*$
_class
loc:@activation_7/Relu*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ŕ
"training/Adam/gradients/zeros_like	ZerosLike+batch_normalization_7/cond/FusedBatchNorm:1*
T0*<
_class2
0.loc:@batch_normalization_7/cond/FusedBatchNorm*
_output_shapes	
:
Â
$training/Adam/gradients/zeros_like_1	ZerosLike+batch_normalization_7/cond/FusedBatchNorm:2*<
_class2
0.loc:@batch_normalization_7/cond/FusedBatchNorm*
_output_shapes	
:*
T0
Â
$training/Adam/gradients/zeros_like_2	ZerosLike+batch_normalization_7/cond/FusedBatchNorm:3*
T0*<
_class2
0.loc:@batch_normalization_7/cond/FusedBatchNorm*
_output_shapes	
:
Â
$training/Adam/gradients/zeros_like_3	ZerosLike+batch_normalization_7/cond/FusedBatchNorm:4*
T0*<
_class2
0.loc:@batch_normalization_7/cond/FusedBatchNorm*
_output_shapes	
:
×
Ytraining/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradGtraining/Adam/gradients/batch_normalization_7/cond/Merge_grad/cond_grad0batch_normalization_7/cond/FusedBatchNorm/Switch2batch_normalization_7/cond/FusedBatchNorm/Switch_12batch_normalization_7/cond/FusedBatchNorm/Switch_32batch_normalization_7/cond/FusedBatchNorm/Switch_4*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
T0*<
_class2
0.loc:@batch_normalization_7/cond/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%o:

 training/Adam/gradients/Switch_8Switch$batch_normalization_7/FusedBatchNorm"batch_normalization_7/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ä
"training/Adam/gradients/Identity_8Identity training/Adam/gradients/Switch_8*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm
¸
training/Adam/gradients/Shape_9Shape training/Adam/gradients/Switch_8*
out_type0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*
_output_shapes
:*
T0
Č
%training/Adam/gradients/zeros_8/ConstConst#^training/Adam/gradients/Identity_8*
dtype0*
_output_shapes
: *
valueB
 *    *7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm
ő
training/Adam/gradients/zeros_8Filltraining/Adam/gradients/Shape_9%training/Adam/gradients/zeros_8/Const*
T0*

index_type0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
Jtraining/Adam/gradients/batch_normalization_7/cond/Switch_1_grad/cond_gradMergetraining/Adam/gradients/zeros_8Itraining/Adam/gradients/batch_normalization_7/cond/Merge_grad/cond_grad:1*
T0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: 
Ü
 training/Adam/gradients/Switch_9Switchconv2d_7/BiasAdd"batch_normalization_7/cond/pred_id*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*#
_class
loc:@conv2d_7/BiasAdd
˛
"training/Adam/gradients/Identity_9Identity"training/Adam/gradients/Switch_9:1*#
_class
loc:@conv2d_7/BiasAdd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
§
 training/Adam/gradients/Shape_10Shape"training/Adam/gradients/Switch_9:1*
_output_shapes
:*
T0*
out_type0*#
_class
loc:@conv2d_7/BiasAdd
´
%training/Adam/gradients/zeros_9/ConstConst#^training/Adam/gradients/Identity_9*
valueB
 *    *#
_class
loc:@conv2d_7/BiasAdd*
dtype0*
_output_shapes
: 
â
training/Adam/gradients/zeros_9Fill training/Adam/gradients/Shape_10%training/Adam/gradients/zeros_9/Const*
T0*

index_type0*#
_class
loc:@conv2d_7/BiasAdd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
Wtraining/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm/Switch_grad/cond_gradMergeYtraining/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm_grad/FusedBatchNormGradtraining/Adam/gradients/zeros_9*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: *
T0*#
_class
loc:@conv2d_7/BiasAdd
Î
!training/Adam/gradients/Switch_10Switch batch_normalization_7/gamma/read"batch_normalization_7/cond/pred_id*.
_class$
" loc:@batch_normalization_7/gamma*"
_output_shapes
::*
T0
Ş
#training/Adam/gradients/Identity_10Identity#training/Adam/gradients/Switch_10:1*
_output_shapes	
:*
T0*.
_class$
" loc:@batch_normalization_7/gamma
ł
 training/Adam/gradients/Shape_11Shape#training/Adam/gradients/Switch_10:1*
T0*
out_type0*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes
:
Á
&training/Adam/gradients/zeros_10/ConstConst$^training/Adam/gradients/Identity_10*
valueB
 *    *.
_class$
" loc:@batch_normalization_7/gamma*
dtype0*
_output_shapes
: 
Ú
 training/Adam/gradients/zeros_10Fill training/Adam/gradients/Shape_11&training/Adam/gradients/zeros_10/Const*
T0*

index_type0*.
_class$
" loc:@batch_normalization_7/gamma*
_output_shapes	
:
Â
Ytraining/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm/Switch_1_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1 training/Adam/gradients/zeros_10*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
N*
_output_shapes
	:: 
Ě
!training/Adam/gradients/Switch_11Switchbatch_normalization_7/beta/read"batch_normalization_7/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_7/beta*"
_output_shapes
::
Š
#training/Adam/gradients/Identity_11Identity#training/Adam/gradients/Switch_11:1*
T0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:
˛
 training/Adam/gradients/Shape_12Shape#training/Adam/gradients/Switch_11:1*
out_type0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes
:*
T0
Ŕ
&training/Adam/gradients/zeros_11/ConstConst$^training/Adam/gradients/Identity_11*
valueB
 *    *-
_class#
!loc:@batch_normalization_7/beta*
dtype0*
_output_shapes
: 
Ů
 training/Adam/gradients/zeros_11Fill training/Adam/gradients/Shape_12&training/Adam/gradients/zeros_11/Const*
T0*

index_type0*-
_class#
!loc:@batch_normalization_7/beta*
_output_shapes	
:
Á
Ytraining/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm/Switch_2_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2 training/Adam/gradients/zeros_11*-
_class#
!loc:@batch_normalization_7/beta*
N*
_output_shapes
	:: *
T0
¸
$training/Adam/gradients/zeros_like_4	ZerosLike&batch_normalization_7/FusedBatchNorm:1*
T0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*
_output_shapes	
:
¸
$training/Adam/gradients/zeros_like_5	ZerosLike&batch_normalization_7/FusedBatchNorm:2*
T0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*
_output_shapes	
:
¸
$training/Adam/gradients/zeros_like_6	ZerosLike&batch_normalization_7/FusedBatchNorm:3*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*
_output_shapes	
:*
T0
¸
$training/Adam/gradients/zeros_like_7	ZerosLike&batch_normalization_7/FusedBatchNorm:4*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*
_output_shapes	
:*
T0

Ttraining/Adam/gradients/batch_normalization_7/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJtraining/Adam/gradients/batch_normalization_7/cond/Switch_1_grad/cond_gradconv2d_7/BiasAdd batch_normalization_7/gamma/read&batch_normalization_7/FusedBatchNorm:3&batch_normalization_7/FusedBatchNorm:4*
epsilon%o:*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙::: : *
T0*7
_class-
+)loc:@batch_normalization_7/FusedBatchNorm*
data_formatNHWC*
is_training(
ż
training/Adam/gradients/AddN_12AddNWtraining/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm/Switch_grad/cond_gradTtraining/Adam/gradients/batch_normalization_7/FusedBatchNorm_grad/FusedBatchNormGrad*
N*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*#
_class
loc:@conv2d_7/BiasAdd
Ë
9training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_12*
data_formatNHWC*
_output_shapes	
:*
T0*#
_class
loc:@conv2d_7/BiasAdd
š
training/Adam/gradients/AddN_13AddNYtraining/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm/Switch_1_grad/cond_gradVtraining/Adam/gradients/batch_normalization_7/FusedBatchNorm_grad/FusedBatchNormGrad:1*
_output_shapes	
:*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
N
¸
training/Adam/gradients/AddN_14AddNYtraining/Adam/gradients/batch_normalization_7/cond/FusedBatchNorm/Switch_2_grad/cond_gradVtraining/Adam/gradients/batch_normalization_7/FusedBatchNorm_grad/FusedBatchNormGrad:2*
_output_shapes	
:*
T0*-
_class#
!loc:@batch_normalization_7/beta*
N
Ř
8training/Adam/gradients/conv2d_7/convolution_grad/ShapeNShapeNactivation_6/Reluconv2d_7/kernel/read*
T0*
out_type0*'
_class
loc:@conv2d_7/convolution*
N* 
_output_shapes
::
¸
Etraining/Adam/gradients/conv2d_7/convolution_grad/Conv2DBackpropInputConv2DBackpropInput8training/Adam/gradients/conv2d_7/convolution_grad/ShapeNconv2d_7/kernel/readtraining/Adam/gradients/AddN_12*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*'
_class
loc:@conv2d_7/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 
ą
Ftraining/Adam/gradients/conv2d_7/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilteractivation_6/Relu:training/Adam/gradients/conv2d_7/convolution_grad/ShapeN:1training/Adam/gradients/AddN_12*(
_output_shapes
:*
	dilations
*
T0*'
_class
loc:@conv2d_7/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME
ţ
7training/Adam/gradients/activation_6/Relu_grad/ReluGradReluGradEtraining/Adam/gradients/conv2d_7/convolution_grad/Conv2DBackpropInputactivation_6/Relu*
T0*$
_class
loc:@activation_6/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Gtraining/Adam/gradients/batch_normalization_6/cond/Merge_grad/cond_gradSwitch7training/Adam/gradients/activation_6/Relu_grad/ReluGrad"batch_normalization_6/cond/pred_id*
T0*$
_class
loc:@activation_6/Relu*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Â
$training/Adam/gradients/zeros_like_8	ZerosLike+batch_normalization_6/cond/FusedBatchNorm:1*
T0*<
_class2
0.loc:@batch_normalization_6/cond/FusedBatchNorm*
_output_shapes	
:
Â
$training/Adam/gradients/zeros_like_9	ZerosLike+batch_normalization_6/cond/FusedBatchNorm:2*
_output_shapes	
:*
T0*<
_class2
0.loc:@batch_normalization_6/cond/FusedBatchNorm
Ă
%training/Adam/gradients/zeros_like_10	ZerosLike+batch_normalization_6/cond/FusedBatchNorm:3*<
_class2
0.loc:@batch_normalization_6/cond/FusedBatchNorm*
_output_shapes	
:*
T0
Ă
%training/Adam/gradients/zeros_like_11	ZerosLike+batch_normalization_6/cond/FusedBatchNorm:4*
_output_shapes	
:*
T0*<
_class2
0.loc:@batch_normalization_6/cond/FusedBatchNorm
×
Ytraining/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradGtraining/Adam/gradients/batch_normalization_6/cond/Merge_grad/cond_grad0batch_normalization_6/cond/FusedBatchNorm/Switch2batch_normalization_6/cond/FusedBatchNorm/Switch_12batch_normalization_6/cond/FusedBatchNorm/Switch_32batch_normalization_6/cond/FusedBatchNorm/Switch_4*
epsilon%o:*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
T0*<
_class2
0.loc:@batch_normalization_6/cond/FusedBatchNorm*
data_formatNHWC*
is_training( 

!training/Adam/gradients/Switch_12Switch$batch_normalization_6/FusedBatchNorm"batch_normalization_6/cond/pred_id*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ć
#training/Adam/gradients/Identity_12Identity!training/Adam/gradients/Switch_12*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ş
 training/Adam/gradients/Shape_13Shape!training/Adam/gradients/Switch_12*
out_type0*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*
_output_shapes
:*
T0
Ę
&training/Adam/gradients/zeros_12/ConstConst$^training/Adam/gradients/Identity_12*
valueB
 *    *7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*
dtype0*
_output_shapes
: 
ř
 training/Adam/gradients/zeros_12Fill training/Adam/gradients/Shape_13&training/Adam/gradients/zeros_12/Const*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm
ż
Jtraining/Adam/gradients/batch_normalization_6/cond/Switch_1_grad/cond_gradMerge training/Adam/gradients/zeros_12Itraining/Adam/gradients/batch_normalization_6/cond/Merge_grad/cond_grad:1*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: *
T0
Ý
!training/Adam/gradients/Switch_13Switchconv2d_6/BiasAdd"batch_normalization_6/cond/pred_id*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*#
_class
loc:@conv2d_6/BiasAdd
´
#training/Adam/gradients/Identity_13Identity#training/Adam/gradients/Switch_13:1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*#
_class
loc:@conv2d_6/BiasAdd
¨
 training/Adam/gradients/Shape_14Shape#training/Adam/gradients/Switch_13:1*
T0*
out_type0*#
_class
loc:@conv2d_6/BiasAdd*
_output_shapes
:
ś
&training/Adam/gradients/zeros_13/ConstConst$^training/Adam/gradients/Identity_13*
valueB
 *    *#
_class
loc:@conv2d_6/BiasAdd*
dtype0*
_output_shapes
: 
ä
 training/Adam/gradients/zeros_13Fill training/Adam/gradients/Shape_14&training/Adam/gradients/zeros_13/Const*
T0*

index_type0*#
_class
loc:@conv2d_6/BiasAdd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
Wtraining/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm/Switch_grad/cond_gradMergeYtraining/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm_grad/FusedBatchNormGrad training/Adam/gradients/zeros_13*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: *
T0*#
_class
loc:@conv2d_6/BiasAdd
Î
!training/Adam/gradients/Switch_14Switch batch_normalization_6/gamma/read"batch_normalization_6/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_6/gamma*"
_output_shapes
::
Ş
#training/Adam/gradients/Identity_14Identity#training/Adam/gradients/Switch_14:1*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:
ł
 training/Adam/gradients/Shape_15Shape#training/Adam/gradients/Switch_14:1*
_output_shapes
:*
T0*
out_type0*.
_class$
" loc:@batch_normalization_6/gamma
Á
&training/Adam/gradients/zeros_14/ConstConst$^training/Adam/gradients/Identity_14*
valueB
 *    *.
_class$
" loc:@batch_normalization_6/gamma*
dtype0*
_output_shapes
: 
Ú
 training/Adam/gradients/zeros_14Fill training/Adam/gradients/Shape_15&training/Adam/gradients/zeros_14/Const*
T0*

index_type0*.
_class$
" loc:@batch_normalization_6/gamma*
_output_shapes	
:
Â
Ytraining/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm/Switch_1_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1 training/Adam/gradients/zeros_14*.
_class$
" loc:@batch_normalization_6/gamma*
N*
_output_shapes
	:: *
T0
Ě
!training/Adam/gradients/Switch_15Switchbatch_normalization_6/beta/read"batch_normalization_6/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_6/beta*"
_output_shapes
::
Š
#training/Adam/gradients/Identity_15Identity#training/Adam/gradients/Switch_15:1*
_output_shapes	
:*
T0*-
_class#
!loc:@batch_normalization_6/beta
˛
 training/Adam/gradients/Shape_16Shape#training/Adam/gradients/Switch_15:1*
T0*
out_type0*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes
:
Ŕ
&training/Adam/gradients/zeros_15/ConstConst$^training/Adam/gradients/Identity_15*
valueB
 *    *-
_class#
!loc:@batch_normalization_6/beta*
dtype0*
_output_shapes
: 
Ů
 training/Adam/gradients/zeros_15Fill training/Adam/gradients/Shape_16&training/Adam/gradients/zeros_15/Const*
T0*

index_type0*-
_class#
!loc:@batch_normalization_6/beta*
_output_shapes	
:
Á
Ytraining/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm/Switch_2_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2 training/Adam/gradients/zeros_15*
T0*-
_class#
!loc:@batch_normalization_6/beta*
N*
_output_shapes
	:: 
š
%training/Adam/gradients/zeros_like_12	ZerosLike&batch_normalization_6/FusedBatchNorm:1*
_output_shapes	
:*
T0*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm
š
%training/Adam/gradients/zeros_like_13	ZerosLike&batch_normalization_6/FusedBatchNorm:2*
T0*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*
_output_shapes	
:
š
%training/Adam/gradients/zeros_like_14	ZerosLike&batch_normalization_6/FusedBatchNorm:3*
T0*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*
_output_shapes	
:
š
%training/Adam/gradients/zeros_like_15	ZerosLike&batch_normalization_6/FusedBatchNorm:4*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*
_output_shapes	
:*
T0

Ttraining/Adam/gradients/batch_normalization_6/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJtraining/Adam/gradients/batch_normalization_6/cond/Switch_1_grad/cond_gradconv2d_6/BiasAdd batch_normalization_6/gamma/read&batch_normalization_6/FusedBatchNorm:3&batch_normalization_6/FusedBatchNorm:4*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙::: : *
T0*7
_class-
+)loc:@batch_normalization_6/FusedBatchNorm*
data_formatNHWC*
is_training(*
epsilon%o:
ż
training/Adam/gradients/AddN_15AddNWtraining/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm/Switch_grad/cond_gradTtraining/Adam/gradients/batch_normalization_6/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*#
_class
loc:@conv2d_6/BiasAdd*
N*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
9training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_15*
T0*#
_class
loc:@conv2d_6/BiasAdd*
data_formatNHWC*
_output_shapes	
:
š
training/Adam/gradients/AddN_16AddNYtraining/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm/Switch_1_grad/cond_gradVtraining/Adam/gradients/batch_normalization_6/FusedBatchNorm_grad/FusedBatchNormGrad:1*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
N*
_output_shapes	
:
¸
training/Adam/gradients/AddN_17AddNYtraining/Adam/gradients/batch_normalization_6/cond/FusedBatchNorm/Switch_2_grad/cond_gradVtraining/Adam/gradients/batch_normalization_6/FusedBatchNorm_grad/FusedBatchNormGrad:2*
T0*-
_class#
!loc:@batch_normalization_6/beta*
N*
_output_shapes	
:
Ř
8training/Adam/gradients/conv2d_6/convolution_grad/ShapeNShapeNactivation_5/Reluconv2d_6/kernel/read*
out_type0*'
_class
loc:@conv2d_6/convolution*
N* 
_output_shapes
::*
T0
¸
Etraining/Adam/gradients/conv2d_6/convolution_grad/Conv2DBackpropInputConv2DBackpropInput8training/Adam/gradients/conv2d_6/convolution_grad/ShapeNconv2d_6/kernel/readtraining/Adam/gradients/AddN_15*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*'
_class
loc:@conv2d_6/convolution*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
ą
Ftraining/Adam/gradients/conv2d_6/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilteractivation_5/Relu:training/Adam/gradients/conv2d_6/convolution_grad/ShapeN:1training/Adam/gradients/AddN_15*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0*'
_class
loc:@conv2d_6/convolution
ţ
7training/Adam/gradients/activation_5/Relu_grad/ReluGradReluGradEtraining/Adam/gradients/conv2d_6/convolution_grad/Conv2DBackpropInputactivation_5/Relu*
T0*$
_class
loc:@activation_5/Relu*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
Gtraining/Adam/gradients/batch_normalization_5/cond/Merge_grad/cond_gradSwitch7training/Adam/gradients/activation_5/Relu_grad/ReluGrad"batch_normalization_5/cond/pred_id*$
_class
loc:@activation_5/Relu*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ă
%training/Adam/gradients/zeros_like_16	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:1*
_output_shapes	
:*
T0*<
_class2
0.loc:@batch_normalization_5/cond/FusedBatchNorm
Ă
%training/Adam/gradients/zeros_like_17	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:2*
_output_shapes	
:*
T0*<
_class2
0.loc:@batch_normalization_5/cond/FusedBatchNorm
Ă
%training/Adam/gradients/zeros_like_18	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:3*
T0*<
_class2
0.loc:@batch_normalization_5/cond/FusedBatchNorm*
_output_shapes	
:
Ă
%training/Adam/gradients/zeros_like_19	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:4*
T0*<
_class2
0.loc:@batch_normalization_5/cond/FusedBatchNorm*
_output_shapes	
:
×
Ytraining/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradGtraining/Adam/gradients/batch_normalization_5/cond/Merge_grad/cond_grad0batch_normalization_5/cond/FusedBatchNorm/Switch2batch_normalization_5/cond/FusedBatchNorm/Switch_12batch_normalization_5/cond/FusedBatchNorm/Switch_32batch_normalization_5/cond/FusedBatchNorm/Switch_4*
is_training( *
epsilon%o:*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
T0*<
_class2
0.loc:@batch_normalization_5/cond/FusedBatchNorm*
data_formatNHWC

!training/Adam/gradients/Switch_16Switch$batch_normalization_5/FusedBatchNorm"batch_normalization_5/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ć
#training/Adam/gradients/Identity_16Identity!training/Adam/gradients/Switch_16*
T0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
 training/Adam/gradients/Shape_17Shape!training/Adam/gradients/Switch_16*
out_type0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*
_output_shapes
:*
T0
Ę
&training/Adam/gradients/zeros_16/ConstConst$^training/Adam/gradients/Identity_16*
valueB
 *    *7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*
dtype0*
_output_shapes
: 
ř
 training/Adam/gradients/zeros_16Fill training/Adam/gradients/Shape_17&training/Adam/gradients/zeros_16/Const*
T0*

index_type0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ż
Jtraining/Adam/gradients/batch_normalization_5/cond/Switch_1_grad/cond_gradMerge training/Adam/gradients/zeros_16Itraining/Adam/gradients/batch_normalization_5/cond/Merge_grad/cond_grad:1*
T0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: 
Ý
!training/Adam/gradients/Switch_17Switchconv2d_5/BiasAdd"batch_normalization_5/cond/pred_id*#
_class
loc:@conv2d_5/BiasAdd*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
´
#training/Adam/gradients/Identity_17Identity#training/Adam/gradients/Switch_17:1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*#
_class
loc:@conv2d_5/BiasAdd
¨
 training/Adam/gradients/Shape_18Shape#training/Adam/gradients/Switch_17:1*
_output_shapes
:*
T0*
out_type0*#
_class
loc:@conv2d_5/BiasAdd
ś
&training/Adam/gradients/zeros_17/ConstConst$^training/Adam/gradients/Identity_17*
_output_shapes
: *
valueB
 *    *#
_class
loc:@conv2d_5/BiasAdd*
dtype0
ä
 training/Adam/gradients/zeros_17Fill training/Adam/gradients/Shape_18&training/Adam/gradients/zeros_17/Const*
T0*

index_type0*#
_class
loc:@conv2d_5/BiasAdd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Č
Wtraining/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm/Switch_grad/cond_gradMergeYtraining/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad training/Adam/gradients/zeros_17*
T0*#
_class
loc:@conv2d_5/BiasAdd*
N*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙: 
Î
!training/Adam/gradients/Switch_18Switch batch_normalization_5/gamma/read"batch_normalization_5/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_5/gamma*"
_output_shapes
::
Ş
#training/Adam/gradients/Identity_18Identity#training/Adam/gradients/Switch_18:1*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:
ł
 training/Adam/gradients/Shape_19Shape#training/Adam/gradients/Switch_18:1*
T0*
out_type0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes
:
Á
&training/Adam/gradients/zeros_18/ConstConst$^training/Adam/gradients/Identity_18*
dtype0*
_output_shapes
: *
valueB
 *    *.
_class$
" loc:@batch_normalization_5/gamma
Ú
 training/Adam/gradients/zeros_18Fill training/Adam/gradients/Shape_19&training/Adam/gradients/zeros_18/Const*
_output_shapes	
:*
T0*

index_type0*.
_class$
" loc:@batch_normalization_5/gamma
Â
Ytraining/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm/Switch_1_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1 training/Adam/gradients/zeros_18*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
N*
_output_shapes
	:: 
Ě
!training/Adam/gradients/Switch_19Switchbatch_normalization_5/beta/read"batch_normalization_5/cond/pred_id*"
_output_shapes
::*
T0*-
_class#
!loc:@batch_normalization_5/beta
Š
#training/Adam/gradients/Identity_19Identity#training/Adam/gradients/Switch_19:1*
_output_shapes	
:*
T0*-
_class#
!loc:@batch_normalization_5/beta
˛
 training/Adam/gradients/Shape_20Shape#training/Adam/gradients/Switch_19:1*
T0*
out_type0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
:
Ŕ
&training/Adam/gradients/zeros_19/ConstConst$^training/Adam/gradients/Identity_19*
valueB
 *    *-
_class#
!loc:@batch_normalization_5/beta*
dtype0*
_output_shapes
: 
Ů
 training/Adam/gradients/zeros_19Fill training/Adam/gradients/Shape_20&training/Adam/gradients/zeros_19/Const*
T0*

index_type0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:
Á
Ytraining/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm/Switch_2_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2 training/Adam/gradients/zeros_19*
T0*-
_class#
!loc:@batch_normalization_5/beta*
N*
_output_shapes
	:: 
š
%training/Adam/gradients/zeros_like_20	ZerosLike&batch_normalization_5/FusedBatchNorm:1*
_output_shapes	
:*
T0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm
š
%training/Adam/gradients/zeros_like_21	ZerosLike&batch_normalization_5/FusedBatchNorm:2*
T0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*
_output_shapes	
:
š
%training/Adam/gradients/zeros_like_22	ZerosLike&batch_normalization_5/FusedBatchNorm:3*
T0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*
_output_shapes	
:
š
%training/Adam/gradients/zeros_like_23	ZerosLike&batch_normalization_5/FusedBatchNorm:4*
_output_shapes	
:*
T0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm

Ttraining/Adam/gradients/batch_normalization_5/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJtraining/Adam/gradients/batch_normalization_5/cond/Switch_1_grad/cond_gradconv2d_5/BiasAdd batch_normalization_5/gamma/read&batch_normalization_5/FusedBatchNorm:3&batch_normalization_5/FusedBatchNorm:4*
T0*7
_class-
+)loc:@batch_normalization_5/FusedBatchNorm*
data_formatNHWC*
is_training(*
epsilon%o:*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙::: : 
ż
training/Adam/gradients/AddN_18AddNWtraining/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm/Switch_grad/cond_gradTtraining/Adam/gradients/batch_normalization_5/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*#
_class
loc:@conv2d_5/BiasAdd*
N*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
9training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_18*
_output_shapes	
:*
T0*#
_class
loc:@conv2d_5/BiasAdd*
data_formatNHWC
š
training/Adam/gradients/AddN_19AddNYtraining/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm/Switch_1_grad/cond_gradVtraining/Adam/gradients/batch_normalization_5/FusedBatchNorm_grad/FusedBatchNormGrad:1*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
N*
_output_shapes	
:
¸
training/Adam/gradients/AddN_20AddNYtraining/Adam/gradients/batch_normalization_5/cond/FusedBatchNorm/Switch_2_grad/cond_gradVtraining/Adam/gradients/batch_normalization_5/FusedBatchNorm_grad/FusedBatchNormGrad:2*
_output_shapes	
:*
T0*-
_class#
!loc:@batch_normalization_5/beta*
N
Ţ
8training/Adam/gradients/conv2d_5/convolution_grad/ShapeNShapeNmax_pooling2d_2/MaxPoolconv2d_5/kernel/read*
T0*
out_type0*'
_class
loc:@conv2d_5/convolution*
N* 
_output_shapes
::
ˇ
Etraining/Adam/gradients/conv2d_5/convolution_grad/Conv2DBackpropInputConv2DBackpropInput8training/Adam/gradients/conv2d_5/convolution_grad/ShapeNconv2d_5/kernel/readtraining/Adam/gradients/AddN_18*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
T0*'
_class
loc:@conv2d_5/convolution*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME
ś
Ftraining/Adam/gradients/conv2d_5/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_2/MaxPool:training/Adam/gradients/conv2d_5/convolution_grad/ShapeN:1training/Adam/gradients/AddN_18*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:@*
	dilations
*
T0*'
_class
loc:@conv2d_5/convolution*
data_formatNHWC*
strides

ú
@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_4/Relumax_pooling2d_2/MaxPoolEtraining/Adam/gradients/conv2d_5/convolution_grad/Conv2DBackpropInput*
T0**
_class 
loc:@max_pooling2d_2/MaxPool*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
ř
7training/Adam/gradients/activation_4/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradactivation_4/Relu*
T0*$
_class
loc:@activation_4/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Š
Gtraining/Adam/gradients/batch_normalization_4/cond/Merge_grad/cond_gradSwitch7training/Adam/gradients/activation_4/Relu_grad/ReluGrad"batch_normalization_4/cond/pred_id*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @*
T0*$
_class
loc:@activation_4/Relu
Â
%training/Adam/gradients/zeros_like_24	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:1*
_output_shapes
:@*
T0*<
_class2
0.loc:@batch_normalization_4/cond/FusedBatchNorm
Â
%training/Adam/gradients/zeros_like_25	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:2*
T0*<
_class2
0.loc:@batch_normalization_4/cond/FusedBatchNorm*
_output_shapes
:@
Â
%training/Adam/gradients/zeros_like_26	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:3*
T0*<
_class2
0.loc:@batch_normalization_4/cond/FusedBatchNorm*
_output_shapes
:@
Â
%training/Adam/gradients/zeros_like_27	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:4*
T0*<
_class2
0.loc:@batch_normalization_4/cond/FusedBatchNorm*
_output_shapes
:@
Ň
Ytraining/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradGtraining/Adam/gradients/batch_normalization_4/cond/Merge_grad/cond_grad0batch_normalization_4/cond/FusedBatchNorm/Switch2batch_normalization_4/cond/FusedBatchNorm/Switch_12batch_normalization_4/cond/FusedBatchNorm/Switch_32batch_normalization_4/cond/FusedBatchNorm/Switch_4*
T0*<
_class2
0.loc:@batch_normalization_4/cond/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%o:*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙  @:@:@:@:@

!training/Adam/gradients/Switch_20Switch$batch_normalization_4/FusedBatchNorm"batch_normalization_4/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @
Ĺ
#training/Adam/gradients/Identity_20Identity!training/Adam/gradients/Switch_20*
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
ş
 training/Adam/gradients/Shape_21Shape!training/Adam/gradients/Switch_20*
_output_shapes
:*
T0*
out_type0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm
Ę
&training/Adam/gradients/zeros_20/ConstConst$^training/Adam/gradients/Identity_20*
valueB
 *    *7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm*
dtype0*
_output_shapes
: 
÷
 training/Adam/gradients/zeros_20Fill training/Adam/gradients/Shape_21&training/Adam/gradients/zeros_20/Const*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
T0*

index_type0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm
ž
Jtraining/Adam/gradients/batch_normalization_4/cond/Switch_1_grad/cond_gradMerge training/Adam/gradients/zeros_20Itraining/Adam/gradients/batch_normalization_4/cond/Merge_grad/cond_grad:1*
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙  @: 
Ű
!training/Adam/gradients/Switch_21Switchconv2d_4/BiasAdd"batch_normalization_4/cond/pred_id*
T0*#
_class
loc:@conv2d_4/BiasAdd*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @
ł
#training/Adam/gradients/Identity_21Identity#training/Adam/gradients/Switch_21:1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
T0*#
_class
loc:@conv2d_4/BiasAdd
¨
 training/Adam/gradients/Shape_22Shape#training/Adam/gradients/Switch_21:1*
_output_shapes
:*
T0*
out_type0*#
_class
loc:@conv2d_4/BiasAdd
ś
&training/Adam/gradients/zeros_21/ConstConst$^training/Adam/gradients/Identity_21*
_output_shapes
: *
valueB
 *    *#
_class
loc:@conv2d_4/BiasAdd*
dtype0
ă
 training/Adam/gradients/zeros_21Fill training/Adam/gradients/Shape_22&training/Adam/gradients/zeros_21/Const*
T0*

index_type0*#
_class
loc:@conv2d_4/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Ç
Wtraining/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm/Switch_grad/cond_gradMergeYtraining/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad training/Adam/gradients/zeros_21*
T0*#
_class
loc:@conv2d_4/BiasAdd*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙  @: 
Ě
!training/Adam/gradients/Switch_22Switch batch_normalization_4/gamma/read"batch_normalization_4/cond/pred_id*.
_class$
" loc:@batch_normalization_4/gamma* 
_output_shapes
:@:@*
T0
Š
#training/Adam/gradients/Identity_22Identity#training/Adam/gradients/Switch_22:1*
_output_shapes
:@*
T0*.
_class$
" loc:@batch_normalization_4/gamma
ł
 training/Adam/gradients/Shape_23Shape#training/Adam/gradients/Switch_22:1*
T0*
out_type0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:
Á
&training/Adam/gradients/zeros_22/ConstConst$^training/Adam/gradients/Identity_22*
_output_shapes
: *
valueB
 *    *.
_class$
" loc:@batch_normalization_4/gamma*
dtype0
Ů
 training/Adam/gradients/zeros_22Fill training/Adam/gradients/Shape_23&training/Adam/gradients/zeros_22/Const*
T0*

index_type0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:@
Á
Ytraining/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm/Switch_1_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1 training/Adam/gradients/zeros_22*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
N*
_output_shapes

:@: 
Ę
!training/Adam/gradients/Switch_23Switchbatch_normalization_4/beta/read"batch_normalization_4/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_4/beta* 
_output_shapes
:@:@
¨
#training/Adam/gradients/Identity_23Identity#training/Adam/gradients/Switch_23:1*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:@
˛
 training/Adam/gradients/Shape_24Shape#training/Adam/gradients/Switch_23:1*
T0*
out_type0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:
Ŕ
&training/Adam/gradients/zeros_23/ConstConst$^training/Adam/gradients/Identity_23*
valueB
 *    *-
_class#
!loc:@batch_normalization_4/beta*
dtype0*
_output_shapes
: 
Ř
 training/Adam/gradients/zeros_23Fill training/Adam/gradients/Shape_24&training/Adam/gradients/zeros_23/Const*

index_type0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:@*
T0
Ŕ
Ytraining/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm/Switch_2_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2 training/Adam/gradients/zeros_23*
T0*-
_class#
!loc:@batch_normalization_4/beta*
N*
_output_shapes

:@: 
¸
%training/Adam/gradients/zeros_like_28	ZerosLike&batch_normalization_4/FusedBatchNorm:1*
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm*
_output_shapes
:@
¸
%training/Adam/gradients/zeros_like_29	ZerosLike&batch_normalization_4/FusedBatchNorm:2*
_output_shapes
:@*
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm
¸
%training/Adam/gradients/zeros_like_30	ZerosLike&batch_normalization_4/FusedBatchNorm:3*
_output_shapes
:@*
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm
¸
%training/Adam/gradients/zeros_like_31	ZerosLike&batch_normalization_4/FusedBatchNorm:4*
_output_shapes
:@*
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm
ý
Ttraining/Adam/gradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJtraining/Adam/gradients/batch_normalization_4/cond/Switch_1_grad/cond_gradconv2d_4/BiasAdd batch_normalization_4/gamma/read&batch_normalization_4/FusedBatchNorm:3&batch_normalization_4/FusedBatchNorm:4*C
_output_shapes1
/:˙˙˙˙˙˙˙˙˙  @:@:@: : *
T0*7
_class-
+)loc:@batch_normalization_4/FusedBatchNorm*
data_formatNHWC*
is_training(*
epsilon%o:
ž
training/Adam/gradients/AddN_21AddNWtraining/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm/Switch_grad/cond_gradTtraining/Adam/gradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*#
_class
loc:@conv2d_4/BiasAdd*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Ę
9training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_21*
T0*#
_class
loc:@conv2d_4/BiasAdd*
data_formatNHWC*
_output_shapes
:@
¸
training/Adam/gradients/AddN_22AddNYtraining/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm/Switch_1_grad/cond_gradVtraining/Adam/gradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad:1*
_output_shapes
:@*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
N
ˇ
training/Adam/gradients/AddN_23AddNYtraining/Adam/gradients/batch_normalization_4/cond/FusedBatchNorm/Switch_2_grad/cond_gradVtraining/Adam/gradients/batch_normalization_4/FusedBatchNorm_grad/FusedBatchNormGrad:2*
T0*-
_class#
!loc:@batch_normalization_4/beta*
N*
_output_shapes
:@
Ř
8training/Adam/gradients/conv2d_4/convolution_grad/ShapeNShapeNactivation_3/Reluconv2d_4/kernel/read*
T0*
out_type0*'
_class
loc:@conv2d_4/convolution*
N* 
_output_shapes
::
ˇ
Etraining/Adam/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput8training/Adam/gradients/conv2d_4/convolution_grad/ShapeNconv2d_4/kernel/readtraining/Adam/gradients/AddN_21*
	dilations
*
T0*'
_class
loc:@conv2d_4/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Ż
Ftraining/Adam/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilteractivation_3/Relu:training/Adam/gradients/conv2d_4/convolution_grad/ShapeN:1training/Adam/gradients/AddN_21*&
_output_shapes
:@@*
	dilations
*
T0*'
_class
loc:@conv2d_4/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME
ý
7training/Adam/gradients/activation_3/Relu_grad/ReluGradReluGradEtraining/Adam/gradients/conv2d_4/convolution_grad/Conv2DBackpropInputactivation_3/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
T0*$
_class
loc:@activation_3/Relu
Š
Gtraining/Adam/gradients/batch_normalization_3/cond/Merge_grad/cond_gradSwitch7training/Adam/gradients/activation_3/Relu_grad/ReluGrad"batch_normalization_3/cond/pred_id*
T0*$
_class
loc:@activation_3/Relu*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @
Â
%training/Adam/gradients/zeros_like_32	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:1*
T0*<
_class2
0.loc:@batch_normalization_3/cond/FusedBatchNorm*
_output_shapes
:@
Â
%training/Adam/gradients/zeros_like_33	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:2*
T0*<
_class2
0.loc:@batch_normalization_3/cond/FusedBatchNorm*
_output_shapes
:@
Â
%training/Adam/gradients/zeros_like_34	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:3*<
_class2
0.loc:@batch_normalization_3/cond/FusedBatchNorm*
_output_shapes
:@*
T0
Â
%training/Adam/gradients/zeros_like_35	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:4*<
_class2
0.loc:@batch_normalization_3/cond/FusedBatchNorm*
_output_shapes
:@*
T0
Ň
Ytraining/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradGtraining/Adam/gradients/batch_normalization_3/cond/Merge_grad/cond_grad0batch_normalization_3/cond/FusedBatchNorm/Switch2batch_normalization_3/cond/FusedBatchNorm/Switch_12batch_normalization_3/cond/FusedBatchNorm/Switch_32batch_normalization_3/cond/FusedBatchNorm/Switch_4*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙  @:@:@:@:@*
T0*<
_class2
0.loc:@batch_normalization_3/cond/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%o:

!training/Adam/gradients/Switch_24Switch$batch_normalization_3/FusedBatchNorm"batch_normalization_3/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @
Ĺ
#training/Adam/gradients/Identity_24Identity!training/Adam/gradients/Switch_24*
T0*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
ş
 training/Adam/gradients/Shape_25Shape!training/Adam/gradients/Switch_24*
T0*
out_type0*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*
_output_shapes
:
Ę
&training/Adam/gradients/zeros_24/ConstConst$^training/Adam/gradients/Identity_24*
valueB
 *    *7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*
dtype0*
_output_shapes
: 
÷
 training/Adam/gradients/zeros_24Fill training/Adam/gradients/Shape_25&training/Adam/gradients/zeros_24/Const*
T0*

index_type0*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
ž
Jtraining/Adam/gradients/batch_normalization_3/cond/Switch_1_grad/cond_gradMerge training/Adam/gradients/zeros_24Itraining/Adam/gradients/batch_normalization_3/cond/Merge_grad/cond_grad:1*
T0*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙  @: 
Ű
!training/Adam/gradients/Switch_25Switchconv2d_3/BiasAdd"batch_normalization_3/cond/pred_id*
T0*#
_class
loc:@conv2d_3/BiasAdd*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙  @:˙˙˙˙˙˙˙˙˙  @
ł
#training/Adam/gradients/Identity_25Identity#training/Adam/gradients/Switch_25:1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
T0*#
_class
loc:@conv2d_3/BiasAdd
¨
 training/Adam/gradients/Shape_26Shape#training/Adam/gradients/Switch_25:1*
T0*
out_type0*#
_class
loc:@conv2d_3/BiasAdd*
_output_shapes
:
ś
&training/Adam/gradients/zeros_25/ConstConst$^training/Adam/gradients/Identity_25*
valueB
 *    *#
_class
loc:@conv2d_3/BiasAdd*
dtype0*
_output_shapes
: 
ă
 training/Adam/gradients/zeros_25Fill training/Adam/gradients/Shape_26&training/Adam/gradients/zeros_25/Const*
T0*

index_type0*#
_class
loc:@conv2d_3/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Ç
Wtraining/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm/Switch_grad/cond_gradMergeYtraining/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad training/Adam/gradients/zeros_25*#
_class
loc:@conv2d_3/BiasAdd*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙  @: *
T0
Ě
!training/Adam/gradients/Switch_26Switch batch_normalization_3/gamma/read"batch_normalization_3/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_3/gamma* 
_output_shapes
:@:@
Š
#training/Adam/gradients/Identity_26Identity#training/Adam/gradients/Switch_26:1*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:@
ł
 training/Adam/gradients/Shape_27Shape#training/Adam/gradients/Switch_26:1*
T0*
out_type0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:
Á
&training/Adam/gradients/zeros_26/ConstConst$^training/Adam/gradients/Identity_26*
valueB
 *    *.
_class$
" loc:@batch_normalization_3/gamma*
dtype0*
_output_shapes
: 
Ů
 training/Adam/gradients/zeros_26Fill training/Adam/gradients/Shape_27&training/Adam/gradients/zeros_26/Const*
T0*

index_type0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:@
Á
Ytraining/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm/Switch_1_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1 training/Adam/gradients/zeros_26*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
N*
_output_shapes

:@: 
Ę
!training/Adam/gradients/Switch_27Switchbatch_normalization_3/beta/read"batch_normalization_3/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_3/beta* 
_output_shapes
:@:@
¨
#training/Adam/gradients/Identity_27Identity#training/Adam/gradients/Switch_27:1*
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
:@
˛
 training/Adam/gradients/Shape_28Shape#training/Adam/gradients/Switch_27:1*
T0*
out_type0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
:
Ŕ
&training/Adam/gradients/zeros_27/ConstConst$^training/Adam/gradients/Identity_27*
valueB
 *    *-
_class#
!loc:@batch_normalization_3/beta*
dtype0*
_output_shapes
: 
Ř
 training/Adam/gradients/zeros_27Fill training/Adam/gradients/Shape_28&training/Adam/gradients/zeros_27/Const*
T0*

index_type0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
:@
Ŕ
Ytraining/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm/Switch_2_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2 training/Adam/gradients/zeros_27*
T0*-
_class#
!loc:@batch_normalization_3/beta*
N*
_output_shapes

:@: 
¸
%training/Adam/gradients/zeros_like_36	ZerosLike&batch_normalization_3/FusedBatchNorm:1*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*
_output_shapes
:@*
T0
¸
%training/Adam/gradients/zeros_like_37	ZerosLike&batch_normalization_3/FusedBatchNorm:2*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*
_output_shapes
:@*
T0
¸
%training/Adam/gradients/zeros_like_38	ZerosLike&batch_normalization_3/FusedBatchNorm:3*
_output_shapes
:@*
T0*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm
¸
%training/Adam/gradients/zeros_like_39	ZerosLike&batch_normalization_3/FusedBatchNorm:4*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*
_output_shapes
:@*
T0
ý
Ttraining/Adam/gradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJtraining/Adam/gradients/batch_normalization_3/cond/Switch_1_grad/cond_gradconv2d_3/BiasAdd batch_normalization_3/gamma/read&batch_normalization_3/FusedBatchNorm:3&batch_normalization_3/FusedBatchNorm:4*
T0*7
_class-
+)loc:@batch_normalization_3/FusedBatchNorm*
data_formatNHWC*
is_training(*
epsilon%o:*C
_output_shapes1
/:˙˙˙˙˙˙˙˙˙  @:@:@: : 
ž
training/Adam/gradients/AddN_24AddNWtraining/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm/Switch_grad/cond_gradTtraining/Adam/gradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*#
_class
loc:@conv2d_3/BiasAdd*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Ę
9training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_24*
T0*#
_class
loc:@conv2d_3/BiasAdd*
data_formatNHWC*
_output_shapes
:@
¸
training/Adam/gradients/AddN_25AddNYtraining/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm/Switch_1_grad/cond_gradVtraining/Adam/gradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad:1*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
N*
_output_shapes
:@
ˇ
training/Adam/gradients/AddN_26AddNYtraining/Adam/gradients/batch_normalization_3/cond/FusedBatchNorm/Switch_2_grad/cond_gradVtraining/Adam/gradients/batch_normalization_3/FusedBatchNorm_grad/FusedBatchNormGrad:2*
_output_shapes
:@*
T0*-
_class#
!loc:@batch_normalization_3/beta*
N
Ţ
8training/Adam/gradients/conv2d_3/convolution_grad/ShapeNShapeNmax_pooling2d_1/MaxPoolconv2d_3/kernel/read*
T0*
out_type0*'
_class
loc:@conv2d_3/convolution*
N* 
_output_shapes
::
ˇ
Etraining/Adam/gradients/conv2d_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput8training/Adam/gradients/conv2d_3/convolution_grad/ShapeNconv2d_3/kernel/readtraining/Adam/gradients/AddN_24*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
	dilations
*
T0*'
_class
loc:@conv2d_3/convolution*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
ľ
Ftraining/Adam/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_1/MaxPool:training/Adam/gradients/conv2d_3/convolution_grad/ShapeN:1training/Adam/gradients/AddN_24*
paddingSAME*&
_output_shapes
: @*
	dilations
*
T0*'
_class
loc:@conv2d_3/convolution*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
ú
@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradactivation_2/Relumax_pooling2d_1/MaxPoolEtraining/Adam/gradients/conv2d_3/convolution_grad/Conv2DBackpropInput*
T0**
_class 
loc:@max_pooling2d_1/MaxPool*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
ř
7training/Adam/gradients/activation_2/Relu_grad/ReluGradReluGrad@training/Adam/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradactivation_2/Relu*
T0*$
_class
loc:@activation_2/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
Š
Gtraining/Adam/gradients/batch_normalization_2/cond/Merge_grad/cond_gradSwitch7training/Adam/gradients/activation_2/Relu_grad/ReluGrad"batch_normalization_2/cond/pred_id*$
_class
loc:@activation_2/Relu*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ *
T0
Â
%training/Adam/gradients/zeros_like_40	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:1*
_output_shapes
: *
T0*<
_class2
0.loc:@batch_normalization_2/cond/FusedBatchNorm
Â
%training/Adam/gradients/zeros_like_41	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:2*
T0*<
_class2
0.loc:@batch_normalization_2/cond/FusedBatchNorm*
_output_shapes
: 
Â
%training/Adam/gradients/zeros_like_42	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:3*<
_class2
0.loc:@batch_normalization_2/cond/FusedBatchNorm*
_output_shapes
: *
T0
Â
%training/Adam/gradients/zeros_like_43	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:4*<
_class2
0.loc:@batch_normalization_2/cond/FusedBatchNorm*
_output_shapes
: *
T0
Ň
Ytraining/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradGtraining/Adam/gradients/batch_normalization_2/cond/Merge_grad/cond_grad0batch_normalization_2/cond/FusedBatchNorm/Switch2batch_normalization_2/cond/FusedBatchNorm/Switch_12batch_normalization_2/cond/FusedBatchNorm/Switch_32batch_normalization_2/cond/FusedBatchNorm/Switch_4*
T0*<
_class2
0.loc:@batch_normalization_2/cond/FusedBatchNorm*
data_formatNHWC*
is_training( *
epsilon%o:*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@@ : : : : 

!training/Adam/gradients/Switch_28Switch$batch_normalization_2/FusedBatchNorm"batch_normalization_2/cond/pred_id*
T0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ 
Ĺ
#training/Adam/gradients/Identity_28Identity!training/Adam/gradients/Switch_28*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
T0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm
ş
 training/Adam/gradients/Shape_29Shape!training/Adam/gradients/Switch_28*
T0*
out_type0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*
_output_shapes
:
Ę
&training/Adam/gradients/zeros_28/ConstConst$^training/Adam/gradients/Identity_28*
_output_shapes
: *
valueB
 *    *7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*
dtype0
÷
 training/Adam/gradients/zeros_28Fill training/Adam/gradients/Shape_29&training/Adam/gradients/zeros_28/Const*
T0*

index_type0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
ž
Jtraining/Adam/gradients/batch_normalization_2/cond/Switch_1_grad/cond_gradMerge training/Adam/gradients/zeros_28Itraining/Adam/gradients/batch_normalization_2/cond/Merge_grad/cond_grad:1*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ : *
T0
Ű
!training/Adam/gradients/Switch_29Switchconv2d_2/BiasAdd"batch_normalization_2/cond/pred_id*
T0*#
_class
loc:@conv2d_2/BiasAdd*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ 
ł
#training/Adam/gradients/Identity_29Identity#training/Adam/gradients/Switch_29:1*
T0*#
_class
loc:@conv2d_2/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
¨
 training/Adam/gradients/Shape_30Shape#training/Adam/gradients/Switch_29:1*
_output_shapes
:*
T0*
out_type0*#
_class
loc:@conv2d_2/BiasAdd
ś
&training/Adam/gradients/zeros_29/ConstConst$^training/Adam/gradients/Identity_29*
valueB
 *    *#
_class
loc:@conv2d_2/BiasAdd*
dtype0*
_output_shapes
: 
ă
 training/Adam/gradients/zeros_29Fill training/Adam/gradients/Shape_30&training/Adam/gradients/zeros_29/Const*
T0*

index_type0*#
_class
loc:@conv2d_2/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
Ç
Wtraining/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_gradMergeYtraining/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad training/Adam/gradients/zeros_29*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ : *
T0*#
_class
loc:@conv2d_2/BiasAdd*
N
Ě
!training/Adam/gradients/Switch_30Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_2/gamma* 
_output_shapes
: : 
Š
#training/Adam/gradients/Identity_30Identity#training/Adam/gradients/Switch_30:1*
_output_shapes
: *
T0*.
_class$
" loc:@batch_normalization_2/gamma
ł
 training/Adam/gradients/Shape_31Shape#training/Adam/gradients/Switch_30:1*
T0*
out_type0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:
Á
&training/Adam/gradients/zeros_30/ConstConst$^training/Adam/gradients/Identity_30*
valueB
 *    *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
: 
Ů
 training/Adam/gradients/zeros_30Fill training/Adam/gradients/Shape_31&training/Adam/gradients/zeros_30/Const*
_output_shapes
: *
T0*

index_type0*.
_class$
" loc:@batch_normalization_2/gamma
Á
Ytraining/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1 training/Adam/gradients/zeros_30*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
N*
_output_shapes

: : 
Ę
!training/Adam/gradients/Switch_31Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_2/beta* 
_output_shapes
: : 
¨
#training/Adam/gradients/Identity_31Identity#training/Adam/gradients/Switch_31:1*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
: 
˛
 training/Adam/gradients/Shape_32Shape#training/Adam/gradients/Switch_31:1*
out_type0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:*
T0
Ŕ
&training/Adam/gradients/zeros_31/ConstConst$^training/Adam/gradients/Identity_31*
valueB
 *    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
: 
Ř
 training/Adam/gradients/zeros_31Fill training/Adam/gradients/Shape_32&training/Adam/gradients/zeros_31/Const*
_output_shapes
: *
T0*

index_type0*-
_class#
!loc:@batch_normalization_2/beta
Ŕ
Ytraining/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2 training/Adam/gradients/zeros_31*
T0*-
_class#
!loc:@batch_normalization_2/beta*
N*
_output_shapes

: : 
¸
%training/Adam/gradients/zeros_like_44	ZerosLike&batch_normalization_2/FusedBatchNorm:1*
T0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*
_output_shapes
: 
¸
%training/Adam/gradients/zeros_like_45	ZerosLike&batch_normalization_2/FusedBatchNorm:2*
T0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*
_output_shapes
: 
¸
%training/Adam/gradients/zeros_like_46	ZerosLike&batch_normalization_2/FusedBatchNorm:3*
T0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*
_output_shapes
: 
¸
%training/Adam/gradients/zeros_like_47	ZerosLike&batch_normalization_2/FusedBatchNorm:4*
T0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*
_output_shapes
: 
ý
Ttraining/Adam/gradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJtraining/Adam/gradients/batch_normalization_2/cond/Switch_1_grad/cond_gradconv2d_2/BiasAdd batch_normalization_2/gamma/read&batch_normalization_2/FusedBatchNorm:3&batch_normalization_2/FusedBatchNorm:4*C
_output_shapes1
/:˙˙˙˙˙˙˙˙˙@@ : : : : *
T0*7
_class-
+)loc:@batch_normalization_2/FusedBatchNorm*
data_formatNHWC*
is_training(*
epsilon%o:
ž
training/Adam/gradients/AddN_27AddNWtraining/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_gradTtraining/Adam/gradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
T0*#
_class
loc:@conv2d_2/BiasAdd
Ę
9training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_27*
T0*#
_class
loc:@conv2d_2/BiasAdd*
data_formatNHWC*
_output_shapes
: 
¸
training/Adam/gradients/AddN_28AddNYtraining/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_gradVtraining/Adam/gradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad:1*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
N*
_output_shapes
: 
ˇ
training/Adam/gradients/AddN_29AddNYtraining/Adam/gradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_gradVtraining/Adam/gradients/batch_normalization_2/FusedBatchNorm_grad/FusedBatchNormGrad:2*
_output_shapes
: *
T0*-
_class#
!loc:@batch_normalization_2/beta*
N
Ř
8training/Adam/gradients/conv2d_2/convolution_grad/ShapeNShapeNactivation_1/Reluconv2d_2/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0*'
_class
loc:@conv2d_2/convolution
ˇ
Etraining/Adam/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput8training/Adam/gradients/conv2d_2/convolution_grad/ShapeNconv2d_2/kernel/readtraining/Adam/gradients/AddN_27*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
	dilations
*
T0*'
_class
loc:@conv2d_2/convolution*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
Ż
Ftraining/Adam/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilteractivation_1/Relu:training/Adam/gradients/conv2d_2/convolution_grad/ShapeN:1training/Adam/gradients/AddN_27*
T0*'
_class
loc:@conv2d_2/convolution*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*&
_output_shapes
:  *
	dilations

ý
7training/Adam/gradients/activation_1/Relu_grad/ReluGradReluGradEtraining/Adam/gradients/conv2d_2/convolution_grad/Conv2DBackpropInputactivation_1/Relu*
T0*$
_class
loc:@activation_1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
Š
Gtraining/Adam/gradients/batch_normalization_1/cond/Merge_grad/cond_gradSwitch7training/Adam/gradients/activation_1/Relu_grad/ReluGrad"batch_normalization_1/cond/pred_id*
T0*$
_class
loc:@activation_1/Relu*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ 
Â
%training/Adam/gradients/zeros_like_48	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:1*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
_output_shapes
: *
T0
Â
%training/Adam/gradients/zeros_like_49	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:2*
T0*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
_output_shapes
: 
Â
%training/Adam/gradients/zeros_like_50	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:3*
T0*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
_output_shapes
: 
Â
%training/Adam/gradients/zeros_like_51	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:4*
T0*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
_output_shapes
: 
Ň
Ytraining/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradGtraining/Adam/gradients/batch_normalization_1/cond/Merge_grad/cond_grad0batch_normalization_1/cond/FusedBatchNorm/Switch2batch_normalization_1/cond/FusedBatchNorm/Switch_12batch_normalization_1/cond/FusedBatchNorm/Switch_32batch_normalization_1/cond/FusedBatchNorm/Switch_4*
is_training( *
epsilon%o:*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@@ : : : : *
T0*<
_class2
0.loc:@batch_normalization_1/cond/FusedBatchNorm*
data_formatNHWC

!training/Adam/gradients/Switch_32Switch$batch_normalization_1/FusedBatchNorm"batch_normalization_1/cond/pred_id*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ *
T0
Ĺ
#training/Adam/gradients/Identity_32Identity!training/Adam/gradients/Switch_32*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
ş
 training/Adam/gradients/Shape_33Shape!training/Adam/gradients/Switch_32*
T0*
out_type0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
_output_shapes
:
Ę
&training/Adam/gradients/zeros_32/ConstConst$^training/Adam/gradients/Identity_32*
valueB
 *    *7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
dtype0*
_output_shapes
: 
÷
 training/Adam/gradients/zeros_32Fill training/Adam/gradients/Shape_33&training/Adam/gradients/zeros_32/Const*
T0*

index_type0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
ž
Jtraining/Adam/gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradMerge training/Adam/gradients/zeros_32Itraining/Adam/gradients/batch_normalization_1/cond/Merge_grad/cond_grad:1*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ : 
Ű
!training/Adam/gradients/Switch_33Switchconv2d_1/BiasAdd"batch_normalization_1/cond/pred_id*
T0*#
_class
loc:@conv2d_1/BiasAdd*J
_output_shapes8
6:˙˙˙˙˙˙˙˙˙@@ :˙˙˙˙˙˙˙˙˙@@ 
ł
#training/Adam/gradients/Identity_33Identity#training/Adam/gradients/Switch_33:1*
T0*#
_class
loc:@conv2d_1/BiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
¨
 training/Adam/gradients/Shape_34Shape#training/Adam/gradients/Switch_33:1*
T0*
out_type0*#
_class
loc:@conv2d_1/BiasAdd*
_output_shapes
:
ś
&training/Adam/gradients/zeros_33/ConstConst$^training/Adam/gradients/Identity_33*
valueB
 *    *#
_class
loc:@conv2d_1/BiasAdd*
dtype0*
_output_shapes
: 
ă
 training/Adam/gradients/zeros_33Fill training/Adam/gradients/Shape_34&training/Adam/gradients/zeros_33/Const*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
T0*

index_type0*#
_class
loc:@conv2d_1/BiasAdd
Ç
Wtraining/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_grad/cond_gradMergeYtraining/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad training/Adam/gradients/zeros_33*#
_class
loc:@conv2d_1/BiasAdd*
N*1
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ : *
T0
Ě
!training/Adam/gradients/Switch_34Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
: : 
Š
#training/Adam/gradients/Identity_34Identity#training/Adam/gradients/Switch_34:1*
_output_shapes
: *
T0*.
_class$
" loc:@batch_normalization_1/gamma
ł
 training/Adam/gradients/Shape_35Shape#training/Adam/gradients/Switch_34:1*
_output_shapes
:*
T0*
out_type0*.
_class$
" loc:@batch_normalization_1/gamma
Á
&training/Adam/gradients/zeros_34/ConstConst$^training/Adam/gradients/Identity_34*
valueB
 *    *.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
: 
Ů
 training/Adam/gradients/zeros_34Fill training/Adam/gradients/Shape_35&training/Adam/gradients/zeros_34/Const*
T0*

index_type0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
: 
Á
Ytraining/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_1_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1 training/Adam/gradients/zeros_34*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
N*
_output_shapes

: : 
Ę
!training/Adam/gradients/Switch_35Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
: : 
¨
#training/Adam/gradients/Identity_35Identity#training/Adam/gradients/Switch_35:1*
_output_shapes
: *
T0*-
_class#
!loc:@batch_normalization_1/beta
˛
 training/Adam/gradients/Shape_36Shape#training/Adam/gradients/Switch_35:1*
T0*
out_type0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:
Ŕ
&training/Adam/gradients/zeros_35/ConstConst$^training/Adam/gradients/Identity_35*
valueB
 *    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
: 
Ř
 training/Adam/gradients/zeros_35Fill training/Adam/gradients/Shape_36&training/Adam/gradients/zeros_35/Const*
_output_shapes
: *
T0*

index_type0*-
_class#
!loc:@batch_normalization_1/beta
Ŕ
Ytraining/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_2_grad/cond_gradMerge[training/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2 training/Adam/gradients/zeros_35*
T0*-
_class#
!loc:@batch_normalization_1/beta*
N*
_output_shapes

: : 
¸
%training/Adam/gradients/zeros_like_52	ZerosLike&batch_normalization_1/FusedBatchNorm:1*
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
_output_shapes
: 
¸
%training/Adam/gradients/zeros_like_53	ZerosLike&batch_normalization_1/FusedBatchNorm:2*
_output_shapes
: *
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm
¸
%training/Adam/gradients/zeros_like_54	ZerosLike&batch_normalization_1/FusedBatchNorm:3*
_output_shapes
: *
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm
¸
%training/Adam/gradients/zeros_like_55	ZerosLike&batch_normalization_1/FusedBatchNorm:4*
_output_shapes
: *
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm
ý
Ttraining/Adam/gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJtraining/Adam/gradients/batch_normalization_1/cond/Switch_1_grad/cond_gradconv2d_1/BiasAdd batch_normalization_1/gamma/read&batch_normalization_1/FusedBatchNorm:3&batch_normalization_1/FusedBatchNorm:4*C
_output_shapes1
/:˙˙˙˙˙˙˙˙˙@@ : : : : *
T0*7
_class-
+)loc:@batch_normalization_1/FusedBatchNorm*
data_formatNHWC*
is_training(*
epsilon%o:
ž
training/Adam/gradients/AddN_30AddNWtraining/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_grad/cond_gradTtraining/Adam/gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad*
T0*#
_class
loc:@conv2d_1/BiasAdd*
N*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
Ę
9training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradtraining/Adam/gradients/AddN_30*
T0*#
_class
loc:@conv2d_1/BiasAdd*
data_formatNHWC*
_output_shapes
: 
¸
training/Adam/gradients/AddN_31AddNYtraining/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_1_grad/cond_gradVtraining/Adam/gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad:1*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
N*
_output_shapes
: 
ˇ
training/Adam/gradients/AddN_32AddNYtraining/Adam/gradients/batch_normalization_1/cond/FusedBatchNorm/Switch_2_grad/cond_gradVtraining/Adam/gradients/batch_normalization_1/FusedBatchNorm_grad/FusedBatchNormGrad:2*-
_class#
!loc:@batch_normalization_1/beta*
N*
_output_shapes
: *
T0
Î
8training/Adam/gradients/conv2d_1/convolution_grad/ShapeNShapeNinput_1conv2d_1/kernel/read*
out_type0*'
_class
loc:@conv2d_1/convolution*
N* 
_output_shapes
::*
T0
ˇ
Etraining/Adam/gradients/conv2d_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput8training/Adam/gradients/conv2d_1/convolution_grad/ShapeNconv2d_1/kernel/readtraining/Adam/gradients/AddN_30*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
	dilations
*
T0*'
_class
loc:@conv2d_1/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME
Ľ
Ftraining/Adam/gradients/conv2d_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterinput_1:training/Adam/gradients/conv2d_1/convolution_grad/ShapeN:1training/Adam/gradients/AddN_30*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0*'
_class
loc:@conv2d_1/convolution*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
_
training/Adam/AssignAdd/valueConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ź
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*"
_class
loc:@Adam/iterations*
_output_shapes
: *
use_locking( *
T0	
p
training/Adam/CastCastAdam/iterations/read*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
_output_shapes
: *
T0
x
training/Adam/zerosConst*&
_output_shapes
: *%
valueB *    *
dtype0

training/Adam/Variable
VariableV2*
shared_name *
dtype0*&
_output_shapes
: *
	container *
shape: 
Ů
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@training/Adam/Variable

training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*&
_output_shapes
: 
b
training/Adam/zeros_1Const*
_output_shapes
: *
valueB *    *
dtype0

training/Adam/Variable_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ő
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: *
use_locking(

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: 
b
training/Adam/zeros_2Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_2
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ő
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
: *
use_locking(

training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
: 
b
training/Adam/zeros_3Const*
dtype0*
_output_shapes
: *
valueB *    

training/Adam/Variable_3
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
Ő
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
T0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
: 
~
%training/Adam/zeros_4/shape_as_tensorConst*%
valueB"              *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*

index_type0*&
_output_shapes
:  *
T0

training/Adam/Variable_4
VariableV2*&
_output_shapes
:  *
	container *
shape:  *
shared_name *
dtype0
á
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*&
_output_shapes
:  
Ą
training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4*&
_output_shapes
:  
b
training/Adam/zeros_5Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_5
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ő
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 
b
training/Adam/zeros_6Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_6
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ő
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*
T0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
: 
b
training/Adam/zeros_7Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_7
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ő
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*
_output_shapes
: *
T0*+
_class!
loc:@training/Adam/Variable_7
~
%training/Adam/zeros_8/shape_as_tensorConst*%
valueB"          @   *
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*

index_type0*&
_output_shapes
: @*
T0

training/Adam/Variable_8
VariableV2*
dtype0*&
_output_shapes
: @*
	container *
shape: @*
shared_name 
á
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*&
_output_shapes
: @
Ą
training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*&
_output_shapes
: @
b
training/Adam/zeros_9Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_9
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Ő
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
:@
c
training/Adam/zeros_10Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_10
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
Ů
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
T0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
:@
c
training/Adam/zeros_11Const*
_output_shapes
:@*
valueB@*    *
dtype0

training/Adam/Variable_11
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
:@

&training/Adam/zeros_12/shape_as_tensorConst*%
valueB"      @   @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
§
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const*
T0*

index_type0*&
_output_shapes
:@@

training/Adam/Variable_12
VariableV2*
shape:@@*
shared_name *
dtype0*&
_output_shapes
:@@*
	container 
ĺ
 training/Adam/Variable_12/AssignAssigntraining/Adam/Variable_12training/Adam/zeros_12*&
_output_shapes
:@@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(
¤
training/Adam/Variable_12/readIdentitytraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*&
_output_shapes
:@@*
T0
c
training/Adam/zeros_13Const*
dtype0*
_output_shapes
:@*
valueB@*    

training/Adam/Variable_13
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Ů
 training/Adam/Variable_13/AssignAssigntraining/Adam/Variable_13training/Adam/zeros_13*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_13/readIdentitytraining/Adam/Variable_13*
_output_shapes
:@*
T0*,
_class"
 loc:@training/Adam/Variable_13
c
training/Adam/zeros_14Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_14
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_14/AssignAssigntraining/Adam/Variable_14training/Adam/zeros_14*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_14/readIdentitytraining/Adam/Variable_14*
T0*,
_class"
 loc:@training/Adam/Variable_14*
_output_shapes
:@
c
training/Adam/zeros_15Const*
dtype0*
_output_shapes
:@*
valueB@*    

training/Adam/Variable_15
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_15/AssignAssigntraining/Adam/Variable_15training/Adam/zeros_15*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_15/readIdentitytraining/Adam/Variable_15*
T0*,
_class"
 loc:@training/Adam/Variable_15*
_output_shapes
:@

&training/Adam/zeros_16/shape_as_tensorConst*
_output_shapes
:*%
valueB"      @      *
dtype0
a
training/Adam/zeros_16/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¨
training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
T0*

index_type0*'
_output_shapes
:@

training/Adam/Variable_16
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
ć
 training/Adam/Variable_16/AssignAssigntraining/Adam/Variable_16training/Adam/zeros_16*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*'
_output_shapes
:@
Ľ
training/Adam/Variable_16/readIdentitytraining/Adam/Variable_16*
T0*,
_class"
 loc:@training/Adam/Variable_16*'
_output_shapes
:@
e
training/Adam/zeros_17Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_17
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_17/AssignAssigntraining/Adam/Variable_17training/Adam/zeros_17*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17

training/Adam/Variable_17/readIdentitytraining/Adam/Variable_17*
_output_shapes	
:*
T0*,
_class"
 loc:@training/Adam/Variable_17
e
training/Adam/zeros_18Const*
dtype0*
_output_shapes	
:*
valueB*    

training/Adam/Variable_18
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_18/AssignAssigntraining/Adam/Variable_18training/Adam/zeros_18*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes	
:*
use_locking(

training/Adam/Variable_18/readIdentitytraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
_output_shapes	
:*
T0
e
training/Adam/zeros_19Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_19
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_19/AssignAssigntraining/Adam/Variable_19training/Adam/zeros_19*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19

training/Adam/Variable_19/readIdentitytraining/Adam/Variable_19*
T0*,
_class"
 loc:@training/Adam/Variable_19*
_output_shapes	
:

&training/Adam/zeros_20/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
a
training/Adam/zeros_20/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*

index_type0*(
_output_shapes
:
Ą
training/Adam/Variable_20
VariableV2*
shape:*
shared_name *
dtype0*(
_output_shapes
:*
	container 
ç
 training/Adam/Variable_20/AssignAssigntraining/Adam/Variable_20training/Adam/zeros_20*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*(
_output_shapes
:
Ś
training/Adam/Variable_20/readIdentitytraining/Adam/Variable_20*
T0*,
_class"
 loc:@training/Adam/Variable_20*(
_output_shapes
:
e
training/Adam/zeros_21Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_21
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ú
 training/Adam/Variable_21/AssignAssigntraining/Adam/Variable_21training/Adam/zeros_21*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/Adam/Variable_21/readIdentitytraining/Adam/Variable_21*
T0*,
_class"
 loc:@training/Adam/Variable_21*
_output_shapes	
:
e
training/Adam/zeros_22Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_22
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ú
 training/Adam/Variable_22/AssignAssigntraining/Adam/Variable_22training/Adam/zeros_22*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_22/readIdentitytraining/Adam/Variable_22*
T0*,
_class"
 loc:@training/Adam/Variable_22*
_output_shapes	
:
e
training/Adam/zeros_23Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_23
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_23/AssignAssigntraining/Adam/Variable_23training/Adam/zeros_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes	
:*
use_locking(

training/Adam/Variable_23/readIdentitytraining/Adam/Variable_23*
T0*,
_class"
 loc:@training/Adam/Variable_23*
_output_shapes	
:

&training/Adam/zeros_24/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"            
a
training/Adam/zeros_24/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_24Fill&training/Adam/zeros_24/shape_as_tensortraining/Adam/zeros_24/Const*(
_output_shapes
:*
T0*

index_type0
Ą
training/Adam/Variable_24
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
ç
 training/Adam/Variable_24/AssignAssigntraining/Adam/Variable_24training/Adam/zeros_24*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ś
training/Adam/Variable_24/readIdentitytraining/Adam/Variable_24*(
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_24
e
training/Adam/zeros_25Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_25
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ú
 training/Adam/Variable_25/AssignAssigntraining/Adam/Variable_25training/Adam/zeros_25*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_25/readIdentitytraining/Adam/Variable_25*
T0*,
_class"
 loc:@training/Adam/Variable_25*
_output_shapes	
:
e
training/Adam/zeros_26Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_26
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ú
 training/Adam/Variable_26/AssignAssigntraining/Adam/Variable_26training/Adam/zeros_26*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(

training/Adam/Variable_26/readIdentitytraining/Adam/Variable_26*
_output_shapes	
:*
T0*,
_class"
 loc:@training/Adam/Variable_26
e
training/Adam/zeros_27Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_27
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_27/AssignAssigntraining/Adam/Variable_27training/Adam/zeros_27*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27

training/Adam/Variable_27/readIdentitytraining/Adam/Variable_27*
T0*,
_class"
 loc:@training/Adam/Variable_27*
_output_shapes	
:
w
&training/Adam/zeros_28/shape_as_tensorConst*
_output_shapes
:*
valueB"      *
dtype0
a
training/Adam/zeros_28/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ą
training/Adam/zeros_28Fill&training/Adam/zeros_28/shape_as_tensortraining/Adam/zeros_28/Const*
T0*

index_type0* 
_output_shapes
:


training/Adam/Variable_28
VariableV2*
shared_name *
dtype0* 
_output_shapes
:
*
	container *
shape:

ß
 training/Adam/Variable_28/AssignAssigntraining/Adam/Variable_28training/Adam/zeros_28* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(

training/Adam/Variable_28/readIdentitytraining/Adam/Variable_28*
T0*,
_class"
 loc:@training/Adam/Variable_28* 
_output_shapes
:

e
training/Adam/zeros_29Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_29
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ú
 training/Adam/Variable_29/AssignAssigntraining/Adam/Variable_29training/Adam/zeros_29*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/Adam/Variable_29/readIdentitytraining/Adam/Variable_29*
T0*,
_class"
 loc:@training/Adam/Variable_29*
_output_shapes	
:
w
&training/Adam/zeros_30/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_30/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ą
training/Adam/zeros_30Fill&training/Adam/zeros_30/shape_as_tensortraining/Adam/zeros_30/Const*
T0*

index_type0* 
_output_shapes
:


training/Adam/Variable_30
VariableV2*
shared_name *
dtype0* 
_output_shapes
:
*
	container *
shape:

ß
 training/Adam/Variable_30/AssignAssigntraining/Adam/Variable_30training/Adam/zeros_30* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(

training/Adam/Variable_30/readIdentitytraining/Adam/Variable_30*
T0*,
_class"
 loc:@training/Adam/Variable_30* 
_output_shapes
:

e
training/Adam/zeros_31Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_31
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ú
 training/Adam/Variable_31/AssignAssigntraining/Adam/Variable_31training/Adam/zeros_31*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_31/readIdentitytraining/Adam/Variable_31*
_output_shapes	
:*
T0*,
_class"
 loc:@training/Adam/Variable_31
e
training/Adam/zeros_32Const*
_output_shapes	
:*
valueB*    *
dtype0

training/Adam/Variable_32
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_32/AssignAssigntraining/Adam/Variable_32training/Adam/zeros_32*
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(*
_output_shapes	
:*
use_locking(

training/Adam/Variable_32/readIdentitytraining/Adam/Variable_32*
T0*,
_class"
 loc:@training/Adam/Variable_32*
_output_shapes	
:
e
training/Adam/zeros_33Const*
_output_shapes	
:*
valueB*    *
dtype0

training/Adam/Variable_33
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ú
 training/Adam/Variable_33/AssignAssigntraining/Adam/Variable_33training/Adam/zeros_33*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_33*
validate_shape(

training/Adam/Variable_33/readIdentitytraining/Adam/Variable_33*
T0*,
_class"
 loc:@training/Adam/Variable_33*
_output_shapes	
:
w
&training/Adam/zeros_34/shape_as_tensorConst*
valueB"   @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_34/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
training/Adam/zeros_34Fill&training/Adam/zeros_34/shape_as_tensortraining/Adam/zeros_34/Const*

index_type0*
_output_shapes
:	@*
T0

training/Adam/Variable_34
VariableV2*
_output_shapes
:	@*
	container *
shape:	@*
shared_name *
dtype0
Ţ
 training/Adam/Variable_34/AssignAssigntraining/Adam/Variable_34training/Adam/zeros_34*
T0*,
_class"
 loc:@training/Adam/Variable_34*
validate_shape(*
_output_shapes
:	@*
use_locking(

training/Adam/Variable_34/readIdentitytraining/Adam/Variable_34*
_output_shapes
:	@*
T0*,
_class"
 loc:@training/Adam/Variable_34
c
training/Adam/zeros_35Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_35
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_35/AssignAssigntraining/Adam/Variable_35training/Adam/zeros_35*
T0*,
_class"
 loc:@training/Adam/Variable_35*
validate_shape(*
_output_shapes
:@*
use_locking(

training/Adam/Variable_35/readIdentitytraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
_output_shapes
:@*
T0
c
training/Adam/zeros_36Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_36
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_36/AssignAssigntraining/Adam/Variable_36training/Adam/zeros_36*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_36*
validate_shape(

training/Adam/Variable_36/readIdentitytraining/Adam/Variable_36*
T0*,
_class"
 loc:@training/Adam/Variable_36*
_output_shapes
:@
c
training/Adam/zeros_37Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_37
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_37/AssignAssigntraining/Adam/Variable_37training/Adam/zeros_37*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_37*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_37/readIdentitytraining/Adam/Variable_37*
_output_shapes
:@*
T0*,
_class"
 loc:@training/Adam/Variable_37
k
training/Adam/zeros_38Const*
_output_shapes

:@*
valueB@*    *
dtype0

training/Adam/Variable_38
VariableV2*
dtype0*
_output_shapes

:@*
	container *
shape
:@*
shared_name 
Ý
 training/Adam/Variable_38/AssignAssigntraining/Adam/Variable_38training/Adam/zeros_38*,
_class"
 loc:@training/Adam/Variable_38*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0

training/Adam/Variable_38/readIdentitytraining/Adam/Variable_38*
_output_shapes

:@*
T0*,
_class"
 loc:@training/Adam/Variable_38
c
training/Adam/zeros_39Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_39
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ů
 training/Adam/Variable_39/AssignAssigntraining/Adam/Variable_39training/Adam/zeros_39*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_39*
validate_shape(

training/Adam/Variable_39/readIdentitytraining/Adam/Variable_39*
T0*,
_class"
 loc:@training/Adam/Variable_39*
_output_shapes
:
{
training/Adam/zeros_40Const*%
valueB *    *
dtype0*&
_output_shapes
: 

training/Adam/Variable_40
VariableV2*
shared_name *
dtype0*&
_output_shapes
: *
	container *
shape: 
ĺ
 training/Adam/Variable_40/AssignAssigntraining/Adam/Variable_40training/Adam/zeros_40*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_40*
validate_shape(*&
_output_shapes
: 
¤
training/Adam/Variable_40/readIdentitytraining/Adam/Variable_40*&
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_40
c
training/Adam/zeros_41Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_41
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ů
 training/Adam/Variable_41/AssignAssigntraining/Adam/Variable_41training/Adam/zeros_41*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_41*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_41/readIdentitytraining/Adam/Variable_41*
T0*,
_class"
 loc:@training/Adam/Variable_41*
_output_shapes
: 
c
training/Adam/zeros_42Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_42
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ů
 training/Adam/Variable_42/AssignAssigntraining/Adam/Variable_42training/Adam/zeros_42*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_42

training/Adam/Variable_42/readIdentitytraining/Adam/Variable_42*
T0*,
_class"
 loc:@training/Adam/Variable_42*
_output_shapes
: 
c
training/Adam/zeros_43Const*
_output_shapes
: *
valueB *    *
dtype0

training/Adam/Variable_43
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ů
 training/Adam/Variable_43/AssignAssigntraining/Adam/Variable_43training/Adam/zeros_43*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_43*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_43/readIdentitytraining/Adam/Variable_43*
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_43

&training/Adam/zeros_44/shape_as_tensorConst*%
valueB"              *
dtype0*
_output_shapes
:
a
training/Adam/zeros_44/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_44Fill&training/Adam/zeros_44/shape_as_tensortraining/Adam/zeros_44/Const*
T0*

index_type0*&
_output_shapes
:  

training/Adam/Variable_44
VariableV2*
shared_name *
dtype0*&
_output_shapes
:  *
	container *
shape:  
ĺ
 training/Adam/Variable_44/AssignAssigntraining/Adam/Variable_44training/Adam/zeros_44*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_44
¤
training/Adam/Variable_44/readIdentitytraining/Adam/Variable_44*
T0*,
_class"
 loc:@training/Adam/Variable_44*&
_output_shapes
:  
c
training/Adam/zeros_45Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_45
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
Ů
 training/Adam/Variable_45/AssignAssigntraining/Adam/Variable_45training/Adam/zeros_45*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_45*
validate_shape(*
_output_shapes
: 

training/Adam/Variable_45/readIdentitytraining/Adam/Variable_45*
T0*,
_class"
 loc:@training/Adam/Variable_45*
_output_shapes
: 
c
training/Adam/zeros_46Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_46
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ů
 training/Adam/Variable_46/AssignAssigntraining/Adam/Variable_46training/Adam/zeros_46*,
_class"
 loc:@training/Adam/Variable_46*
validate_shape(*
_output_shapes
: *
use_locking(*
T0

training/Adam/Variable_46/readIdentitytraining/Adam/Variable_46*
_output_shapes
: *
T0*,
_class"
 loc:@training/Adam/Variable_46
c
training/Adam/zeros_47Const*
valueB *    *
dtype0*
_output_shapes
: 

training/Adam/Variable_47
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
Ů
 training/Adam/Variable_47/AssignAssigntraining/Adam/Variable_47training/Adam/zeros_47*
T0*,
_class"
 loc:@training/Adam/Variable_47*
validate_shape(*
_output_shapes
: *
use_locking(

training/Adam/Variable_47/readIdentitytraining/Adam/Variable_47*
T0*,
_class"
 loc:@training/Adam/Variable_47*
_output_shapes
: 

&training/Adam/zeros_48/shape_as_tensorConst*%
valueB"          @   *
dtype0*
_output_shapes
:
a
training/Adam/zeros_48/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_48Fill&training/Adam/zeros_48/shape_as_tensortraining/Adam/zeros_48/Const*&
_output_shapes
: @*
T0*

index_type0

training/Adam/Variable_48
VariableV2*
shape: @*
shared_name *
dtype0*&
_output_shapes
: @*
	container 
ĺ
 training/Adam/Variable_48/AssignAssigntraining/Adam/Variable_48training/Adam/zeros_48*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_48*
validate_shape(*&
_output_shapes
: @
¤
training/Adam/Variable_48/readIdentitytraining/Adam/Variable_48*
T0*,
_class"
 loc:@training/Adam/Variable_48*&
_output_shapes
: @
c
training/Adam/zeros_49Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_49
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
Ů
 training/Adam/Variable_49/AssignAssigntraining/Adam/Variable_49training/Adam/zeros_49*,
_class"
 loc:@training/Adam/Variable_49*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

training/Adam/Variable_49/readIdentitytraining/Adam/Variable_49*
T0*,
_class"
 loc:@training/Adam/Variable_49*
_output_shapes
:@
c
training/Adam/zeros_50Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_50
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_50/AssignAssigntraining/Adam/Variable_50training/Adam/zeros_50*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_50*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_50/readIdentitytraining/Adam/Variable_50*
T0*,
_class"
 loc:@training/Adam/Variable_50*
_output_shapes
:@
c
training/Adam/zeros_51Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_51
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
Ů
 training/Adam/Variable_51/AssignAssigntraining/Adam/Variable_51training/Adam/zeros_51*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_51*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_51/readIdentitytraining/Adam/Variable_51*
T0*,
_class"
 loc:@training/Adam/Variable_51*
_output_shapes
:@

&training/Adam/zeros_52/shape_as_tensorConst*
_output_shapes
:*%
valueB"      @   @   *
dtype0
a
training/Adam/zeros_52/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_52Fill&training/Adam/zeros_52/shape_as_tensortraining/Adam/zeros_52/Const*
T0*

index_type0*&
_output_shapes
:@@

training/Adam/Variable_52
VariableV2*
dtype0*&
_output_shapes
:@@*
	container *
shape:@@*
shared_name 
ĺ
 training/Adam/Variable_52/AssignAssigntraining/Adam/Variable_52training/Adam/zeros_52*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_52*
validate_shape(*&
_output_shapes
:@@
¤
training/Adam/Variable_52/readIdentitytraining/Adam/Variable_52*,
_class"
 loc:@training/Adam/Variable_52*&
_output_shapes
:@@*
T0
c
training/Adam/zeros_53Const*
_output_shapes
:@*
valueB@*    *
dtype0

training/Adam/Variable_53
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_53/AssignAssigntraining/Adam/Variable_53training/Adam/zeros_53*
T0*,
_class"
 loc:@training/Adam/Variable_53*
validate_shape(*
_output_shapes
:@*
use_locking(

training/Adam/Variable_53/readIdentitytraining/Adam/Variable_53*
T0*,
_class"
 loc:@training/Adam/Variable_53*
_output_shapes
:@
c
training/Adam/zeros_54Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_54
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Ů
 training/Adam/Variable_54/AssignAssigntraining/Adam/Variable_54training/Adam/zeros_54*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_54*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_54/readIdentitytraining/Adam/Variable_54*
T0*,
_class"
 loc:@training/Adam/Variable_54*
_output_shapes
:@
c
training/Adam/zeros_55Const*
_output_shapes
:@*
valueB@*    *
dtype0

training/Adam/Variable_55
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
Ů
 training/Adam/Variable_55/AssignAssigntraining/Adam/Variable_55training/Adam/zeros_55*,
_class"
 loc:@training/Adam/Variable_55*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

training/Adam/Variable_55/readIdentitytraining/Adam/Variable_55*
T0*,
_class"
 loc:@training/Adam/Variable_55*
_output_shapes
:@

&training/Adam/zeros_56/shape_as_tensorConst*%
valueB"      @      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_56/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¨
training/Adam/zeros_56Fill&training/Adam/zeros_56/shape_as_tensortraining/Adam/zeros_56/Const*
T0*

index_type0*'
_output_shapes
:@

training/Adam/Variable_56
VariableV2*'
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
ć
 training/Adam/Variable_56/AssignAssigntraining/Adam/Variable_56training/Adam/zeros_56*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_56*
validate_shape(*'
_output_shapes
:@
Ľ
training/Adam/Variable_56/readIdentitytraining/Adam/Variable_56*'
_output_shapes
:@*
T0*,
_class"
 loc:@training/Adam/Variable_56
e
training/Adam/zeros_57Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_57
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_57/AssignAssigntraining/Adam/Variable_57training/Adam/zeros_57*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_57

training/Adam/Variable_57/readIdentitytraining/Adam/Variable_57*
T0*,
_class"
 loc:@training/Adam/Variable_57*
_output_shapes	
:
e
training/Adam/zeros_58Const*
dtype0*
_output_shapes	
:*
valueB*    

training/Adam/Variable_58
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ú
 training/Adam/Variable_58/AssignAssigntraining/Adam/Variable_58training/Adam/zeros_58*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_58*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_58/readIdentitytraining/Adam/Variable_58*
T0*,
_class"
 loc:@training/Adam/Variable_58*
_output_shapes	
:
e
training/Adam/zeros_59Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_59
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_59/AssignAssigntraining/Adam/Variable_59training/Adam/zeros_59*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_59*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_59/readIdentitytraining/Adam/Variable_59*
T0*,
_class"
 loc:@training/Adam/Variable_59*
_output_shapes	
:

&training/Adam/zeros_60/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
a
training/Adam/zeros_60/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Š
training/Adam/zeros_60Fill&training/Adam/zeros_60/shape_as_tensortraining/Adam/zeros_60/Const*
T0*

index_type0*(
_output_shapes
:
Ą
training/Adam/Variable_60
VariableV2*(
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
ç
 training/Adam/Variable_60/AssignAssigntraining/Adam/Variable_60training/Adam/zeros_60*
T0*,
_class"
 loc:@training/Adam/Variable_60*
validate_shape(*(
_output_shapes
:*
use_locking(
Ś
training/Adam/Variable_60/readIdentitytraining/Adam/Variable_60*
T0*,
_class"
 loc:@training/Adam/Variable_60*(
_output_shapes
:
e
training/Adam/zeros_61Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_61
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ú
 training/Adam/Variable_61/AssignAssigntraining/Adam/Variable_61training/Adam/zeros_61*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_61*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_61/readIdentitytraining/Adam/Variable_61*
T0*,
_class"
 loc:@training/Adam/Variable_61*
_output_shapes	
:
e
training/Adam/zeros_62Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_62
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_62/AssignAssigntraining/Adam/Variable_62training/Adam/zeros_62*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_62*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_62/readIdentitytraining/Adam/Variable_62*
_output_shapes	
:*
T0*,
_class"
 loc:@training/Adam/Variable_62
e
training/Adam/zeros_63Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_63
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_63/AssignAssigntraining/Adam/Variable_63training/Adam/zeros_63*
T0*,
_class"
 loc:@training/Adam/Variable_63*
validate_shape(*
_output_shapes	
:*
use_locking(

training/Adam/Variable_63/readIdentitytraining/Adam/Variable_63*
_output_shapes	
:*
T0*,
_class"
 loc:@training/Adam/Variable_63

&training/Adam/zeros_64/shape_as_tensorConst*%
valueB"            *
dtype0*
_output_shapes
:
a
training/Adam/zeros_64/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Š
training/Adam/zeros_64Fill&training/Adam/zeros_64/shape_as_tensortraining/Adam/zeros_64/Const*

index_type0*(
_output_shapes
:*
T0
Ą
training/Adam/Variable_64
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
ç
 training/Adam/Variable_64/AssignAssigntraining/Adam/Variable_64training/Adam/zeros_64*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_64*
validate_shape(*(
_output_shapes
:
Ś
training/Adam/Variable_64/readIdentitytraining/Adam/Variable_64*(
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_64
e
training/Adam/zeros_65Const*
dtype0*
_output_shapes	
:*
valueB*    

training/Adam/Variable_65
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_65/AssignAssigntraining/Adam/Variable_65training/Adam/zeros_65*,
_class"
 loc:@training/Adam/Variable_65*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/Adam/Variable_65/readIdentitytraining/Adam/Variable_65*
T0*,
_class"
 loc:@training/Adam/Variable_65*
_output_shapes	
:
e
training/Adam/zeros_66Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_66
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_66/AssignAssigntraining/Adam/Variable_66training/Adam/zeros_66*,
_class"
 loc:@training/Adam/Variable_66*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/Adam/Variable_66/readIdentitytraining/Adam/Variable_66*,
_class"
 loc:@training/Adam/Variable_66*
_output_shapes	
:*
T0
e
training/Adam/zeros_67Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_67
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ú
 training/Adam/Variable_67/AssignAssigntraining/Adam/Variable_67training/Adam/zeros_67*
T0*,
_class"
 loc:@training/Adam/Variable_67*
validate_shape(*
_output_shapes	
:*
use_locking(

training/Adam/Variable_67/readIdentitytraining/Adam/Variable_67*
T0*,
_class"
 loc:@training/Adam/Variable_67*
_output_shapes	
:
w
&training/Adam/zeros_68/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_68/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ą
training/Adam/zeros_68Fill&training/Adam/zeros_68/shape_as_tensortraining/Adam/zeros_68/Const*
T0*

index_type0* 
_output_shapes
:


training/Adam/Variable_68
VariableV2*
shared_name *
dtype0* 
_output_shapes
:
*
	container *
shape:

ß
 training/Adam/Variable_68/AssignAssigntraining/Adam/Variable_68training/Adam/zeros_68*
T0*,
_class"
 loc:@training/Adam/Variable_68*
validate_shape(* 
_output_shapes
:
*
use_locking(

training/Adam/Variable_68/readIdentitytraining/Adam/Variable_68* 
_output_shapes
:
*
T0*,
_class"
 loc:@training/Adam/Variable_68
e
training/Adam/zeros_69Const*
_output_shapes	
:*
valueB*    *
dtype0

training/Adam/Variable_69
VariableV2*
_output_shapes	
:*
	container *
shape:*
shared_name *
dtype0
Ú
 training/Adam/Variable_69/AssignAssigntraining/Adam/Variable_69training/Adam/zeros_69*,
_class"
 loc:@training/Adam/Variable_69*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

training/Adam/Variable_69/readIdentitytraining/Adam/Variable_69*
T0*,
_class"
 loc:@training/Adam/Variable_69*
_output_shapes	
:
w
&training/Adam/zeros_70/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
a
training/Adam/zeros_70/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ą
training/Adam/zeros_70Fill&training/Adam/zeros_70/shape_as_tensortraining/Adam/zeros_70/Const* 
_output_shapes
:
*
T0*

index_type0

training/Adam/Variable_70
VariableV2*
shape:
*
shared_name *
dtype0* 
_output_shapes
:
*
	container 
ß
 training/Adam/Variable_70/AssignAssigntraining/Adam/Variable_70training/Adam/zeros_70*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_70*
validate_shape(* 
_output_shapes
:


training/Adam/Variable_70/readIdentitytraining/Adam/Variable_70*
T0*,
_class"
 loc:@training/Adam/Variable_70* 
_output_shapes
:

e
training/Adam/zeros_71Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_71
VariableV2*
_output_shapes	
:*
	container *
shape:*
shared_name *
dtype0
Ú
 training/Adam/Variable_71/AssignAssigntraining/Adam/Variable_71training/Adam/zeros_71*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_71*
validate_shape(*
_output_shapes	
:

training/Adam/Variable_71/readIdentitytraining/Adam/Variable_71*
T0*,
_class"
 loc:@training/Adam/Variable_71*
_output_shapes	
:
e
training/Adam/zeros_72Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_72
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_72/AssignAssigntraining/Adam/Variable_72training/Adam/zeros_72*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_72

training/Adam/Variable_72/readIdentitytraining/Adam/Variable_72*,
_class"
 loc:@training/Adam/Variable_72*
_output_shapes	
:*
T0
e
training/Adam/zeros_73Const*
valueB*    *
dtype0*
_output_shapes	
:

training/Adam/Variable_73
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ú
 training/Adam/Variable_73/AssignAssigntraining/Adam/Variable_73training/Adam/zeros_73*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_73*
validate_shape(

training/Adam/Variable_73/readIdentitytraining/Adam/Variable_73*
_output_shapes	
:*
T0*,
_class"
 loc:@training/Adam/Variable_73
w
&training/Adam/zeros_74/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   @   
a
training/Adam/zeros_74/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
 
training/Adam/zeros_74Fill&training/Adam/zeros_74/shape_as_tensortraining/Adam/zeros_74/Const*
T0*

index_type0*
_output_shapes
:	@

training/Adam/Variable_74
VariableV2*
_output_shapes
:	@*
	container *
shape:	@*
shared_name *
dtype0
Ţ
 training/Adam/Variable_74/AssignAssigntraining/Adam/Variable_74training/Adam/zeros_74*
T0*,
_class"
 loc:@training/Adam/Variable_74*
validate_shape(*
_output_shapes
:	@*
use_locking(

training/Adam/Variable_74/readIdentitytraining/Adam/Variable_74*
T0*,
_class"
 loc:@training/Adam/Variable_74*
_output_shapes
:	@
c
training/Adam/zeros_75Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_75
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
Ů
 training/Adam/Variable_75/AssignAssigntraining/Adam/Variable_75training/Adam/zeros_75*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_75*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_75/readIdentitytraining/Adam/Variable_75*
_output_shapes
:@*
T0*,
_class"
 loc:@training/Adam/Variable_75
c
training/Adam/zeros_76Const*
valueB@*    *
dtype0*
_output_shapes
:@

training/Adam/Variable_76
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0
Ů
 training/Adam/Variable_76/AssignAssigntraining/Adam/Variable_76training/Adam/zeros_76*,
_class"
 loc:@training/Adam/Variable_76*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

training/Adam/Variable_76/readIdentitytraining/Adam/Variable_76*,
_class"
 loc:@training/Adam/Variable_76*
_output_shapes
:@*
T0
c
training/Adam/zeros_77Const*
dtype0*
_output_shapes
:@*
valueB@*    

training/Adam/Variable_77
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
Ů
 training/Adam/Variable_77/AssignAssigntraining/Adam/Variable_77training/Adam/zeros_77*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_77*
validate_shape(*
_output_shapes
:@

training/Adam/Variable_77/readIdentitytraining/Adam/Variable_77*
T0*,
_class"
 loc:@training/Adam/Variable_77*
_output_shapes
:@
k
training/Adam/zeros_78Const*
valueB@*    *
dtype0*
_output_shapes

:@

training/Adam/Variable_78
VariableV2*
dtype0*
_output_shapes

:@*
	container *
shape
:@*
shared_name 
Ý
 training/Adam/Variable_78/AssignAssigntraining/Adam/Variable_78training/Adam/zeros_78*
T0*,
_class"
 loc:@training/Adam/Variable_78*
validate_shape(*
_output_shapes

:@*
use_locking(

training/Adam/Variable_78/readIdentitytraining/Adam/Variable_78*
T0*,
_class"
 loc:@training/Adam/Variable_78*
_output_shapes

:@
c
training/Adam/zeros_79Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_79
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_79/AssignAssigntraining/Adam/Variable_79training/Adam/zeros_79*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_79*
validate_shape(*
_output_shapes
:

training/Adam/Variable_79/readIdentitytraining/Adam/Variable_79*
T0*,
_class"
 loc:@training/Adam/Variable_79*
_output_shapes
:
p
&training/Adam/zeros_80/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_80/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_80Fill&training/Adam/zeros_80/shape_as_tensortraining/Adam/zeros_80/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_80
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_80/AssignAssigntraining/Adam/Variable_80training/Adam/zeros_80*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_80*
validate_shape(*
_output_shapes
:

training/Adam/Variable_80/readIdentitytraining/Adam/Variable_80*,
_class"
 loc:@training/Adam/Variable_80*
_output_shapes
:*
T0
p
&training/Adam/zeros_81/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_81/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_81Fill&training/Adam/zeros_81/shape_as_tensortraining/Adam/zeros_81/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_81
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_81/AssignAssigntraining/Adam/Variable_81training/Adam/zeros_81*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_81*
validate_shape(

training/Adam/Variable_81/readIdentitytraining/Adam/Variable_81*
T0*,
_class"
 loc:@training/Adam/Variable_81*
_output_shapes
:
p
&training/Adam/zeros_82/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_82/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_82Fill&training/Adam/zeros_82/shape_as_tensortraining/Adam/zeros_82/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_82
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ů
 training/Adam/Variable_82/AssignAssigntraining/Adam/Variable_82training/Adam/zeros_82*
T0*,
_class"
 loc:@training/Adam/Variable_82*
validate_shape(*
_output_shapes
:*
use_locking(

training/Adam/Variable_82/readIdentitytraining/Adam/Variable_82*
T0*,
_class"
 loc:@training/Adam/Variable_82*
_output_shapes
:
p
&training/Adam/zeros_83/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training/Adam/zeros_83/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_83Fill&training/Adam/zeros_83/shape_as_tensortraining/Adam/zeros_83/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_83
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ů
 training/Adam/Variable_83/AssignAssigntraining/Adam/Variable_83training/Adam/zeros_83*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_83*
validate_shape(*
_output_shapes
:

training/Adam/Variable_83/readIdentitytraining/Adam/Variable_83*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_83
p
&training/Adam/zeros_84/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_84/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_84Fill&training/Adam/zeros_84/shape_as_tensortraining/Adam/zeros_84/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_84
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_84/AssignAssigntraining/Adam/Variable_84training/Adam/zeros_84*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_84*
validate_shape(*
_output_shapes
:

training/Adam/Variable_84/readIdentitytraining/Adam/Variable_84*
T0*,
_class"
 loc:@training/Adam/Variable_84*
_output_shapes
:
p
&training/Adam/zeros_85/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_85/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_85Fill&training/Adam/zeros_85/shape_as_tensortraining/Adam/zeros_85/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_85
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ů
 training/Adam/Variable_85/AssignAssigntraining/Adam/Variable_85training/Adam/zeros_85*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_85*
validate_shape(*
_output_shapes
:

training/Adam/Variable_85/readIdentitytraining/Adam/Variable_85*
T0*,
_class"
 loc:@training/Adam/Variable_85*
_output_shapes
:
p
&training/Adam/zeros_86/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_86/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_86Fill&training/Adam/zeros_86/shape_as_tensortraining/Adam/zeros_86/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_86
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_86/AssignAssigntraining/Adam/Variable_86training/Adam/zeros_86*
T0*,
_class"
 loc:@training/Adam/Variable_86*
validate_shape(*
_output_shapes
:*
use_locking(

training/Adam/Variable_86/readIdentitytraining/Adam/Variable_86*,
_class"
 loc:@training/Adam/Variable_86*
_output_shapes
:*
T0
p
&training/Adam/zeros_87/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_87/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_87Fill&training/Adam/zeros_87/shape_as_tensortraining/Adam/zeros_87/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_87
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ů
 training/Adam/Variable_87/AssignAssigntraining/Adam/Variable_87training/Adam/zeros_87*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_87

training/Adam/Variable_87/readIdentitytraining/Adam/Variable_87*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_87
p
&training/Adam/zeros_88/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_88/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_88Fill&training/Adam/zeros_88/shape_as_tensortraining/Adam/zeros_88/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_88
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ů
 training/Adam/Variable_88/AssignAssigntraining/Adam/Variable_88training/Adam/zeros_88*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_88*
validate_shape(*
_output_shapes
:

training/Adam/Variable_88/readIdentitytraining/Adam/Variable_88*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_88
p
&training/Adam/zeros_89/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_89/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_89Fill&training/Adam/zeros_89/shape_as_tensortraining/Adam/zeros_89/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_89
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ů
 training/Adam/Variable_89/AssignAssigntraining/Adam/Variable_89training/Adam/zeros_89*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_89*
validate_shape(

training/Adam/Variable_89/readIdentitytraining/Adam/Variable_89*,
_class"
 loc:@training/Adam/Variable_89*
_output_shapes
:*
T0
p
&training/Adam/zeros_90/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_90/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_90Fill&training/Adam/zeros_90/shape_as_tensortraining/Adam/zeros_90/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_90
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_90/AssignAssigntraining/Adam/Variable_90training/Adam/zeros_90*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_90*
validate_shape(*
_output_shapes
:

training/Adam/Variable_90/readIdentitytraining/Adam/Variable_90*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_90
p
&training/Adam/zeros_91/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_91/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_91Fill&training/Adam/zeros_91/shape_as_tensortraining/Adam/zeros_91/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_91
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ů
 training/Adam/Variable_91/AssignAssigntraining/Adam/Variable_91training/Adam/zeros_91*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_91*
validate_shape(*
_output_shapes
:

training/Adam/Variable_91/readIdentitytraining/Adam/Variable_91*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_91
p
&training/Adam/zeros_92/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_92/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_92Fill&training/Adam/zeros_92/shape_as_tensortraining/Adam/zeros_92/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_92
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ů
 training/Adam/Variable_92/AssignAssigntraining/Adam/Variable_92training/Adam/zeros_92*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_92

training/Adam/Variable_92/readIdentitytraining/Adam/Variable_92*
T0*,
_class"
 loc:@training/Adam/Variable_92*
_output_shapes
:
p
&training/Adam/zeros_93/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_93/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_93Fill&training/Adam/zeros_93/shape_as_tensortraining/Adam/zeros_93/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_93
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_93/AssignAssigntraining/Adam/Variable_93training/Adam/zeros_93*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_93*
validate_shape(*
_output_shapes
:

training/Adam/Variable_93/readIdentitytraining/Adam/Variable_93*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_93
p
&training/Adam/zeros_94/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_94/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_94Fill&training/Adam/zeros_94/shape_as_tensortraining/Adam/zeros_94/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_94
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ů
 training/Adam/Variable_94/AssignAssigntraining/Adam/Variable_94training/Adam/zeros_94*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_94*
validate_shape(*
_output_shapes
:

training/Adam/Variable_94/readIdentitytraining/Adam/Variable_94*
T0*,
_class"
 loc:@training/Adam/Variable_94*
_output_shapes
:
p
&training/Adam/zeros_95/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_95/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_95Fill&training/Adam/zeros_95/shape_as_tensortraining/Adam/zeros_95/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_95
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_95/AssignAssigntraining/Adam/Variable_95training/Adam/zeros_95*
T0*,
_class"
 loc:@training/Adam/Variable_95*
validate_shape(*
_output_shapes
:*
use_locking(

training/Adam/Variable_95/readIdentitytraining/Adam/Variable_95*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_95
p
&training/Adam/zeros_96/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_96/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_96Fill&training/Adam/zeros_96/shape_as_tensortraining/Adam/zeros_96/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_96
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_96/AssignAssigntraining/Adam/Variable_96training/Adam/zeros_96*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_96*
validate_shape(*
_output_shapes
:

training/Adam/Variable_96/readIdentitytraining/Adam/Variable_96*
T0*,
_class"
 loc:@training/Adam/Variable_96*
_output_shapes
:
p
&training/Adam/zeros_97/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_97/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_97Fill&training/Adam/zeros_97/shape_as_tensortraining/Adam/zeros_97/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_97
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_97/AssignAssigntraining/Adam/Variable_97training/Adam/zeros_97*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_97*
validate_shape(

training/Adam/Variable_97/readIdentitytraining/Adam/Variable_97*
T0*,
_class"
 loc:@training/Adam/Variable_97*
_output_shapes
:
p
&training/Adam/zeros_98/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_98/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_98Fill&training/Adam/zeros_98/shape_as_tensortraining/Adam/zeros_98/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_98
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_98/AssignAssigntraining/Adam/Variable_98training/Adam/zeros_98*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_98*
validate_shape(

training/Adam/Variable_98/readIdentitytraining/Adam/Variable_98*,
_class"
 loc:@training/Adam/Variable_98*
_output_shapes
:*
T0
p
&training/Adam/zeros_99/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_99/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_99Fill&training/Adam/zeros_99/shape_as_tensortraining/Adam/zeros_99/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_99
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ů
 training/Adam/Variable_99/AssignAssigntraining/Adam/Variable_99training/Adam/zeros_99*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_99*
validate_shape(

training/Adam/Variable_99/readIdentitytraining/Adam/Variable_99*,
_class"
 loc:@training/Adam/Variable_99*
_output_shapes
:*
T0
q
'training/Adam/zeros_100/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
b
training/Adam/zeros_100/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_100Fill'training/Adam/zeros_100/shape_as_tensortraining/Adam/zeros_100/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_100
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ý
!training/Adam/Variable_100/AssignAssigntraining/Adam/Variable_100training/Adam/zeros_100*-
_class#
!loc:@training/Adam/Variable_100*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

training/Adam/Variable_100/readIdentitytraining/Adam/Variable_100*
_output_shapes
:*
T0*-
_class#
!loc:@training/Adam/Variable_100
q
'training/Adam/zeros_101/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_101/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_101Fill'training/Adam/zeros_101/shape_as_tensortraining/Adam/zeros_101/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_101
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ý
!training/Adam/Variable_101/AssignAssigntraining/Adam/Variable_101training/Adam/zeros_101*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_101

training/Adam/Variable_101/readIdentitytraining/Adam/Variable_101*
_output_shapes
:*
T0*-
_class#
!loc:@training/Adam/Variable_101
q
'training/Adam/zeros_102/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_102/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_102Fill'training/Adam/zeros_102/shape_as_tensortraining/Adam/zeros_102/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_102
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ý
!training/Adam/Variable_102/AssignAssigntraining/Adam/Variable_102training/Adam/zeros_102*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_102*
validate_shape(*
_output_shapes
:

training/Adam/Variable_102/readIdentitytraining/Adam/Variable_102*-
_class#
!loc:@training/Adam/Variable_102*
_output_shapes
:*
T0
q
'training/Adam/zeros_103/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
b
training/Adam/zeros_103/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_103Fill'training/Adam/zeros_103/shape_as_tensortraining/Adam/zeros_103/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_103
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ý
!training/Adam/Variable_103/AssignAssigntraining/Adam/Variable_103training/Adam/zeros_103*
T0*-
_class#
!loc:@training/Adam/Variable_103*
validate_shape(*
_output_shapes
:*
use_locking(

training/Adam/Variable_103/readIdentitytraining/Adam/Variable_103*
T0*-
_class#
!loc:@training/Adam/Variable_103*
_output_shapes
:
q
'training/Adam/zeros_104/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
b
training/Adam/zeros_104/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_104Fill'training/Adam/zeros_104/shape_as_tensortraining/Adam/zeros_104/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_104
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ý
!training/Adam/Variable_104/AssignAssigntraining/Adam/Variable_104training/Adam/zeros_104*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_104*
validate_shape(*
_output_shapes
:

training/Adam/Variable_104/readIdentitytraining/Adam/Variable_104*
_output_shapes
:*
T0*-
_class#
!loc:@training/Adam/Variable_104
q
'training/Adam/zeros_105/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_105/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_105Fill'training/Adam/zeros_105/shape_as_tensortraining/Adam/zeros_105/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_105
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ý
!training/Adam/Variable_105/AssignAssigntraining/Adam/Variable_105training/Adam/zeros_105*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_105*
validate_shape(*
_output_shapes
:

training/Adam/Variable_105/readIdentitytraining/Adam/Variable_105*
T0*-
_class#
!loc:@training/Adam/Variable_105*
_output_shapes
:
q
'training/Adam/zeros_106/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_106/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_106Fill'training/Adam/zeros_106/shape_as_tensortraining/Adam/zeros_106/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_106
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ý
!training/Adam/Variable_106/AssignAssigntraining/Adam/Variable_106training/Adam/zeros_106*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_106*
validate_shape(*
_output_shapes
:

training/Adam/Variable_106/readIdentitytraining/Adam/Variable_106*
T0*-
_class#
!loc:@training/Adam/Variable_106*
_output_shapes
:
q
'training/Adam/zeros_107/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_107/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_107Fill'training/Adam/zeros_107/shape_as_tensortraining/Adam/zeros_107/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_107
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ý
!training/Adam/Variable_107/AssignAssigntraining/Adam/Variable_107training/Adam/zeros_107*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_107

training/Adam/Variable_107/readIdentitytraining/Adam/Variable_107*
T0*-
_class#
!loc:@training/Adam/Variable_107*
_output_shapes
:
q
'training/Adam/zeros_108/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_108/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_108Fill'training/Adam/zeros_108/shape_as_tensortraining/Adam/zeros_108/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_108
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ý
!training/Adam/Variable_108/AssignAssigntraining/Adam/Variable_108training/Adam/zeros_108*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_108*
validate_shape(*
_output_shapes
:

training/Adam/Variable_108/readIdentitytraining/Adam/Variable_108*-
_class#
!loc:@training/Adam/Variable_108*
_output_shapes
:*
T0
q
'training/Adam/zeros_109/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_109/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_109Fill'training/Adam/zeros_109/shape_as_tensortraining/Adam/zeros_109/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_109
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ý
!training/Adam/Variable_109/AssignAssigntraining/Adam/Variable_109training/Adam/zeros_109*
T0*-
_class#
!loc:@training/Adam/Variable_109*
validate_shape(*
_output_shapes
:*
use_locking(

training/Adam/Variable_109/readIdentitytraining/Adam/Variable_109*
T0*-
_class#
!loc:@training/Adam/Variable_109*
_output_shapes
:
q
'training/Adam/zeros_110/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_110/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_110Fill'training/Adam/zeros_110/shape_as_tensortraining/Adam/zeros_110/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_110
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ý
!training/Adam/Variable_110/AssignAssigntraining/Adam/Variable_110training/Adam/zeros_110*
T0*-
_class#
!loc:@training/Adam/Variable_110*
validate_shape(*
_output_shapes
:*
use_locking(

training/Adam/Variable_110/readIdentitytraining/Adam/Variable_110*
T0*-
_class#
!loc:@training/Adam/Variable_110*
_output_shapes
:
q
'training/Adam/zeros_111/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_111/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_111Fill'training/Adam/zeros_111/shape_as_tensortraining/Adam/zeros_111/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_111
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ý
!training/Adam/Variable_111/AssignAssigntraining/Adam/Variable_111training/Adam/zeros_111*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_111*
validate_shape(

training/Adam/Variable_111/readIdentitytraining/Adam/Variable_111*
T0*-
_class#
!loc:@training/Adam/Variable_111*
_output_shapes
:
q
'training/Adam/zeros_112/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
b
training/Adam/zeros_112/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_112Fill'training/Adam/zeros_112/shape_as_tensortraining/Adam/zeros_112/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_112
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ý
!training/Adam/Variable_112/AssignAssigntraining/Adam/Variable_112training/Adam/zeros_112*
T0*-
_class#
!loc:@training/Adam/Variable_112*
validate_shape(*
_output_shapes
:*
use_locking(

training/Adam/Variable_112/readIdentitytraining/Adam/Variable_112*
T0*-
_class#
!loc:@training/Adam/Variable_112*
_output_shapes
:
q
'training/Adam/zeros_113/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_113/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_113Fill'training/Adam/zeros_113/shape_as_tensortraining/Adam/zeros_113/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_113
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ý
!training/Adam/Variable_113/AssignAssigntraining/Adam/Variable_113training/Adam/zeros_113*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_113*
validate_shape(

training/Adam/Variable_113/readIdentitytraining/Adam/Variable_113*
_output_shapes
:*
T0*-
_class#
!loc:@training/Adam/Variable_113
q
'training/Adam/zeros_114/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_114/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_114Fill'training/Adam/zeros_114/shape_as_tensortraining/Adam/zeros_114/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_114
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Ý
!training/Adam/Variable_114/AssignAssigntraining/Adam/Variable_114training/Adam/zeros_114*-
_class#
!loc:@training/Adam/Variable_114*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

training/Adam/Variable_114/readIdentitytraining/Adam/Variable_114*
_output_shapes
:*
T0*-
_class#
!loc:@training/Adam/Variable_114
q
'training/Adam/zeros_115/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_115/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_115Fill'training/Adam/zeros_115/shape_as_tensortraining/Adam/zeros_115/Const*

index_type0*
_output_shapes
:*
T0

training/Adam/Variable_115
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ý
!training/Adam/Variable_115/AssignAssigntraining/Adam/Variable_115training/Adam/zeros_115*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_115*
validate_shape(*
_output_shapes
:

training/Adam/Variable_115/readIdentitytraining/Adam/Variable_115*
T0*-
_class#
!loc:@training/Adam/Variable_115*
_output_shapes
:
q
'training/Adam/zeros_116/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_116/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_116Fill'training/Adam/zeros_116/shape_as_tensortraining/Adam/zeros_116/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_116
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ý
!training/Adam/Variable_116/AssignAssigntraining/Adam/Variable_116training/Adam/zeros_116*
T0*-
_class#
!loc:@training/Adam/Variable_116*
validate_shape(*
_output_shapes
:*
use_locking(

training/Adam/Variable_116/readIdentitytraining/Adam/Variable_116*
T0*-
_class#
!loc:@training/Adam/Variable_116*
_output_shapes
:
q
'training/Adam/zeros_117/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
b
training/Adam/zeros_117/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_117Fill'training/Adam/zeros_117/shape_as_tensortraining/Adam/zeros_117/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_117
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ý
!training/Adam/Variable_117/AssignAssigntraining/Adam/Variable_117training/Adam/zeros_117*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_117*
validate_shape(

training/Adam/Variable_117/readIdentitytraining/Adam/Variable_117*
_output_shapes
:*
T0*-
_class#
!loc:@training/Adam/Variable_117
q
'training/Adam/zeros_118/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_118/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/zeros_118Fill'training/Adam/zeros_118/shape_as_tensortraining/Adam/zeros_118/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_118
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0
Ý
!training/Adam/Variable_118/AssignAssigntraining/Adam/Variable_118training/Adam/zeros_118*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_118*
validate_shape(*
_output_shapes
:

training/Adam/Variable_118/readIdentitytraining/Adam/Variable_118*
T0*-
_class#
!loc:@training/Adam/Variable_118*
_output_shapes
:
q
'training/Adam/zeros_119/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
b
training/Adam/zeros_119/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_119Fill'training/Adam/zeros_119/shape_as_tensortraining/Adam/zeros_119/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_119
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ý
!training/Adam/Variable_119/AssignAssigntraining/Adam/Variable_119training/Adam/zeros_119*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_119*
validate_shape(*
_output_shapes
:

training/Adam/Variable_119/readIdentitytraining/Adam/Variable_119*
T0*-
_class#
!loc:@training/Adam/Variable_119*
_output_shapes
:
z
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*&
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 
¨
training/Adam/mul_2Multraining/Adam/sub_2Ftraining/Adam/gradients/conv2d_1/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
u
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*&
_output_shapes
: 
}
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_40/read*&
_output_shapes
: *
T0
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/SquareSquareFtraining/Adam/gradients/conv2d_1/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
: *
T0
v
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*&
_output_shapes
: 
u
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*&
_output_shapes
: *
T0
s
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*&
_output_shapes
: 
Z
training/Adam/Const_2Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_3*&
_output_shapes
: *
T0

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_2*
T0*&
_output_shapes
: 
l
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*&
_output_shapes
: 
Z
training/Adam/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
x
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*&
_output_shapes
: *
T0
}
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*&
_output_shapes
: 
z
training/Adam/sub_4Subconv2d_1/kernel/readtraining/Adam/truediv_1*&
_output_shapes
: *
T0
Đ
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*&
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(
Ř
training/Adam/Assign_1Assigntraining/Adam/Variable_40training/Adam/add_2*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_40*
validate_shape(*&
_output_shapes
: 
Ä
training/Adam/Assign_2Assignconv2d_1/kerneltraining/Adam/sub_4*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_59training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
: 
q
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_41/read*
T0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_1Square9training/Adam/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
: 
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
: 
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes
: *
T0
Z
training/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_5Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_5*
T0*
_output_shapes
: 

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_4*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
: 
Z
training/Adam/add_6/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
: 
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
: 
l
training/Adam/sub_7Subconv2d_1/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes
: 
Ę
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
Ě
training/Adam/Assign_4Assigntraining/Adam/Variable_41training/Adam/add_5*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_41*
validate_shape(
´
training/Adam/Assign_5Assignconv2d_1/biastraining/Adam/sub_7*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
q
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
_output_shapes
: *
T0
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 
v
training/Adam/mul_12Multraining/Adam/sub_8training/Adam/gradients/AddN_31*
T0*
_output_shapes
: 
k
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes
: *
T0
r
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_42/read*
T0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
_output_shapes
: *
T0
f
training/Adam/Square_2Squaretraining/Adam/gradients/AddN_31*
T0*
_output_shapes
: 
m
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
: 
k
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
: 
h
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
_output_shapes
: *
T0
Z
training/Adam/Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_7Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_7*
T0*
_output_shapes
: 

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_6*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
: 
Z
training/Adam/add_9/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
l
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
: 
r
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes
: *
T0
{
training/Adam/sub_10Sub batch_normalization_1/gamma/readtraining/Adam/truediv_3*
T0*
_output_shapes
: 
Ę
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(
Ě
training/Adam/Assign_7Assigntraining/Adam/Variable_42training/Adam/add_8*
T0*,
_class"
 loc:@training/Adam/Variable_42*
validate_shape(*
_output_shapes
: *
use_locking(
Ń
training/Adam/Assign_8Assignbatch_normalization_1/gammatraining/Adam/sub_10*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
: 
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
_output_shapes
: *
T0
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
_output_shapes
: *
T0
w
training/Adam/mul_17Multraining/Adam/sub_11training/Adam/gradients/AddN_32*
_output_shapes
: *
T0
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
: 
r
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_43/read*
T0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
_output_shapes
: *
T0
f
training/Adam/Square_3Squaretraining/Adam/gradients/AddN_32*
T0*
_output_shapes
: 
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
: 
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
: 
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_9Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_9*
T0*
_output_shapes
: 

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_8*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
: 
[
training/Adam/add_12/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
: *
T0
z
training/Adam/sub_13Subbatch_normalization_1/beta/readtraining/Adam/truediv_4*
T0*
_output_shapes
: 
Ë
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
: 
Î
training/Adam/Assign_10Assigntraining/Adam/Variable_43training/Adam/add_11*
T0*,
_class"
 loc:@training/Adam/Variable_43*
validate_shape(*
_output_shapes
: *
use_locking(
Đ
training/Adam/Assign_11Assignbatch_normalization_1/betatraining/Adam/sub_13*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
: 
}
training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*&
_output_shapes
:  *
T0
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ş
training/Adam/mul_22Multraining/Adam/sub_14Ftraining/Adam/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:  *
T0
x
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*&
_output_shapes
:  
~
training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_44/read*
T0*&
_output_shapes
:  
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_4SquareFtraining/Adam/gradients/conv2d_2/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
:  *
T0
z
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*&
_output_shapes
:  
x
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*&
_output_shapes
:  
u
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*&
_output_shapes
:  *
T0
[
training/Adam/Const_10Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_11Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_11*&
_output_shapes
:  *
T0

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_10*&
_output_shapes
:  *
T0
l
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*&
_output_shapes
:  
[
training/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
z
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*&
_output_shapes
:  

training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*&
_output_shapes
:  *
T0
{
training/Adam/sub_16Subconv2d_2/kernel/readtraining/Adam/truediv_5*
T0*&
_output_shapes
:  
Ř
training/Adam/Assign_12Assigntraining/Adam/Variable_4training/Adam/add_13*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*&
_output_shapes
:  
Ú
training/Adam/Assign_13Assigntraining/Adam/Variable_44training/Adam/add_14*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_44
Ć
training/Adam/Assign_14Assignconv2d_2/kerneltraining/Adam/sub_16*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:  
q
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_27Multraining/Adam/sub_179training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
_output_shapes
: *
T0
r
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_45/read*
T0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_5Square9training/Adam/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
: *
T0
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
_output_shapes
: *
T0
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes
: *
T0
[
training/Adam/Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_13Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_13*
T0*
_output_shapes
: 

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_12*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
: 
[
training/Adam/add_18/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
: 
m
training/Adam/sub_19Subconv2d_2/bias/readtraining/Adam/truediv_6*
T0*
_output_shapes
: 
Ě
training/Adam/Assign_15Assigntraining/Adam/Variable_5training/Adam/add_16*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
Î
training/Adam/Assign_16Assigntraining/Adam/Variable_45training/Adam/add_17*
T0*,
_class"
 loc:@training/Adam/Variable_45*
validate_shape(*
_output_shapes
: *
use_locking(
ś
training/Adam/Assign_17Assignconv2d_2/biastraining/Adam/sub_19*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
q
training/Adam/mul_31MulAdam/beta_1/readtraining/Adam/Variable_6/read*
T0*
_output_shapes
: 
[
training/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_20Subtraining/Adam/sub_20/xAdam/beta_1/read*
T0*
_output_shapes
: 
w
training/Adam/mul_32Multraining/Adam/sub_20training/Adam/gradients/AddN_28*
_output_shapes
: *
T0
l
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
_output_shapes
: *
T0
r
training/Adam/mul_33MulAdam/beta_2/readtraining/Adam/Variable_46/read*
_output_shapes
: *
T0
[
training/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_21Subtraining/Adam/sub_21/xAdam/beta_2/read*
_output_shapes
: *
T0
f
training/Adam/Square_6Squaretraining/Adam/gradients/AddN_28*
_output_shapes
: *
T0
n
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*
_output_shapes
: 
l
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*
_output_shapes
: 
i
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
_output_shapes
: *
T0
[
training/Adam/Const_14Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_15Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_15*
T0*
_output_shapes
: 

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_14*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
_output_shapes
: *
T0
[
training/Adam/add_21/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
_output_shapes
: *
T0
s
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*
_output_shapes
: 
{
training/Adam/sub_22Sub batch_normalization_2/gamma/readtraining/Adam/truediv_7*
_output_shapes
: *
T0
Ě
training/Adam/Assign_18Assigntraining/Adam/Variable_6training/Adam/add_19*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
: 
Î
training/Adam/Assign_19Assigntraining/Adam/Variable_46training/Adam/add_20*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_46*
validate_shape(*
_output_shapes
: 
Ň
training/Adam/Assign_20Assignbatch_normalization_2/gammatraining/Adam/sub_22*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
q
training/Adam/mul_36MulAdam/beta_1/readtraining/Adam/Variable_7/read*
_output_shapes
: *
T0
[
training/Adam/sub_23/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_23Subtraining/Adam/sub_23/xAdam/beta_1/read*
T0*
_output_shapes
: 
w
training/Adam/mul_37Multraining/Adam/sub_23training/Adam/gradients/AddN_29*
T0*
_output_shapes
: 
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
: *
T0
r
training/Adam/mul_38MulAdam/beta_2/readtraining/Adam/Variable_47/read*
T0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_24Subtraining/Adam/sub_24/xAdam/beta_2/read*
T0*
_output_shapes
: 
f
training/Adam/Square_7Squaretraining/Adam/gradients/AddN_29*
T0*
_output_shapes
: 
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
: 
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes
: 
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
_output_shapes
: *
T0
[
training/Adam/Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_17Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_17*
T0*
_output_shapes
: 

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_16*
_output_shapes
: *
T0
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
: 
[
training/Adam/add_24/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes
: 
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
_output_shapes
: *
T0
z
training/Adam/sub_25Subbatch_normalization_2/beta/readtraining/Adam/truediv_8*
T0*
_output_shapes
: 
Ě
training/Adam/Assign_21Assigntraining/Adam/Variable_7training/Adam/add_22*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(
Î
training/Adam/Assign_22Assigntraining/Adam/Variable_47training/Adam/add_23*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_47
Đ
training/Adam/Assign_23Assignbatch_normalization_2/betatraining/Adam/sub_25*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
}
training/Adam/mul_41MulAdam/beta_1/readtraining/Adam/Variable_8/read*&
_output_shapes
: @*
T0
[
training/Adam/sub_26/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_26Subtraining/Adam/sub_26/xAdam/beta_1/read*
_output_shapes
: *
T0
Ş
training/Adam/mul_42Multraining/Adam/sub_26Ftraining/Adam/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: @
x
training/Adam/add_25Addtraining/Adam/mul_41training/Adam/mul_42*
T0*&
_output_shapes
: @
~
training/Adam/mul_43MulAdam/beta_2/readtraining/Adam/Variable_48/read*&
_output_shapes
: @*
T0
[
training/Adam/sub_27/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_27Subtraining/Adam/sub_27/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_8SquareFtraining/Adam/gradients/conv2d_3/convolution_grad/Conv2DBackpropFilter*&
_output_shapes
: @*
T0
z
training/Adam/mul_44Multraining/Adam/sub_27training/Adam/Square_8*
T0*&
_output_shapes
: @
x
training/Adam/add_26Addtraining/Adam/mul_43training/Adam/mul_44*&
_output_shapes
: @*
T0
u
training/Adam/mul_45Multraining/Adam/multraining/Adam/add_25*
T0*&
_output_shapes
: @
[
training/Adam/Const_18Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_19Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_9/MinimumMinimumtraining/Adam/add_26training/Adam/Const_19*
T0*&
_output_shapes
: @

training/Adam/clip_by_value_9Maximum%training/Adam/clip_by_value_9/Minimumtraining/Adam/Const_18*&
_output_shapes
: @*
T0
l
training/Adam/Sqrt_9Sqrttraining/Adam/clip_by_value_9*
T0*&
_output_shapes
: @
[
training/Adam/add_27/yConst*
_output_shapes
: *
valueB
 *żÖ3*
dtype0
z
training/Adam/add_27Addtraining/Adam/Sqrt_9training/Adam/add_27/y*
T0*&
_output_shapes
: @

training/Adam/truediv_9RealDivtraining/Adam/mul_45training/Adam/add_27*
T0*&
_output_shapes
: @
{
training/Adam/sub_28Subconv2d_3/kernel/readtraining/Adam/truediv_9*
T0*&
_output_shapes
: @
Ř
training/Adam/Assign_24Assigntraining/Adam/Variable_8training/Adam/add_25*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*&
_output_shapes
: @
Ú
training/Adam/Assign_25Assigntraining/Adam/Variable_48training/Adam/add_26*
T0*,
_class"
 loc:@training/Adam/Variable_48*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ć
training/Adam/Assign_26Assignconv2d_3/kerneltraining/Adam/sub_28*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0
q
training/Adam/mul_46MulAdam/beta_1/readtraining/Adam/Variable_9/read*
T0*
_output_shapes
:@
[
training/Adam/sub_29/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_29Subtraining/Adam/sub_29/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_47Multraining/Adam/sub_299training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/add_28Addtraining/Adam/mul_46training/Adam/mul_47*
_output_shapes
:@*
T0
r
training/Adam/mul_48MulAdam/beta_2/readtraining/Adam/Variable_49/read*
T0*
_output_shapes
:@
[
training/Adam/sub_30/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_30Subtraining/Adam/sub_30/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_9Square9training/Adam/gradients/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
n
training/Adam/mul_49Multraining/Adam/sub_30training/Adam/Square_9*
T0*
_output_shapes
:@
l
training/Adam/add_29Addtraining/Adam/mul_48training/Adam/mul_49*
T0*
_output_shapes
:@
i
training/Adam/mul_50Multraining/Adam/multraining/Adam/add_28*
T0*
_output_shapes
:@
[
training/Adam/Const_20Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_21Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_10/MinimumMinimumtraining/Adam/add_29training/Adam/Const_21*
T0*
_output_shapes
:@

training/Adam/clip_by_value_10Maximum&training/Adam/clip_by_value_10/Minimumtraining/Adam/Const_20*
_output_shapes
:@*
T0
b
training/Adam/Sqrt_10Sqrttraining/Adam/clip_by_value_10*
_output_shapes
:@*
T0
[
training/Adam/add_30/yConst*
_output_shapes
: *
valueB
 *żÖ3*
dtype0
o
training/Adam/add_30Addtraining/Adam/Sqrt_10training/Adam/add_30/y*
T0*
_output_shapes
:@
t
training/Adam/truediv_10RealDivtraining/Adam/mul_50training/Adam/add_30*
_output_shapes
:@*
T0
n
training/Adam/sub_31Subconv2d_3/bias/readtraining/Adam/truediv_10*
T0*
_output_shapes
:@
Ě
training/Adam/Assign_27Assigntraining/Adam/Variable_9training/Adam/add_28*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:@
Î
training/Adam/Assign_28Assigntraining/Adam/Variable_49training/Adam/add_29*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_49*
validate_shape(*
_output_shapes
:@
ś
training/Adam/Assign_29Assignconv2d_3/biastraining/Adam/sub_31*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
r
training/Adam/mul_51MulAdam/beta_1/readtraining/Adam/Variable_10/read*
T0*
_output_shapes
:@
[
training/Adam/sub_32/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_32Subtraining/Adam/sub_32/xAdam/beta_1/read*
T0*
_output_shapes
: 
w
training/Adam/mul_52Multraining/Adam/sub_32training/Adam/gradients/AddN_25*
_output_shapes
:@*
T0
l
training/Adam/add_31Addtraining/Adam/mul_51training/Adam/mul_52*
_output_shapes
:@*
T0
r
training/Adam/mul_53MulAdam/beta_2/readtraining/Adam/Variable_50/read*
T0*
_output_shapes
:@
[
training/Adam/sub_33/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_33Subtraining/Adam/sub_33/xAdam/beta_2/read*
T0*
_output_shapes
: 
g
training/Adam/Square_10Squaretraining/Adam/gradients/AddN_25*
T0*
_output_shapes
:@
o
training/Adam/mul_54Multraining/Adam/sub_33training/Adam/Square_10*
T0*
_output_shapes
:@
l
training/Adam/add_32Addtraining/Adam/mul_53training/Adam/mul_54*
T0*
_output_shapes
:@
i
training/Adam/mul_55Multraining/Adam/multraining/Adam/add_31*
T0*
_output_shapes
:@
[
training/Adam/Const_22Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_23Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_11/MinimumMinimumtraining/Adam/add_32training/Adam/Const_23*
_output_shapes
:@*
T0

training/Adam/clip_by_value_11Maximum&training/Adam/clip_by_value_11/Minimumtraining/Adam/Const_22*
T0*
_output_shapes
:@
b
training/Adam/Sqrt_11Sqrttraining/Adam/clip_by_value_11*
T0*
_output_shapes
:@
[
training/Adam/add_33/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_33Addtraining/Adam/Sqrt_11training/Adam/add_33/y*
T0*
_output_shapes
:@
t
training/Adam/truediv_11RealDivtraining/Adam/mul_55training/Adam/add_33*
T0*
_output_shapes
:@
|
training/Adam/sub_34Sub batch_normalization_3/gamma/readtraining/Adam/truediv_11*
T0*
_output_shapes
:@
Î
training/Adam/Assign_30Assigntraining/Adam/Variable_10training/Adam/add_31*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:@
Î
training/Adam/Assign_31Assigntraining/Adam/Variable_50training/Adam/add_32*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_50*
validate_shape(
Ň
training/Adam/Assign_32Assignbatch_normalization_3/gammatraining/Adam/sub_34*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma
r
training/Adam/mul_56MulAdam/beta_1/readtraining/Adam/Variable_11/read*
T0*
_output_shapes
:@
[
training/Adam/sub_35/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_35Subtraining/Adam/sub_35/xAdam/beta_1/read*
_output_shapes
: *
T0
w
training/Adam/mul_57Multraining/Adam/sub_35training/Adam/gradients/AddN_26*
_output_shapes
:@*
T0
l
training/Adam/add_34Addtraining/Adam/mul_56training/Adam/mul_57*
_output_shapes
:@*
T0
r
training/Adam/mul_58MulAdam/beta_2/readtraining/Adam/Variable_51/read*
_output_shapes
:@*
T0
[
training/Adam/sub_36/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_36Subtraining/Adam/sub_36/xAdam/beta_2/read*
T0*
_output_shapes
: 
g
training/Adam/Square_11Squaretraining/Adam/gradients/AddN_26*
T0*
_output_shapes
:@
o
training/Adam/mul_59Multraining/Adam/sub_36training/Adam/Square_11*
_output_shapes
:@*
T0
l
training/Adam/add_35Addtraining/Adam/mul_58training/Adam/mul_59*
T0*
_output_shapes
:@
i
training/Adam/mul_60Multraining/Adam/multraining/Adam/add_34*
_output_shapes
:@*
T0
[
training/Adam/Const_24Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_25Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_12/MinimumMinimumtraining/Adam/add_35training/Adam/Const_25*
T0*
_output_shapes
:@

training/Adam/clip_by_value_12Maximum&training/Adam/clip_by_value_12/Minimumtraining/Adam/Const_24*
T0*
_output_shapes
:@
b
training/Adam/Sqrt_12Sqrttraining/Adam/clip_by_value_12*
_output_shapes
:@*
T0
[
training/Adam/add_36/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_36Addtraining/Adam/Sqrt_12training/Adam/add_36/y*
T0*
_output_shapes
:@
t
training/Adam/truediv_12RealDivtraining/Adam/mul_60training/Adam/add_36*
_output_shapes
:@*
T0
{
training/Adam/sub_37Subbatch_normalization_3/beta/readtraining/Adam/truediv_12*
T0*
_output_shapes
:@
Î
training/Adam/Assign_33Assigntraining/Adam/Variable_11training/Adam/add_34*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(
Î
training/Adam/Assign_34Assigntraining/Adam/Variable_51training/Adam/add_35*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_51*
validate_shape(*
_output_shapes
:@
Đ
training/Adam/Assign_35Assignbatch_normalization_3/betatraining/Adam/sub_37*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes
:@
~
training/Adam/mul_61MulAdam/beta_1/readtraining/Adam/Variable_12/read*&
_output_shapes
:@@*
T0
[
training/Adam/sub_38/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_38Subtraining/Adam/sub_38/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ş
training/Adam/mul_62Multraining/Adam/sub_38Ftraining/Adam/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@@
x
training/Adam/add_37Addtraining/Adam/mul_61training/Adam/mul_62*
T0*&
_output_shapes
:@@
~
training/Adam/mul_63MulAdam/beta_2/readtraining/Adam/Variable_52/read*&
_output_shapes
:@@*
T0
[
training/Adam/sub_39/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_39Subtraining/Adam/sub_39/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_12SquareFtraining/Adam/gradients/conv2d_4/convolution_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:@@
{
training/Adam/mul_64Multraining/Adam/sub_39training/Adam/Square_12*
T0*&
_output_shapes
:@@
x
training/Adam/add_38Addtraining/Adam/mul_63training/Adam/mul_64*
T0*&
_output_shapes
:@@
u
training/Adam/mul_65Multraining/Adam/multraining/Adam/add_37*
T0*&
_output_shapes
:@@
[
training/Adam/Const_26Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_27Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_13/MinimumMinimumtraining/Adam/add_38training/Adam/Const_27*
T0*&
_output_shapes
:@@

training/Adam/clip_by_value_13Maximum&training/Adam/clip_by_value_13/Minimumtraining/Adam/Const_26*
T0*&
_output_shapes
:@@
n
training/Adam/Sqrt_13Sqrttraining/Adam/clip_by_value_13*&
_output_shapes
:@@*
T0
[
training/Adam/add_39/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
{
training/Adam/add_39Addtraining/Adam/Sqrt_13training/Adam/add_39/y*
T0*&
_output_shapes
:@@

training/Adam/truediv_13RealDivtraining/Adam/mul_65training/Adam/add_39*
T0*&
_output_shapes
:@@
|
training/Adam/sub_40Subconv2d_4/kernel/readtraining/Adam/truediv_13*&
_output_shapes
:@@*
T0
Ú
training/Adam/Assign_36Assigntraining/Adam/Variable_12training/Adam/add_37*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*&
_output_shapes
:@@
Ú
training/Adam/Assign_37Assigntraining/Adam/Variable_52training/Adam/add_38*,
_class"
 loc:@training/Adam/Variable_52*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0
Ć
training/Adam/Assign_38Assignconv2d_4/kerneltraining/Adam/sub_40*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:@@
r
training/Adam/mul_66MulAdam/beta_1/readtraining/Adam/Variable_13/read*
_output_shapes
:@*
T0
[
training/Adam/sub_41/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_41Subtraining/Adam/sub_41/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_67Multraining/Adam/sub_419training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
l
training/Adam/add_40Addtraining/Adam/mul_66training/Adam/mul_67*
T0*
_output_shapes
:@
r
training/Adam/mul_68MulAdam/beta_2/readtraining/Adam/Variable_53/read*
T0*
_output_shapes
:@
[
training/Adam/sub_42/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_42Subtraining/Adam/sub_42/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_13Square9training/Adam/gradients/conv2d_4/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
o
training/Adam/mul_69Multraining/Adam/sub_42training/Adam/Square_13*
_output_shapes
:@*
T0
l
training/Adam/add_41Addtraining/Adam/mul_68training/Adam/mul_69*
_output_shapes
:@*
T0
i
training/Adam/mul_70Multraining/Adam/multraining/Adam/add_40*
T0*
_output_shapes
:@
[
training/Adam/Const_28Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_29Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_14/MinimumMinimumtraining/Adam/add_41training/Adam/Const_29*
T0*
_output_shapes
:@

training/Adam/clip_by_value_14Maximum&training/Adam/clip_by_value_14/Minimumtraining/Adam/Const_28*
_output_shapes
:@*
T0
b
training/Adam/Sqrt_14Sqrttraining/Adam/clip_by_value_14*
T0*
_output_shapes
:@
[
training/Adam/add_42/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_42Addtraining/Adam/Sqrt_14training/Adam/add_42/y*
T0*
_output_shapes
:@
t
training/Adam/truediv_14RealDivtraining/Adam/mul_70training/Adam/add_42*
T0*
_output_shapes
:@
n
training/Adam/sub_43Subconv2d_4/bias/readtraining/Adam/truediv_14*
T0*
_output_shapes
:@
Î
training/Adam/Assign_39Assigntraining/Adam/Variable_13training/Adam/add_40*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(
Î
training/Adam/Assign_40Assigntraining/Adam/Variable_53training/Adam/add_41*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_53*
validate_shape(
ś
training/Adam/Assign_41Assignconv2d_4/biastraining/Adam/sub_43*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(
r
training/Adam/mul_71MulAdam/beta_1/readtraining/Adam/Variable_14/read*
T0*
_output_shapes
:@
[
training/Adam/sub_44/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_44Subtraining/Adam/sub_44/xAdam/beta_1/read*
T0*
_output_shapes
: 
w
training/Adam/mul_72Multraining/Adam/sub_44training/Adam/gradients/AddN_22*
T0*
_output_shapes
:@
l
training/Adam/add_43Addtraining/Adam/mul_71training/Adam/mul_72*
T0*
_output_shapes
:@
r
training/Adam/mul_73MulAdam/beta_2/readtraining/Adam/Variable_54/read*
T0*
_output_shapes
:@
[
training/Adam/sub_45/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_45Subtraining/Adam/sub_45/xAdam/beta_2/read*
T0*
_output_shapes
: 
g
training/Adam/Square_14Squaretraining/Adam/gradients/AddN_22*
T0*
_output_shapes
:@
o
training/Adam/mul_74Multraining/Adam/sub_45training/Adam/Square_14*
T0*
_output_shapes
:@
l
training/Adam/add_44Addtraining/Adam/mul_73training/Adam/mul_74*
T0*
_output_shapes
:@
i
training/Adam/mul_75Multraining/Adam/multraining/Adam/add_43*
_output_shapes
:@*
T0
[
training/Adam/Const_30Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_31Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_15/MinimumMinimumtraining/Adam/add_44training/Adam/Const_31*
T0*
_output_shapes
:@

training/Adam/clip_by_value_15Maximum&training/Adam/clip_by_value_15/Minimumtraining/Adam/Const_30*
T0*
_output_shapes
:@
b
training/Adam/Sqrt_15Sqrttraining/Adam/clip_by_value_15*
T0*
_output_shapes
:@
[
training/Adam/add_45/yConst*
_output_shapes
: *
valueB
 *żÖ3*
dtype0
o
training/Adam/add_45Addtraining/Adam/Sqrt_15training/Adam/add_45/y*
_output_shapes
:@*
T0
t
training/Adam/truediv_15RealDivtraining/Adam/mul_75training/Adam/add_45*
T0*
_output_shapes
:@
|
training/Adam/sub_46Sub batch_normalization_4/gamma/readtraining/Adam/truediv_15*
T0*
_output_shapes
:@
Î
training/Adam/Assign_42Assigntraining/Adam/Variable_14training/Adam/add_43*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14
Î
training/Adam/Assign_43Assigntraining/Adam/Variable_54training/Adam/add_44*,
_class"
 loc:@training/Adam/Variable_54*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ň
training/Adam/Assign_44Assignbatch_normalization_4/gammatraining/Adam/sub_46*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes
:@
r
training/Adam/mul_76MulAdam/beta_1/readtraining/Adam/Variable_15/read*
T0*
_output_shapes
:@
[
training/Adam/sub_47/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_47Subtraining/Adam/sub_47/xAdam/beta_1/read*
T0*
_output_shapes
: 
w
training/Adam/mul_77Multraining/Adam/sub_47training/Adam/gradients/AddN_23*
T0*
_output_shapes
:@
l
training/Adam/add_46Addtraining/Adam/mul_76training/Adam/mul_77*
T0*
_output_shapes
:@
r
training/Adam/mul_78MulAdam/beta_2/readtraining/Adam/Variable_55/read*
_output_shapes
:@*
T0
[
training/Adam/sub_48/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_48Subtraining/Adam/sub_48/xAdam/beta_2/read*
T0*
_output_shapes
: 
g
training/Adam/Square_15Squaretraining/Adam/gradients/AddN_23*
T0*
_output_shapes
:@
o
training/Adam/mul_79Multraining/Adam/sub_48training/Adam/Square_15*
T0*
_output_shapes
:@
l
training/Adam/add_47Addtraining/Adam/mul_78training/Adam/mul_79*
_output_shapes
:@*
T0
i
training/Adam/mul_80Multraining/Adam/multraining/Adam/add_46*
T0*
_output_shapes
:@
[
training/Adam/Const_32Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_33Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_16/MinimumMinimumtraining/Adam/add_47training/Adam/Const_33*
T0*
_output_shapes
:@

training/Adam/clip_by_value_16Maximum&training/Adam/clip_by_value_16/Minimumtraining/Adam/Const_32*
_output_shapes
:@*
T0
b
training/Adam/Sqrt_16Sqrttraining/Adam/clip_by_value_16*
T0*
_output_shapes
:@
[
training/Adam/add_48/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_48Addtraining/Adam/Sqrt_16training/Adam/add_48/y*
T0*
_output_shapes
:@
t
training/Adam/truediv_16RealDivtraining/Adam/mul_80training/Adam/add_48*
T0*
_output_shapes
:@
{
training/Adam/sub_49Subbatch_normalization_4/beta/readtraining/Adam/truediv_16*
T0*
_output_shapes
:@
Î
training/Adam/Assign_45Assigntraining/Adam/Variable_15training/Adam/add_46*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
:@
Î
training/Adam/Assign_46Assigntraining/Adam/Variable_55training/Adam/add_47*
T0*,
_class"
 loc:@training/Adam/Variable_55*
validate_shape(*
_output_shapes
:@*
use_locking(
Đ
training/Adam/Assign_47Assignbatch_normalization_4/betatraining/Adam/sub_49*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

training/Adam/mul_81MulAdam/beta_1/readtraining/Adam/Variable_16/read*
T0*'
_output_shapes
:@
[
training/Adam/sub_50/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_50Subtraining/Adam/sub_50/xAdam/beta_1/read*
T0*
_output_shapes
: 
Ť
training/Adam/mul_82Multraining/Adam/sub_50Ftraining/Adam/gradients/conv2d_5/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
y
training/Adam/add_49Addtraining/Adam/mul_81training/Adam/mul_82*
T0*'
_output_shapes
:@

training/Adam/mul_83MulAdam/beta_2/readtraining/Adam/Variable_56/read*
T0*'
_output_shapes
:@
[
training/Adam/sub_51/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_51Subtraining/Adam/sub_51/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_16SquareFtraining/Adam/gradients/conv2d_5/convolution_grad/Conv2DBackpropFilter*
T0*'
_output_shapes
:@
|
training/Adam/mul_84Multraining/Adam/sub_51training/Adam/Square_16*
T0*'
_output_shapes
:@
y
training/Adam/add_50Addtraining/Adam/mul_83training/Adam/mul_84*
T0*'
_output_shapes
:@
v
training/Adam/mul_85Multraining/Adam/multraining/Adam/add_49*
T0*'
_output_shapes
:@
[
training/Adam/Const_34Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_35Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_17/MinimumMinimumtraining/Adam/add_50training/Adam/Const_35*
T0*'
_output_shapes
:@

training/Adam/clip_by_value_17Maximum&training/Adam/clip_by_value_17/Minimumtraining/Adam/Const_34*'
_output_shapes
:@*
T0
o
training/Adam/Sqrt_17Sqrttraining/Adam/clip_by_value_17*
T0*'
_output_shapes
:@
[
training/Adam/add_51/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
|
training/Adam/add_51Addtraining/Adam/Sqrt_17training/Adam/add_51/y*'
_output_shapes
:@*
T0

training/Adam/truediv_17RealDivtraining/Adam/mul_85training/Adam/add_51*
T0*'
_output_shapes
:@
}
training/Adam/sub_52Subconv2d_5/kernel/readtraining/Adam/truediv_17*
T0*'
_output_shapes
:@
Ű
training/Adam/Assign_48Assigntraining/Adam/Variable_16training/Adam/add_49*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*'
_output_shapes
:@
Ű
training/Adam/Assign_49Assigntraining/Adam/Variable_56training/Adam/add_50*
T0*,
_class"
 loc:@training/Adam/Variable_56*
validate_shape(*'
_output_shapes
:@*
use_locking(
Ç
training/Adam/Assign_50Assignconv2d_5/kerneltraining/Adam/sub_52*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:@
s
training/Adam/mul_86MulAdam/beta_1/readtraining/Adam/Variable_17/read*
T0*
_output_shapes	
:
[
training/Adam/sub_53/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_53Subtraining/Adam/sub_53/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_87Multraining/Adam/sub_539training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_52Addtraining/Adam/mul_86training/Adam/mul_87*
T0*
_output_shapes	
:
s
training/Adam/mul_88MulAdam/beta_2/readtraining/Adam/Variable_57/read*
T0*
_output_shapes	
:
[
training/Adam/sub_54/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_54Subtraining/Adam/sub_54/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_17Square9training/Adam/gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
p
training/Adam/mul_89Multraining/Adam/sub_54training/Adam/Square_17*
T0*
_output_shapes	
:
m
training/Adam/add_53Addtraining/Adam/mul_88training/Adam/mul_89*
T0*
_output_shapes	
:
j
training/Adam/mul_90Multraining/Adam/multraining/Adam/add_52*
T0*
_output_shapes	
:
[
training/Adam/Const_36Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_37Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_18/MinimumMinimumtraining/Adam/add_53training/Adam/Const_37*
T0*
_output_shapes	
:

training/Adam/clip_by_value_18Maximum&training/Adam/clip_by_value_18/Minimumtraining/Adam/Const_36*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_18Sqrttraining/Adam/clip_by_value_18*
T0*
_output_shapes	
:
[
training/Adam/add_54/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_54Addtraining/Adam/Sqrt_18training/Adam/add_54/y*
_output_shapes	
:*
T0
u
training/Adam/truediv_18RealDivtraining/Adam/mul_90training/Adam/add_54*
_output_shapes	
:*
T0
o
training/Adam/sub_55Subconv2d_5/bias/readtraining/Adam/truediv_18*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_51Assigntraining/Adam/Variable_17training/Adam/add_52*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17*
validate_shape(*
_output_shapes	
:
Ď
training/Adam/Assign_52Assigntraining/Adam/Variable_57training/Adam/add_53*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_57*
validate_shape(*
_output_shapes	
:
ˇ
training/Adam/Assign_53Assignconv2d_5/biastraining/Adam/sub_55*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(
s
training/Adam/mul_91MulAdam/beta_1/readtraining/Adam/Variable_18/read*
_output_shapes	
:*
T0
[
training/Adam/sub_56/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_56Subtraining/Adam/sub_56/xAdam/beta_1/read*
T0*
_output_shapes
: 
x
training/Adam/mul_92Multraining/Adam/sub_56training/Adam/gradients/AddN_19*
_output_shapes	
:*
T0
m
training/Adam/add_55Addtraining/Adam/mul_91training/Adam/mul_92*
T0*
_output_shapes	
:
s
training/Adam/mul_93MulAdam/beta_2/readtraining/Adam/Variable_58/read*
_output_shapes	
:*
T0
[
training/Adam/sub_57/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_57Subtraining/Adam/sub_57/xAdam/beta_2/read*
T0*
_output_shapes
: 
h
training/Adam/Square_18Squaretraining/Adam/gradients/AddN_19*
_output_shapes	
:*
T0
p
training/Adam/mul_94Multraining/Adam/sub_57training/Adam/Square_18*
_output_shapes	
:*
T0
m
training/Adam/add_56Addtraining/Adam/mul_93training/Adam/mul_94*
_output_shapes	
:*
T0
j
training/Adam/mul_95Multraining/Adam/multraining/Adam/add_55*
_output_shapes	
:*
T0
[
training/Adam/Const_38Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_39Const*
_output_shapes
: *
valueB
 *  *
dtype0

&training/Adam/clip_by_value_19/MinimumMinimumtraining/Adam/add_56training/Adam/Const_39*
T0*
_output_shapes	
:

training/Adam/clip_by_value_19Maximum&training/Adam/clip_by_value_19/Minimumtraining/Adam/Const_38*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_19Sqrttraining/Adam/clip_by_value_19*
_output_shapes	
:*
T0
[
training/Adam/add_57/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_57Addtraining/Adam/Sqrt_19training/Adam/add_57/y*
T0*
_output_shapes	
:
u
training/Adam/truediv_19RealDivtraining/Adam/mul_95training/Adam/add_57*
T0*
_output_shapes	
:
}
training/Adam/sub_58Sub batch_normalization_5/gamma/readtraining/Adam/truediv_19*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_54Assigntraining/Adam/Variable_18training/Adam/add_55*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes	
:
Ď
training/Adam/Assign_55Assigntraining/Adam/Variable_58training/Adam/add_56*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_58*
validate_shape(
Ó
training/Adam/Assign_56Assignbatch_normalization_5/gammatraining/Adam/sub_58*
_output_shapes	
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(
s
training/Adam/mul_96MulAdam/beta_1/readtraining/Adam/Variable_19/read*
T0*
_output_shapes	
:
[
training/Adam/sub_59/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_59Subtraining/Adam/sub_59/xAdam/beta_1/read*
T0*
_output_shapes
: 
x
training/Adam/mul_97Multraining/Adam/sub_59training/Adam/gradients/AddN_20*
_output_shapes	
:*
T0
m
training/Adam/add_58Addtraining/Adam/mul_96training/Adam/mul_97*
_output_shapes	
:*
T0
s
training/Adam/mul_98MulAdam/beta_2/readtraining/Adam/Variable_59/read*
T0*
_output_shapes	
:
[
training/Adam/sub_60/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_60Subtraining/Adam/sub_60/xAdam/beta_2/read*
T0*
_output_shapes
: 
h
training/Adam/Square_19Squaretraining/Adam/gradients/AddN_20*
_output_shapes	
:*
T0
p
training/Adam/mul_99Multraining/Adam/sub_60training/Adam/Square_19*
T0*
_output_shapes	
:
m
training/Adam/add_59Addtraining/Adam/mul_98training/Adam/mul_99*
_output_shapes	
:*
T0
k
training/Adam/mul_100Multraining/Adam/multraining/Adam/add_58*
_output_shapes	
:*
T0
[
training/Adam/Const_40Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_41Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_20/MinimumMinimumtraining/Adam/add_59training/Adam/Const_41*
_output_shapes	
:*
T0

training/Adam/clip_by_value_20Maximum&training/Adam/clip_by_value_20/Minimumtraining/Adam/Const_40*
_output_shapes	
:*
T0
c
training/Adam/Sqrt_20Sqrttraining/Adam/clip_by_value_20*
T0*
_output_shapes	
:
[
training/Adam/add_60/yConst*
_output_shapes
: *
valueB
 *żÖ3*
dtype0
p
training/Adam/add_60Addtraining/Adam/Sqrt_20training/Adam/add_60/y*
_output_shapes	
:*
T0
v
training/Adam/truediv_20RealDivtraining/Adam/mul_100training/Adam/add_60*
_output_shapes	
:*
T0
|
training/Adam/sub_61Subbatch_normalization_5/beta/readtraining/Adam/truediv_20*
_output_shapes	
:*
T0
Ď
training/Adam/Assign_57Assigntraining/Adam/Variable_19training/Adam/add_58*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(
Ď
training/Adam/Assign_58Assigntraining/Adam/Variable_59training/Adam/add_59*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_59*
validate_shape(*
_output_shapes	
:
Ń
training/Adam/Assign_59Assignbatch_normalization_5/betatraining/Adam/sub_61*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta

training/Adam/mul_101MulAdam/beta_1/readtraining/Adam/Variable_20/read*
T0*(
_output_shapes
:
[
training/Adam/sub_62/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_62Subtraining/Adam/sub_62/xAdam/beta_1/read*
T0*
_output_shapes
: 
­
training/Adam/mul_102Multraining/Adam/sub_62Ftraining/Adam/gradients/conv2d_6/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
|
training/Adam/add_61Addtraining/Adam/mul_101training/Adam/mul_102*(
_output_shapes
:*
T0

training/Adam/mul_103MulAdam/beta_2/readtraining/Adam/Variable_60/read*
T0*(
_output_shapes
:
[
training/Adam/sub_63/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_63Subtraining/Adam/sub_63/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_20SquareFtraining/Adam/gradients/conv2d_6/convolution_grad/Conv2DBackpropFilter*(
_output_shapes
:*
T0
~
training/Adam/mul_104Multraining/Adam/sub_63training/Adam/Square_20*
T0*(
_output_shapes
:
|
training/Adam/add_62Addtraining/Adam/mul_103training/Adam/mul_104*
T0*(
_output_shapes
:
x
training/Adam/mul_105Multraining/Adam/multraining/Adam/add_61*(
_output_shapes
:*
T0
[
training/Adam/Const_42Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_43Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_21/MinimumMinimumtraining/Adam/add_62training/Adam/Const_43*(
_output_shapes
:*
T0

training/Adam/clip_by_value_21Maximum&training/Adam/clip_by_value_21/Minimumtraining/Adam/Const_42*
T0*(
_output_shapes
:
p
training/Adam/Sqrt_21Sqrttraining/Adam/clip_by_value_21*(
_output_shapes
:*
T0
[
training/Adam/add_63/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
}
training/Adam/add_63Addtraining/Adam/Sqrt_21training/Adam/add_63/y*
T0*(
_output_shapes
:

training/Adam/truediv_21RealDivtraining/Adam/mul_105training/Adam/add_63*(
_output_shapes
:*
T0
~
training/Adam/sub_64Subconv2d_6/kernel/readtraining/Adam/truediv_21*
T0*(
_output_shapes
:
Ü
training/Adam/Assign_60Assigntraining/Adam/Variable_20training/Adam/add_61*(
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(
Ü
training/Adam/Assign_61Assigntraining/Adam/Variable_60training/Adam/add_62*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_60*
validate_shape(*(
_output_shapes
:
Č
training/Adam/Assign_62Assignconv2d_6/kerneltraining/Adam/sub_64*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel
t
training/Adam/mul_106MulAdam/beta_1/readtraining/Adam/Variable_21/read*
T0*
_output_shapes	
:
[
training/Adam/sub_65/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_65Subtraining/Adam/sub_65/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_107Multraining/Adam/sub_659training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/add_64Addtraining/Adam/mul_106training/Adam/mul_107*
_output_shapes	
:*
T0
t
training/Adam/mul_108MulAdam/beta_2/readtraining/Adam/Variable_61/read*
T0*
_output_shapes	
:
[
training/Adam/sub_66/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_66Subtraining/Adam/sub_66/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_21Square9training/Adam/gradients/conv2d_6/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
q
training/Adam/mul_109Multraining/Adam/sub_66training/Adam/Square_21*
T0*
_output_shapes	
:
o
training/Adam/add_65Addtraining/Adam/mul_108training/Adam/mul_109*
T0*
_output_shapes	
:
k
training/Adam/mul_110Multraining/Adam/multraining/Adam/add_64*
T0*
_output_shapes	
:
[
training/Adam/Const_44Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_45Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_22/MinimumMinimumtraining/Adam/add_65training/Adam/Const_45*
T0*
_output_shapes	
:

training/Adam/clip_by_value_22Maximum&training/Adam/clip_by_value_22/Minimumtraining/Adam/Const_44*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_22Sqrttraining/Adam/clip_by_value_22*
T0*
_output_shapes	
:
[
training/Adam/add_66/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_66Addtraining/Adam/Sqrt_22training/Adam/add_66/y*
T0*
_output_shapes	
:
v
training/Adam/truediv_22RealDivtraining/Adam/mul_110training/Adam/add_66*
T0*
_output_shapes	
:
o
training/Adam/sub_67Subconv2d_6/bias/readtraining/Adam/truediv_22*
_output_shapes	
:*
T0
Ď
training/Adam/Assign_63Assigntraining/Adam/Variable_21training/Adam/add_64*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(
Ď
training/Adam/Assign_64Assigntraining/Adam/Variable_61training/Adam/add_65*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_61*
validate_shape(*
_output_shapes	
:
ˇ
training/Adam/Assign_65Assignconv2d_6/biastraining/Adam/sub_67*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
t
training/Adam/mul_111MulAdam/beta_1/readtraining/Adam/Variable_22/read*
T0*
_output_shapes	
:
[
training/Adam/sub_68/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_68Subtraining/Adam/sub_68/xAdam/beta_1/read*
_output_shapes
: *
T0
y
training/Adam/mul_112Multraining/Adam/sub_68training/Adam/gradients/AddN_16*
T0*
_output_shapes	
:
o
training/Adam/add_67Addtraining/Adam/mul_111training/Adam/mul_112*
T0*
_output_shapes	
:
t
training/Adam/mul_113MulAdam/beta_2/readtraining/Adam/Variable_62/read*
T0*
_output_shapes	
:
[
training/Adam/sub_69/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_69Subtraining/Adam/sub_69/xAdam/beta_2/read*
T0*
_output_shapes
: 
h
training/Adam/Square_22Squaretraining/Adam/gradients/AddN_16*
T0*
_output_shapes	
:
q
training/Adam/mul_114Multraining/Adam/sub_69training/Adam/Square_22*
_output_shapes	
:*
T0
o
training/Adam/add_68Addtraining/Adam/mul_113training/Adam/mul_114*
_output_shapes	
:*
T0
k
training/Adam/mul_115Multraining/Adam/multraining/Adam/add_67*
T0*
_output_shapes	
:
[
training/Adam/Const_46Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_47Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_23/MinimumMinimumtraining/Adam/add_68training/Adam/Const_47*
T0*
_output_shapes	
:

training/Adam/clip_by_value_23Maximum&training/Adam/clip_by_value_23/Minimumtraining/Adam/Const_46*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_23Sqrttraining/Adam/clip_by_value_23*
T0*
_output_shapes	
:
[
training/Adam/add_69/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_69Addtraining/Adam/Sqrt_23training/Adam/add_69/y*
T0*
_output_shapes	
:
v
training/Adam/truediv_23RealDivtraining/Adam/mul_115training/Adam/add_69*
T0*
_output_shapes	
:
}
training/Adam/sub_70Sub batch_normalization_6/gamma/readtraining/Adam/truediv_23*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_66Assigntraining/Adam/Variable_22training/Adam/add_67*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes	
:
Ď
training/Adam/Assign_67Assigntraining/Adam/Variable_62training/Adam/add_68*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_62*
validate_shape(*
_output_shapes	
:
Ó
training/Adam/Assign_68Assignbatch_normalization_6/gammatraining/Adam/sub_70*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
t
training/Adam/mul_116MulAdam/beta_1/readtraining/Adam/Variable_23/read*
_output_shapes	
:*
T0
[
training/Adam/sub_71/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_71Subtraining/Adam/sub_71/xAdam/beta_1/read*
T0*
_output_shapes
: 
y
training/Adam/mul_117Multraining/Adam/sub_71training/Adam/gradients/AddN_17*
T0*
_output_shapes	
:
o
training/Adam/add_70Addtraining/Adam/mul_116training/Adam/mul_117*
_output_shapes	
:*
T0
t
training/Adam/mul_118MulAdam/beta_2/readtraining/Adam/Variable_63/read*
_output_shapes	
:*
T0
[
training/Adam/sub_72/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_72Subtraining/Adam/sub_72/xAdam/beta_2/read*
T0*
_output_shapes
: 
h
training/Adam/Square_23Squaretraining/Adam/gradients/AddN_17*
_output_shapes	
:*
T0
q
training/Adam/mul_119Multraining/Adam/sub_72training/Adam/Square_23*
T0*
_output_shapes	
:
o
training/Adam/add_71Addtraining/Adam/mul_118training/Adam/mul_119*
T0*
_output_shapes	
:
k
training/Adam/mul_120Multraining/Adam/multraining/Adam/add_70*
_output_shapes	
:*
T0
[
training/Adam/Const_48Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_49Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_24/MinimumMinimumtraining/Adam/add_71training/Adam/Const_49*
_output_shapes	
:*
T0

training/Adam/clip_by_value_24Maximum&training/Adam/clip_by_value_24/Minimumtraining/Adam/Const_48*
_output_shapes	
:*
T0
c
training/Adam/Sqrt_24Sqrttraining/Adam/clip_by_value_24*
_output_shapes	
:*
T0
[
training/Adam/add_72/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_72Addtraining/Adam/Sqrt_24training/Adam/add_72/y*
T0*
_output_shapes	
:
v
training/Adam/truediv_24RealDivtraining/Adam/mul_120training/Adam/add_72*
_output_shapes	
:*
T0
|
training/Adam/sub_73Subbatch_normalization_6/beta/readtraining/Adam/truediv_24*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_69Assigntraining/Adam/Variable_23training/Adam/add_70*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes	
:
Ď
training/Adam/Assign_70Assigntraining/Adam/Variable_63training/Adam/add_71*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_63*
validate_shape(*
_output_shapes	
:
Ń
training/Adam/Assign_71Assignbatch_normalization_6/betatraining/Adam/sub_73*
_output_shapes	
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(

training/Adam/mul_121MulAdam/beta_1/readtraining/Adam/Variable_24/read*(
_output_shapes
:*
T0
[
training/Adam/sub_74/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_74Subtraining/Adam/sub_74/xAdam/beta_1/read*
T0*
_output_shapes
: 
­
training/Adam/mul_122Multraining/Adam/sub_74Ftraining/Adam/gradients/conv2d_7/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
|
training/Adam/add_73Addtraining/Adam/mul_121training/Adam/mul_122*
T0*(
_output_shapes
:

training/Adam/mul_123MulAdam/beta_2/readtraining/Adam/Variable_64/read*
T0*(
_output_shapes
:
[
training/Adam/sub_75/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_75Subtraining/Adam/sub_75/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_24SquareFtraining/Adam/gradients/conv2d_7/convolution_grad/Conv2DBackpropFilter*
T0*(
_output_shapes
:
~
training/Adam/mul_124Multraining/Adam/sub_75training/Adam/Square_24*(
_output_shapes
:*
T0
|
training/Adam/add_74Addtraining/Adam/mul_123training/Adam/mul_124*(
_output_shapes
:*
T0
x
training/Adam/mul_125Multraining/Adam/multraining/Adam/add_73*
T0*(
_output_shapes
:
[
training/Adam/Const_50Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_51Const*
dtype0*
_output_shapes
: *
valueB
 *  

&training/Adam/clip_by_value_25/MinimumMinimumtraining/Adam/add_74training/Adam/Const_51*(
_output_shapes
:*
T0

training/Adam/clip_by_value_25Maximum&training/Adam/clip_by_value_25/Minimumtraining/Adam/Const_50*
T0*(
_output_shapes
:
p
training/Adam/Sqrt_25Sqrttraining/Adam/clip_by_value_25*
T0*(
_output_shapes
:
[
training/Adam/add_75/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
}
training/Adam/add_75Addtraining/Adam/Sqrt_25training/Adam/add_75/y*
T0*(
_output_shapes
:

training/Adam/truediv_25RealDivtraining/Adam/mul_125training/Adam/add_75*
T0*(
_output_shapes
:
~
training/Adam/sub_76Subconv2d_7/kernel/readtraining/Adam/truediv_25*(
_output_shapes
:*
T0
Ü
training/Adam/Assign_72Assigntraining/Adam/Variable_24training/Adam/add_73*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*(
_output_shapes
:
Ü
training/Adam/Assign_73Assigntraining/Adam/Variable_64training/Adam/add_74*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_64*
validate_shape(*(
_output_shapes
:
Č
training/Adam/Assign_74Assignconv2d_7/kerneltraining/Adam/sub_76*
use_locking(*
T0*"
_class
loc:@conv2d_7/kernel*
validate_shape(*(
_output_shapes
:
t
training/Adam/mul_126MulAdam/beta_1/readtraining/Adam/Variable_25/read*
_output_shapes	
:*
T0
[
training/Adam/sub_77/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_77Subtraining/Adam/sub_77/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_127Multraining/Adam/sub_779training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
o
training/Adam/add_76Addtraining/Adam/mul_126training/Adam/mul_127*
T0*
_output_shapes	
:
t
training/Adam/mul_128MulAdam/beta_2/readtraining/Adam/Variable_65/read*
_output_shapes	
:*
T0
[
training/Adam/sub_78/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_78Subtraining/Adam/sub_78/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_25Square9training/Adam/gradients/conv2d_7/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
q
training/Adam/mul_129Multraining/Adam/sub_78training/Adam/Square_25*
T0*
_output_shapes	
:
o
training/Adam/add_77Addtraining/Adam/mul_128training/Adam/mul_129*
_output_shapes	
:*
T0
k
training/Adam/mul_130Multraining/Adam/multraining/Adam/add_76*
T0*
_output_shapes	
:
[
training/Adam/Const_52Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_53Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_26/MinimumMinimumtraining/Adam/add_77training/Adam/Const_53*
T0*
_output_shapes	
:

training/Adam/clip_by_value_26Maximum&training/Adam/clip_by_value_26/Minimumtraining/Adam/Const_52*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_26Sqrttraining/Adam/clip_by_value_26*
_output_shapes	
:*
T0
[
training/Adam/add_78/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
p
training/Adam/add_78Addtraining/Adam/Sqrt_26training/Adam/add_78/y*
T0*
_output_shapes	
:
v
training/Adam/truediv_26RealDivtraining/Adam/mul_130training/Adam/add_78*
_output_shapes	
:*
T0
o
training/Adam/sub_79Subconv2d_7/bias/readtraining/Adam/truediv_26*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_75Assigntraining/Adam/Variable_25training/Adam/add_76*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes	
:
Ď
training/Adam/Assign_76Assigntraining/Adam/Variable_65training/Adam/add_77*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_65*
validate_shape(*
_output_shapes	
:
ˇ
training/Adam/Assign_77Assignconv2d_7/biastraining/Adam/sub_79*
use_locking(*
T0* 
_class
loc:@conv2d_7/bias*
validate_shape(*
_output_shapes	
:
t
training/Adam/mul_131MulAdam/beta_1/readtraining/Adam/Variable_26/read*
_output_shapes	
:*
T0
[
training/Adam/sub_80/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
f
training/Adam/sub_80Subtraining/Adam/sub_80/xAdam/beta_1/read*
_output_shapes
: *
T0
y
training/Adam/mul_132Multraining/Adam/sub_80training/Adam/gradients/AddN_13*
_output_shapes	
:*
T0
o
training/Adam/add_79Addtraining/Adam/mul_131training/Adam/mul_132*
T0*
_output_shapes	
:
t
training/Adam/mul_133MulAdam/beta_2/readtraining/Adam/Variable_66/read*
_output_shapes	
:*
T0
[
training/Adam/sub_81/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_81Subtraining/Adam/sub_81/xAdam/beta_2/read*
_output_shapes
: *
T0
h
training/Adam/Square_26Squaretraining/Adam/gradients/AddN_13*
T0*
_output_shapes	
:
q
training/Adam/mul_134Multraining/Adam/sub_81training/Adam/Square_26*
T0*
_output_shapes	
:
o
training/Adam/add_80Addtraining/Adam/mul_133training/Adam/mul_134*
T0*
_output_shapes	
:
k
training/Adam/mul_135Multraining/Adam/multraining/Adam/add_79*
T0*
_output_shapes	
:
[
training/Adam/Const_54Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_55Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_27/MinimumMinimumtraining/Adam/add_80training/Adam/Const_55*
T0*
_output_shapes	
:

training/Adam/clip_by_value_27Maximum&training/Adam/clip_by_value_27/Minimumtraining/Adam/Const_54*
_output_shapes	
:*
T0
c
training/Adam/Sqrt_27Sqrttraining/Adam/clip_by_value_27*
T0*
_output_shapes	
:
[
training/Adam/add_81/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
p
training/Adam/add_81Addtraining/Adam/Sqrt_27training/Adam/add_81/y*
_output_shapes	
:*
T0
v
training/Adam/truediv_27RealDivtraining/Adam/mul_135training/Adam/add_81*
_output_shapes	
:*
T0
}
training/Adam/sub_82Sub batch_normalization_7/gamma/readtraining/Adam/truediv_27*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_78Assigntraining/Adam/Variable_26training/Adam/add_79*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes	
:
Ď
training/Adam/Assign_79Assigntraining/Adam/Variable_66training/Adam/add_80*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_66*
validate_shape(*
_output_shapes	
:
Ó
training/Adam/Assign_80Assignbatch_normalization_7/gammatraining/Adam/sub_82*
_output_shapes	
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(
t
training/Adam/mul_136MulAdam/beta_1/readtraining/Adam/Variable_27/read*
T0*
_output_shapes	
:
[
training/Adam/sub_83/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_83Subtraining/Adam/sub_83/xAdam/beta_1/read*
T0*
_output_shapes
: 
y
training/Adam/mul_137Multraining/Adam/sub_83training/Adam/gradients/AddN_14*
T0*
_output_shapes	
:
o
training/Adam/add_82Addtraining/Adam/mul_136training/Adam/mul_137*
_output_shapes	
:*
T0
t
training/Adam/mul_138MulAdam/beta_2/readtraining/Adam/Variable_67/read*
_output_shapes	
:*
T0
[
training/Adam/sub_84/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_84Subtraining/Adam/sub_84/xAdam/beta_2/read*
_output_shapes
: *
T0
h
training/Adam/Square_27Squaretraining/Adam/gradients/AddN_14*
_output_shapes	
:*
T0
q
training/Adam/mul_139Multraining/Adam/sub_84training/Adam/Square_27*
T0*
_output_shapes	
:
o
training/Adam/add_83Addtraining/Adam/mul_138training/Adam/mul_139*
_output_shapes	
:*
T0
k
training/Adam/mul_140Multraining/Adam/multraining/Adam/add_82*
T0*
_output_shapes	
:
[
training/Adam/Const_56Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_57Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_28/MinimumMinimumtraining/Adam/add_83training/Adam/Const_57*
T0*
_output_shapes	
:

training/Adam/clip_by_value_28Maximum&training/Adam/clip_by_value_28/Minimumtraining/Adam/Const_56*
_output_shapes	
:*
T0
c
training/Adam/Sqrt_28Sqrttraining/Adam/clip_by_value_28*
_output_shapes	
:*
T0
[
training/Adam/add_84/yConst*
_output_shapes
: *
valueB
 *żÖ3*
dtype0
p
training/Adam/add_84Addtraining/Adam/Sqrt_28training/Adam/add_84/y*
_output_shapes	
:*
T0
v
training/Adam/truediv_28RealDivtraining/Adam/mul_140training/Adam/add_84*
_output_shapes	
:*
T0
|
training/Adam/sub_85Subbatch_normalization_7/beta/readtraining/Adam/truediv_28*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_81Assigntraining/Adam/Variable_27training/Adam/add_82*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ď
training/Adam/Assign_82Assigntraining/Adam/Variable_67training/Adam/add_83*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_67*
validate_shape(*
_output_shapes	
:
Ń
training/Adam/Assign_83Assignbatch_normalization_7/betatraining/Adam/sub_85*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta
y
training/Adam/mul_141MulAdam/beta_1/readtraining/Adam/Variable_28/read* 
_output_shapes
:
*
T0
[
training/Adam/sub_86/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_86Subtraining/Adam/sub_86/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_142Multraining/Adam/sub_86?training/Adam/gradients/time_distributed_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

t
training/Adam/add_85Addtraining/Adam/mul_141training/Adam/mul_142* 
_output_shapes
:
*
T0
y
training/Adam/mul_143MulAdam/beta_2/readtraining/Adam/Variable_68/read*
T0* 
_output_shapes
:

[
training/Adam/sub_87/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_87Subtraining/Adam/sub_87/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_28Square?training/Adam/gradients/time_distributed_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
v
training/Adam/mul_144Multraining/Adam/sub_87training/Adam/Square_28*
T0* 
_output_shapes
:

t
training/Adam/add_86Addtraining/Adam/mul_143training/Adam/mul_144*
T0* 
_output_shapes
:

p
training/Adam/mul_145Multraining/Adam/multraining/Adam/add_85*
T0* 
_output_shapes
:

[
training/Adam/Const_58Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_59Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_29/MinimumMinimumtraining/Adam/add_86training/Adam/Const_59* 
_output_shapes
:
*
T0

training/Adam/clip_by_value_29Maximum&training/Adam/clip_by_value_29/Minimumtraining/Adam/Const_58*
T0* 
_output_shapes
:

h
training/Adam/Sqrt_29Sqrttraining/Adam/clip_by_value_29*
T0* 
_output_shapes
:

[
training/Adam/add_87/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
u
training/Adam/add_87Addtraining/Adam/Sqrt_29training/Adam/add_87/y* 
_output_shapes
:
*
T0
{
training/Adam/truediv_29RealDivtraining/Adam/mul_145training/Adam/add_87*
T0* 
_output_shapes
:


training/Adam/sub_88Subtime_distributed_1/kernel/readtraining/Adam/truediv_29*
T0* 
_output_shapes
:

Ô
training/Adam/Assign_84Assigntraining/Adam/Variable_28training/Adam/add_85*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ô
training/Adam/Assign_85Assigntraining/Adam/Variable_68training/Adam/add_86*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_68*
validate_shape(* 
_output_shapes
:

Ô
training/Adam/Assign_86Assigntime_distributed_1/kerneltraining/Adam/sub_88*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@time_distributed_1/kernel
t
training/Adam/mul_146MulAdam/beta_1/readtraining/Adam/Variable_29/read*
_output_shapes	
:*
T0
[
training/Adam/sub_89/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_89Subtraining/Adam/sub_89/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_147Multraining/Adam/sub_89Ctraining/Adam/gradients/time_distributed_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
o
training/Adam/add_88Addtraining/Adam/mul_146training/Adam/mul_147*
T0*
_output_shapes	
:
t
training/Adam/mul_148MulAdam/beta_2/readtraining/Adam/Variable_69/read*
_output_shapes	
:*
T0
[
training/Adam/sub_90/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_90Subtraining/Adam/sub_90/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_29SquareCtraining/Adam/gradients/time_distributed_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
q
training/Adam/mul_149Multraining/Adam/sub_90training/Adam/Square_29*
T0*
_output_shapes	
:
o
training/Adam/add_89Addtraining/Adam/mul_148training/Adam/mul_149*
_output_shapes	
:*
T0
k
training/Adam/mul_150Multraining/Adam/multraining/Adam/add_88*
T0*
_output_shapes	
:
[
training/Adam/Const_60Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_61Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_30/MinimumMinimumtraining/Adam/add_89training/Adam/Const_61*
T0*
_output_shapes	
:

training/Adam/clip_by_value_30Maximum&training/Adam/clip_by_value_30/Minimumtraining/Adam/Const_60*
_output_shapes	
:*
T0
c
training/Adam/Sqrt_30Sqrttraining/Adam/clip_by_value_30*
T0*
_output_shapes	
:
[
training/Adam/add_90/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
p
training/Adam/add_90Addtraining/Adam/Sqrt_30training/Adam/add_90/y*
_output_shapes	
:*
T0
v
training/Adam/truediv_30RealDivtraining/Adam/mul_150training/Adam/add_90*
T0*
_output_shapes	
:
y
training/Adam/sub_91Subtime_distributed_1/bias/readtraining/Adam/truediv_30*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_87Assigntraining/Adam/Variable_29training/Adam/add_88*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes	
:
Ď
training/Adam/Assign_88Assigntraining/Adam/Variable_69training/Adam/add_89*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_69
Ë
training/Adam/Assign_89Assigntime_distributed_1/biastraining/Adam/sub_91*
T0**
_class 
loc:@time_distributed_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
y
training/Adam/mul_151MulAdam/beta_1/readtraining/Adam/Variable_30/read* 
_output_shapes
:
*
T0
[
training/Adam/sub_92/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_92Subtraining/Adam/sub_92/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_152Multraining/Adam/sub_924training/Adam/gradients/vad_fc2/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
t
training/Adam/add_91Addtraining/Adam/mul_151training/Adam/mul_152*
T0* 
_output_shapes
:

y
training/Adam/mul_153MulAdam/beta_2/readtraining/Adam/Variable_70/read* 
_output_shapes
:
*
T0
[
training/Adam/sub_93/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_93Subtraining/Adam/sub_93/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_30Square4training/Adam/gradients/vad_fc2/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
v
training/Adam/mul_154Multraining/Adam/sub_93training/Adam/Square_30* 
_output_shapes
:
*
T0
t
training/Adam/add_92Addtraining/Adam/mul_153training/Adam/mul_154*
T0* 
_output_shapes
:

p
training/Adam/mul_155Multraining/Adam/multraining/Adam/add_91* 
_output_shapes
:
*
T0
[
training/Adam/Const_62Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_63Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_31/MinimumMinimumtraining/Adam/add_92training/Adam/Const_63*
T0* 
_output_shapes
:


training/Adam/clip_by_value_31Maximum&training/Adam/clip_by_value_31/Minimumtraining/Adam/Const_62* 
_output_shapes
:
*
T0
h
training/Adam/Sqrt_31Sqrttraining/Adam/clip_by_value_31*
T0* 
_output_shapes
:

[
training/Adam/add_93/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
u
training/Adam/add_93Addtraining/Adam/Sqrt_31training/Adam/add_93/y*
T0* 
_output_shapes
:

{
training/Adam/truediv_31RealDivtraining/Adam/mul_155training/Adam/add_93* 
_output_shapes
:
*
T0
u
training/Adam/sub_94Subvad_fc2/kernel/readtraining/Adam/truediv_31* 
_output_shapes
:
*
T0
Ô
training/Adam/Assign_90Assigntraining/Adam/Variable_30training/Adam/add_91*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(* 
_output_shapes
:

Ô
training/Adam/Assign_91Assigntraining/Adam/Variable_70training/Adam/add_92*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_70*
validate_shape(* 
_output_shapes
:

ž
training/Adam/Assign_92Assignvad_fc2/kerneltraining/Adam/sub_94*!
_class
loc:@vad_fc2/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
t
training/Adam/mul_156MulAdam/beta_1/readtraining/Adam/Variable_31/read*
_output_shapes	
:*
T0
[
training/Adam/sub_95/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
f
training/Adam/sub_95Subtraining/Adam/sub_95/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_157Multraining/Adam/sub_958training/Adam/gradients/vad_fc2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/add_94Addtraining/Adam/mul_156training/Adam/mul_157*
_output_shapes	
:*
T0
t
training/Adam/mul_158MulAdam/beta_2/readtraining/Adam/Variable_71/read*
T0*
_output_shapes	
:
[
training/Adam/sub_96/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_96Subtraining/Adam/sub_96/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_31Square8training/Adam/gradients/vad_fc2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
q
training/Adam/mul_159Multraining/Adam/sub_96training/Adam/Square_31*
_output_shapes	
:*
T0
o
training/Adam/add_95Addtraining/Adam/mul_158training/Adam/mul_159*
T0*
_output_shapes	
:
k
training/Adam/mul_160Multraining/Adam/multraining/Adam/add_94*
_output_shapes	
:*
T0
[
training/Adam/Const_64Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_65Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_32/MinimumMinimumtraining/Adam/add_95training/Adam/Const_65*
T0*
_output_shapes	
:

training/Adam/clip_by_value_32Maximum&training/Adam/clip_by_value_32/Minimumtraining/Adam/Const_64*
_output_shapes	
:*
T0
c
training/Adam/Sqrt_32Sqrttraining/Adam/clip_by_value_32*
T0*
_output_shapes	
:
[
training/Adam/add_96/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_96Addtraining/Adam/Sqrt_32training/Adam/add_96/y*
T0*
_output_shapes	
:
v
training/Adam/truediv_32RealDivtraining/Adam/mul_160training/Adam/add_96*
T0*
_output_shapes	
:
n
training/Adam/sub_97Subvad_fc2/bias/readtraining/Adam/truediv_32*
_output_shapes	
:*
T0
Ď
training/Adam/Assign_93Assigntraining/Adam/Variable_31training/Adam/add_94*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ď
training/Adam/Assign_94Assigntraining/Adam/Variable_71training/Adam/add_95*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_71*
validate_shape(*
_output_shapes	
:
ľ
training/Adam/Assign_95Assignvad_fc2/biastraining/Adam/sub_97*
use_locking(*
T0*
_class
loc:@vad_fc2/bias*
validate_shape(*
_output_shapes	
:
t
training/Adam/mul_161MulAdam/beta_1/readtraining/Adam/Variable_32/read*
_output_shapes	
:*
T0
[
training/Adam/sub_98/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_98Subtraining/Adam/sub_98/xAdam/beta_1/read*
_output_shapes
: *
T0
y
training/Adam/mul_162Multraining/Adam/sub_98training/Adam/gradients/AddN_10*
_output_shapes	
:*
T0
o
training/Adam/add_97Addtraining/Adam/mul_161training/Adam/mul_162*
_output_shapes	
:*
T0
t
training/Adam/mul_163MulAdam/beta_2/readtraining/Adam/Variable_72/read*
T0*
_output_shapes	
:
[
training/Adam/sub_99/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_99Subtraining/Adam/sub_99/xAdam/beta_2/read*
T0*
_output_shapes
: 
h
training/Adam/Square_32Squaretraining/Adam/gradients/AddN_10*
T0*
_output_shapes	
:
q
training/Adam/mul_164Multraining/Adam/sub_99training/Adam/Square_32*
T0*
_output_shapes	
:
o
training/Adam/add_98Addtraining/Adam/mul_163training/Adam/mul_164*
_output_shapes	
:*
T0
k
training/Adam/mul_165Multraining/Adam/multraining/Adam/add_97*
T0*
_output_shapes	
:
[
training/Adam/Const_66Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_67Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_33/MinimumMinimumtraining/Adam/add_98training/Adam/Const_67*
T0*
_output_shapes	
:

training/Adam/clip_by_value_33Maximum&training/Adam/clip_by_value_33/Minimumtraining/Adam/Const_66*
T0*
_output_shapes	
:
c
training/Adam/Sqrt_33Sqrttraining/Adam/clip_by_value_33*
_output_shapes	
:*
T0
[
training/Adam/add_99/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_99Addtraining/Adam/Sqrt_33training/Adam/add_99/y*
T0*
_output_shapes	
:
v
training/Adam/truediv_33RealDivtraining/Adam/mul_165training/Adam/add_99*
T0*
_output_shapes	
:
p
training/Adam/sub_100Subvad_bn2/gamma/readtraining/Adam/truediv_33*
T0*
_output_shapes	
:
Ď
training/Adam/Assign_96Assigntraining/Adam/Variable_32training/Adam/add_97*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(*
_output_shapes	
:
Ď
training/Adam/Assign_97Assigntraining/Adam/Variable_72training/Adam/add_98*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_72*
validate_shape(*
_output_shapes	
:
¸
training/Adam/Assign_98Assignvad_bn2/gammatraining/Adam/sub_100*
use_locking(*
T0* 
_class
loc:@vad_bn2/gamma*
validate_shape(*
_output_shapes	
:
t
training/Adam/mul_166MulAdam/beta_1/readtraining/Adam/Variable_33/read*
T0*
_output_shapes	
:
\
training/Adam/sub_101/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training/Adam/sub_101Subtraining/Adam/sub_101/xAdam/beta_1/read*
_output_shapes
: *
T0
y
training/Adam/mul_167Multraining/Adam/sub_101training/Adam/gradients/AddN_8*
_output_shapes	
:*
T0
p
training/Adam/add_100Addtraining/Adam/mul_166training/Adam/mul_167*
_output_shapes	
:*
T0
t
training/Adam/mul_168MulAdam/beta_2/readtraining/Adam/Variable_73/read*
_output_shapes	
:*
T0
\
training/Adam/sub_102/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training/Adam/sub_102Subtraining/Adam/sub_102/xAdam/beta_2/read*
_output_shapes
: *
T0
g
training/Adam/Square_33Squaretraining/Adam/gradients/AddN_8*
T0*
_output_shapes	
:
r
training/Adam/mul_169Multraining/Adam/sub_102training/Adam/Square_33*
_output_shapes	
:*
T0
p
training/Adam/add_101Addtraining/Adam/mul_168training/Adam/mul_169*
T0*
_output_shapes	
:
l
training/Adam/mul_170Multraining/Adam/multraining/Adam/add_100*
T0*
_output_shapes	
:
[
training/Adam/Const_68Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_69Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_34/MinimumMinimumtraining/Adam/add_101training/Adam/Const_69*
T0*
_output_shapes	
:

training/Adam/clip_by_value_34Maximum&training/Adam/clip_by_value_34/Minimumtraining/Adam/Const_68*
_output_shapes	
:*
T0
c
training/Adam/Sqrt_34Sqrttraining/Adam/clip_by_value_34*
T0*
_output_shapes	
:
\
training/Adam/add_102/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
r
training/Adam/add_102Addtraining/Adam/Sqrt_34training/Adam/add_102/y*
T0*
_output_shapes	
:
w
training/Adam/truediv_34RealDivtraining/Adam/mul_170training/Adam/add_102*
_output_shapes	
:*
T0
o
training/Adam/sub_103Subvad_bn2/beta/readtraining/Adam/truediv_34*
T0*
_output_shapes	
:
Đ
training/Adam/Assign_99Assigntraining/Adam/Variable_33training/Adam/add_100*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_33*
validate_shape(*
_output_shapes	
:
Ń
training/Adam/Assign_100Assigntraining/Adam/Variable_73training/Adam/add_101*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_73
ˇ
training/Adam/Assign_101Assignvad_bn2/betatraining/Adam/sub_103*
T0*
_class
loc:@vad_bn2/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
x
training/Adam/mul_171MulAdam/beta_1/readtraining/Adam/Variable_34/read*
T0*
_output_shapes
:	@
\
training/Adam/sub_104/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
h
training/Adam/sub_104Subtraining/Adam/sub_104/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_172Multraining/Adam/sub_1044training/Adam/gradients/vad_fc3/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
t
training/Adam/add_103Addtraining/Adam/mul_171training/Adam/mul_172*
T0*
_output_shapes
:	@
x
training/Adam/mul_173MulAdam/beta_2/readtraining/Adam/Variable_74/read*
T0*
_output_shapes
:	@
\
training/Adam/sub_105/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training/Adam/sub_105Subtraining/Adam/sub_105/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_34Square4training/Adam/gradients/vad_fc3/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
v
training/Adam/mul_174Multraining/Adam/sub_105training/Adam/Square_34*
_output_shapes
:	@*
T0
t
training/Adam/add_104Addtraining/Adam/mul_173training/Adam/mul_174*
_output_shapes
:	@*
T0
p
training/Adam/mul_175Multraining/Adam/multraining/Adam/add_103*
T0*
_output_shapes
:	@
[
training/Adam/Const_70Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_71Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_35/MinimumMinimumtraining/Adam/add_104training/Adam/Const_71*
T0*
_output_shapes
:	@

training/Adam/clip_by_value_35Maximum&training/Adam/clip_by_value_35/Minimumtraining/Adam/Const_70*
T0*
_output_shapes
:	@
g
training/Adam/Sqrt_35Sqrttraining/Adam/clip_by_value_35*
T0*
_output_shapes
:	@
\
training/Adam/add_105/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
v
training/Adam/add_105Addtraining/Adam/Sqrt_35training/Adam/add_105/y*
T0*
_output_shapes
:	@
{
training/Adam/truediv_35RealDivtraining/Adam/mul_175training/Adam/add_105*
T0*
_output_shapes
:	@
u
training/Adam/sub_106Subvad_fc3/kernel/readtraining/Adam/truediv_35*
T0*
_output_shapes
:	@
Ő
training/Adam/Assign_102Assigntraining/Adam/Variable_34training/Adam/add_103*
T0*,
_class"
 loc:@training/Adam/Variable_34*
validate_shape(*
_output_shapes
:	@*
use_locking(
Ő
training/Adam/Assign_103Assigntraining/Adam/Variable_74training/Adam/add_104*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_74*
validate_shape(*
_output_shapes
:	@
ż
training/Adam/Assign_104Assignvad_fc3/kerneltraining/Adam/sub_106*!
_class
loc:@vad_fc3/kernel*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0
s
training/Adam/mul_176MulAdam/beta_1/readtraining/Adam/Variable_35/read*
T0*
_output_shapes
:@
\
training/Adam/sub_107/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
h
training/Adam/sub_107Subtraining/Adam/sub_107/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_177Multraining/Adam/sub_1078training/Adam/gradients/vad_fc3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
o
training/Adam/add_106Addtraining/Adam/mul_176training/Adam/mul_177*
_output_shapes
:@*
T0
s
training/Adam/mul_178MulAdam/beta_2/readtraining/Adam/Variable_75/read*
T0*
_output_shapes
:@
\
training/Adam/sub_108/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
h
training/Adam/sub_108Subtraining/Adam/sub_108/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_35Square8training/Adam/gradients/vad_fc3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
q
training/Adam/mul_179Multraining/Adam/sub_108training/Adam/Square_35*
T0*
_output_shapes
:@
o
training/Adam/add_107Addtraining/Adam/mul_178training/Adam/mul_179*
_output_shapes
:@*
T0
k
training/Adam/mul_180Multraining/Adam/multraining/Adam/add_106*
T0*
_output_shapes
:@
[
training/Adam/Const_72Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_73Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_36/MinimumMinimumtraining/Adam/add_107training/Adam/Const_73*
_output_shapes
:@*
T0

training/Adam/clip_by_value_36Maximum&training/Adam/clip_by_value_36/Minimumtraining/Adam/Const_72*
_output_shapes
:@*
T0
b
training/Adam/Sqrt_36Sqrttraining/Adam/clip_by_value_36*
T0*
_output_shapes
:@
\
training/Adam/add_108/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
q
training/Adam/add_108Addtraining/Adam/Sqrt_36training/Adam/add_108/y*
T0*
_output_shapes
:@
v
training/Adam/truediv_36RealDivtraining/Adam/mul_180training/Adam/add_108*
_output_shapes
:@*
T0
n
training/Adam/sub_109Subvad_fc3/bias/readtraining/Adam/truediv_36*
T0*
_output_shapes
:@
Đ
training/Adam/Assign_105Assigntraining/Adam/Variable_35training/Adam/add_106*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_35
Đ
training/Adam/Assign_106Assigntraining/Adam/Variable_75training/Adam/add_107*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_75*
validate_shape(*
_output_shapes
:@
ś
training/Adam/Assign_107Assignvad_fc3/biastraining/Adam/sub_109*
use_locking(*
T0*
_class
loc:@vad_fc3/bias*
validate_shape(*
_output_shapes
:@
s
training/Adam/mul_181MulAdam/beta_1/readtraining/Adam/Variable_36/read*
T0*
_output_shapes
:@
\
training/Adam/sub_110/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training/Adam/sub_110Subtraining/Adam/sub_110/xAdam/beta_1/read*
T0*
_output_shapes
: 
x
training/Adam/mul_182Multraining/Adam/sub_110training/Adam/gradients/AddN_5*
T0*
_output_shapes
:@
o
training/Adam/add_109Addtraining/Adam/mul_181training/Adam/mul_182*
_output_shapes
:@*
T0
s
training/Adam/mul_183MulAdam/beta_2/readtraining/Adam/Variable_76/read*
_output_shapes
:@*
T0
\
training/Adam/sub_111/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
h
training/Adam/sub_111Subtraining/Adam/sub_111/xAdam/beta_2/read*
_output_shapes
: *
T0
f
training/Adam/Square_36Squaretraining/Adam/gradients/AddN_5*
T0*
_output_shapes
:@
q
training/Adam/mul_184Multraining/Adam/sub_111training/Adam/Square_36*
T0*
_output_shapes
:@
o
training/Adam/add_110Addtraining/Adam/mul_183training/Adam/mul_184*
T0*
_output_shapes
:@
k
training/Adam/mul_185Multraining/Adam/multraining/Adam/add_109*
T0*
_output_shapes
:@
[
training/Adam/Const_74Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_75Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_37/MinimumMinimumtraining/Adam/add_110training/Adam/Const_75*
T0*
_output_shapes
:@

training/Adam/clip_by_value_37Maximum&training/Adam/clip_by_value_37/Minimumtraining/Adam/Const_74*
T0*
_output_shapes
:@
b
training/Adam/Sqrt_37Sqrttraining/Adam/clip_by_value_37*
T0*
_output_shapes
:@
\
training/Adam/add_111/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
q
training/Adam/add_111Addtraining/Adam/Sqrt_37training/Adam/add_111/y*
_output_shapes
:@*
T0
v
training/Adam/truediv_37RealDivtraining/Adam/mul_185training/Adam/add_111*
T0*
_output_shapes
:@
o
training/Adam/sub_112Subvad_bn3/gamma/readtraining/Adam/truediv_37*
T0*
_output_shapes
:@
Đ
training/Adam/Assign_108Assigntraining/Adam/Variable_36training/Adam/add_109*,
_class"
 loc:@training/Adam/Variable_36*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Đ
training/Adam/Assign_109Assigntraining/Adam/Variable_76training/Adam/add_110*,
_class"
 loc:@training/Adam/Variable_76*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
¸
training/Adam/Assign_110Assignvad_bn3/gammatraining/Adam/sub_112*
use_locking(*
T0* 
_class
loc:@vad_bn3/gamma*
validate_shape(*
_output_shapes
:@
s
training/Adam/mul_186MulAdam/beta_1/readtraining/Adam/Variable_37/read*
T0*
_output_shapes
:@
\
training/Adam/sub_113/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
h
training/Adam/sub_113Subtraining/Adam/sub_113/xAdam/beta_1/read*
T0*
_output_shapes
: 
x
training/Adam/mul_187Multraining/Adam/sub_113training/Adam/gradients/AddN_3*
_output_shapes
:@*
T0
o
training/Adam/add_112Addtraining/Adam/mul_186training/Adam/mul_187*
T0*
_output_shapes
:@
s
training/Adam/mul_188MulAdam/beta_2/readtraining/Adam/Variable_77/read*
_output_shapes
:@*
T0
\
training/Adam/sub_114/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
h
training/Adam/sub_114Subtraining/Adam/sub_114/xAdam/beta_2/read*
_output_shapes
: *
T0
f
training/Adam/Square_37Squaretraining/Adam/gradients/AddN_3*
T0*
_output_shapes
:@
q
training/Adam/mul_189Multraining/Adam/sub_114training/Adam/Square_37*
T0*
_output_shapes
:@
o
training/Adam/add_113Addtraining/Adam/mul_188training/Adam/mul_189*
T0*
_output_shapes
:@
k
training/Adam/mul_190Multraining/Adam/multraining/Adam/add_112*
T0*
_output_shapes
:@
[
training/Adam/Const_76Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_77Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_38/MinimumMinimumtraining/Adam/add_113training/Adam/Const_77*
T0*
_output_shapes
:@

training/Adam/clip_by_value_38Maximum&training/Adam/clip_by_value_38/Minimumtraining/Adam/Const_76*
T0*
_output_shapes
:@
b
training/Adam/Sqrt_38Sqrttraining/Adam/clip_by_value_38*
T0*
_output_shapes
:@
\
training/Adam/add_114/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
q
training/Adam/add_114Addtraining/Adam/Sqrt_38training/Adam/add_114/y*
T0*
_output_shapes
:@
v
training/Adam/truediv_38RealDivtraining/Adam/mul_190training/Adam/add_114*
_output_shapes
:@*
T0
n
training/Adam/sub_115Subvad_bn3/beta/readtraining/Adam/truediv_38*
T0*
_output_shapes
:@
Đ
training/Adam/Assign_111Assigntraining/Adam/Variable_37training/Adam/add_112*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_37*
validate_shape(*
_output_shapes
:@
Đ
training/Adam/Assign_112Assigntraining/Adam/Variable_77training/Adam/add_113*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_77*
validate_shape(*
_output_shapes
:@
ś
training/Adam/Assign_113Assignvad_bn3/betatraining/Adam/sub_115*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@vad_bn3/beta
w
training/Adam/mul_191MulAdam/beta_1/readtraining/Adam/Variable_38/read*
_output_shapes

:@*
T0
\
training/Adam/sub_116/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
h
training/Adam/sub_116Subtraining/Adam/sub_116/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_192Multraining/Adam/sub_116Atraining/Adam/gradients/vad_prediction_layer/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
s
training/Adam/add_115Addtraining/Adam/mul_191training/Adam/mul_192*
T0*
_output_shapes

:@
w
training/Adam/mul_193MulAdam/beta_2/readtraining/Adam/Variable_78/read*
T0*
_output_shapes

:@
\
training/Adam/sub_117/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training/Adam/sub_117Subtraining/Adam/sub_117/xAdam/beta_2/read*
_output_shapes
: *
T0

training/Adam/Square_38SquareAtraining/Adam/gradients/vad_prediction_layer/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
u
training/Adam/mul_194Multraining/Adam/sub_117training/Adam/Square_38*
T0*
_output_shapes

:@
s
training/Adam/add_116Addtraining/Adam/mul_193training/Adam/mul_194*
_output_shapes

:@*
T0
o
training/Adam/mul_195Multraining/Adam/multraining/Adam/add_115*
_output_shapes

:@*
T0
[
training/Adam/Const_78Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_79Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_39/MinimumMinimumtraining/Adam/add_116training/Adam/Const_79*
T0*
_output_shapes

:@

training/Adam/clip_by_value_39Maximum&training/Adam/clip_by_value_39/Minimumtraining/Adam/Const_78*
_output_shapes

:@*
T0
f
training/Adam/Sqrt_39Sqrttraining/Adam/clip_by_value_39*
T0*
_output_shapes

:@
\
training/Adam/add_117/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
u
training/Adam/add_117Addtraining/Adam/Sqrt_39training/Adam/add_117/y*
T0*
_output_shapes

:@
z
training/Adam/truediv_39RealDivtraining/Adam/mul_195training/Adam/add_117*
T0*
_output_shapes

:@

training/Adam/sub_118Sub vad_prediction_layer/kernel/readtraining/Adam/truediv_39*
T0*
_output_shapes

:@
Ô
training/Adam/Assign_114Assigntraining/Adam/Variable_38training/Adam/add_115*,
_class"
 loc:@training/Adam/Variable_38*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
Ô
training/Adam/Assign_115Assigntraining/Adam/Variable_78training/Adam/add_116*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_78*
validate_shape(*
_output_shapes

:@
Ř
training/Adam/Assign_116Assignvad_prediction_layer/kerneltraining/Adam/sub_118*
use_locking(*
T0*.
_class$
" loc:@vad_prediction_layer/kernel*
validate_shape(*
_output_shapes

:@
s
training/Adam/mul_196MulAdam/beta_1/readtraining/Adam/Variable_39/read*
_output_shapes
:*
T0
\
training/Adam/sub_119/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training/Adam/sub_119Subtraining/Adam/sub_119/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_197Multraining/Adam/sub_119Etraining/Adam/gradients/vad_prediction_layer/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
o
training/Adam/add_118Addtraining/Adam/mul_196training/Adam/mul_197*
_output_shapes
:*
T0
s
training/Adam/mul_198MulAdam/beta_2/readtraining/Adam/Variable_79/read*
T0*
_output_shapes
:
\
training/Adam/sub_120/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training/Adam/sub_120Subtraining/Adam/sub_120/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_39SquareEtraining/Adam/gradients/vad_prediction_layer/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
q
training/Adam/mul_199Multraining/Adam/sub_120training/Adam/Square_39*
_output_shapes
:*
T0
o
training/Adam/add_119Addtraining/Adam/mul_198training/Adam/mul_199*
_output_shapes
:*
T0
k
training/Adam/mul_200Multraining/Adam/multraining/Adam/add_118*
T0*
_output_shapes
:
[
training/Adam/Const_80Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_81Const*
valueB
 *  *
dtype0*
_output_shapes
: 

&training/Adam/clip_by_value_40/MinimumMinimumtraining/Adam/add_119training/Adam/Const_81*
_output_shapes
:*
T0

training/Adam/clip_by_value_40Maximum&training/Adam/clip_by_value_40/Minimumtraining/Adam/Const_80*
T0*
_output_shapes
:
b
training/Adam/Sqrt_40Sqrttraining/Adam/clip_by_value_40*
_output_shapes
:*
T0
\
training/Adam/add_120/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
q
training/Adam/add_120Addtraining/Adam/Sqrt_40training/Adam/add_120/y*
T0*
_output_shapes
:
v
training/Adam/truediv_40RealDivtraining/Adam/mul_200training/Adam/add_120*
_output_shapes
:*
T0
{
training/Adam/sub_121Subvad_prediction_layer/bias/readtraining/Adam/truediv_40*
_output_shapes
:*
T0
Đ
training/Adam/Assign_117Assigntraining/Adam/Variable_39training/Adam/add_118*
T0*,
_class"
 loc:@training/Adam/Variable_39*
validate_shape(*
_output_shapes
:*
use_locking(
Đ
training/Adam/Assign_118Assigntraining/Adam/Variable_79training/Adam/add_119*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_79*
validate_shape(*
_output_shapes
:
Đ
training/Adam/Assign_119Assignvad_prediction_layer/biastraining/Adam/sub_121*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@vad_prediction_layer/bias*
validate_shape(
ˇ
training/group_depsNoOp&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1&^batch_normalization_7/AssignMovingAvg(^batch_normalization_7/AssignMovingAvg_1	^loss/mul^metrics/acc/Mean_1^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_100^training/Adam/Assign_101^training/Adam/Assign_102^training/Adam/Assign_103^training/Adam/Assign_104^training/Adam/Assign_105^training/Adam/Assign_106^training/Adam/Assign_107^training/Adam/Assign_108^training/Adam/Assign_109^training/Adam/Assign_11^training/Adam/Assign_110^training/Adam/Assign_111^training/Adam/Assign_112^training/Adam/Assign_113^training/Adam/Assign_114^training/Adam/Assign_115^training/Adam/Assign_116^training/Adam/Assign_117^training/Adam/Assign_118^training/Adam/Assign_119^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17^training/Adam/Assign_18^training/Adam/Assign_19^training/Adam/Assign_2^training/Adam/Assign_20^training/Adam/Assign_21^training/Adam/Assign_22^training/Adam/Assign_23^training/Adam/Assign_24^training/Adam/Assign_25^training/Adam/Assign_26^training/Adam/Assign_27^training/Adam/Assign_28^training/Adam/Assign_29^training/Adam/Assign_3^training/Adam/Assign_30^training/Adam/Assign_31^training/Adam/Assign_32^training/Adam/Assign_33^training/Adam/Assign_34^training/Adam/Assign_35^training/Adam/Assign_36^training/Adam/Assign_37^training/Adam/Assign_38^training/Adam/Assign_39^training/Adam/Assign_4^training/Adam/Assign_40^training/Adam/Assign_41^training/Adam/Assign_42^training/Adam/Assign_43^training/Adam/Assign_44^training/Adam/Assign_45^training/Adam/Assign_46^training/Adam/Assign_47^training/Adam/Assign_48^training/Adam/Assign_49^training/Adam/Assign_5^training/Adam/Assign_50^training/Adam/Assign_51^training/Adam/Assign_52^training/Adam/Assign_53^training/Adam/Assign_54^training/Adam/Assign_55^training/Adam/Assign_56^training/Adam/Assign_57^training/Adam/Assign_58^training/Adam/Assign_59^training/Adam/Assign_6^training/Adam/Assign_60^training/Adam/Assign_61^training/Adam/Assign_62^training/Adam/Assign_63^training/Adam/Assign_64^training/Adam/Assign_65^training/Adam/Assign_66^training/Adam/Assign_67^training/Adam/Assign_68^training/Adam/Assign_69^training/Adam/Assign_7^training/Adam/Assign_70^training/Adam/Assign_71^training/Adam/Assign_72^training/Adam/Assign_73^training/Adam/Assign_74^training/Adam/Assign_75^training/Adam/Assign_76^training/Adam/Assign_77^training/Adam/Assign_78^training/Adam/Assign_79^training/Adam/Assign_8^training/Adam/Assign_80^training/Adam/Assign_81^training/Adam/Assign_82^training/Adam/Assign_83^training/Adam/Assign_84^training/Adam/Assign_85^training/Adam/Assign_86^training/Adam/Assign_87^training/Adam/Assign_88^training/Adam/Assign_89^training/Adam/Assign_9^training/Adam/Assign_90^training/Adam/Assign_91^training/Adam/Assign_92^training/Adam/Assign_93^training/Adam/Assign_94^training/Adam/Assign_95^training/Adam/Assign_96^training/Adam/Assign_97^training/Adam/Assign_98^training/Adam/Assign_99^vad_bn2/AssignMovingAvg^vad_bn2/AssignMovingAvg_1^vad_bn3/AssignMovingAvg^vad_bn3/AssignMovingAvg_1

IsVariableInitialized_88IsVariableInitializedAdam/iterations*
_output_shapes
: *"
_class
loc:@Adam/iterations*
dtype0	
{
IsVariableInitialized_89IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

IsVariableInitialized_90IsVariableInitializedAdam/beta_1*
_output_shapes
: *
_class
loc:@Adam/beta_1*
dtype0

IsVariableInitialized_91IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_92IsVariableInitialized
Adam/decay*
_output_shapes
: *
_class
loc:@Adam/decay*
dtype0

IsVariableInitialized_93IsVariableInitializedtraining/Adam/Variable*
_output_shapes
: *)
_class
loc:@training/Adam/Variable*
dtype0

IsVariableInitialized_94IsVariableInitializedtraining/Adam/Variable_1*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_1*
dtype0

IsVariableInitialized_95IsVariableInitializedtraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_96IsVariableInitializedtraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 

IsVariableInitialized_97IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 

IsVariableInitialized_98IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 

IsVariableInitialized_99IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 

IsVariableInitialized_100IsVariableInitializedtraining/Adam/Variable_7*
dtype0*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_7

IsVariableInitialized_101IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 

IsVariableInitialized_102IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_103IsVariableInitializedtraining/Adam/Variable_10*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_10*
dtype0
 
IsVariableInitialized_104IsVariableInitializedtraining/Adam/Variable_11*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_11*
dtype0
 
IsVariableInitialized_105IsVariableInitializedtraining/Adam/Variable_12*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_12*
dtype0
 
IsVariableInitialized_106IsVariableInitializedtraining/Adam/Variable_13*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_13
 
IsVariableInitialized_107IsVariableInitializedtraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_108IsVariableInitializedtraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_109IsVariableInitializedtraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_110IsVariableInitializedtraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_111IsVariableInitializedtraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_112IsVariableInitializedtraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_113IsVariableInitializedtraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_114IsVariableInitializedtraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_115IsVariableInitializedtraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_116IsVariableInitializedtraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_117IsVariableInitializedtraining/Adam/Variable_24*,
_class"
 loc:@training/Adam/Variable_24*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_118IsVariableInitializedtraining/Adam/Variable_25*,
_class"
 loc:@training/Adam/Variable_25*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_119IsVariableInitializedtraining/Adam/Variable_26*,
_class"
 loc:@training/Adam/Variable_26*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_120IsVariableInitializedtraining/Adam/Variable_27*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_27*
dtype0
 
IsVariableInitialized_121IsVariableInitializedtraining/Adam/Variable_28*,
_class"
 loc:@training/Adam/Variable_28*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_122IsVariableInitializedtraining/Adam/Variable_29*,
_class"
 loc:@training/Adam/Variable_29*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_123IsVariableInitializedtraining/Adam/Variable_30*,
_class"
 loc:@training/Adam/Variable_30*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_124IsVariableInitializedtraining/Adam/Variable_31*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_31*
dtype0
 
IsVariableInitialized_125IsVariableInitializedtraining/Adam/Variable_32*,
_class"
 loc:@training/Adam/Variable_32*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_126IsVariableInitializedtraining/Adam/Variable_33*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_33
 
IsVariableInitialized_127IsVariableInitializedtraining/Adam/Variable_34*,
_class"
 loc:@training/Adam/Variable_34*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_128IsVariableInitializedtraining/Adam/Variable_35*,
_class"
 loc:@training/Adam/Variable_35*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_129IsVariableInitializedtraining/Adam/Variable_36*,
_class"
 loc:@training/Adam/Variable_36*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_130IsVariableInitializedtraining/Adam/Variable_37*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_37*
dtype0
 
IsVariableInitialized_131IsVariableInitializedtraining/Adam/Variable_38*,
_class"
 loc:@training/Adam/Variable_38*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_132IsVariableInitializedtraining/Adam/Variable_39*,
_class"
 loc:@training/Adam/Variable_39*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_133IsVariableInitializedtraining/Adam/Variable_40*,
_class"
 loc:@training/Adam/Variable_40*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_134IsVariableInitializedtraining/Adam/Variable_41*,
_class"
 loc:@training/Adam/Variable_41*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_135IsVariableInitializedtraining/Adam/Variable_42*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_42*
dtype0
 
IsVariableInitialized_136IsVariableInitializedtraining/Adam/Variable_43*,
_class"
 loc:@training/Adam/Variable_43*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_137IsVariableInitializedtraining/Adam/Variable_44*,
_class"
 loc:@training/Adam/Variable_44*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_138IsVariableInitializedtraining/Adam/Variable_45*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_45*
dtype0
 
IsVariableInitialized_139IsVariableInitializedtraining/Adam/Variable_46*,
_class"
 loc:@training/Adam/Variable_46*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_140IsVariableInitializedtraining/Adam/Variable_47*,
_class"
 loc:@training/Adam/Variable_47*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_141IsVariableInitializedtraining/Adam/Variable_48*,
_class"
 loc:@training/Adam/Variable_48*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_142IsVariableInitializedtraining/Adam/Variable_49*,
_class"
 loc:@training/Adam/Variable_49*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_143IsVariableInitializedtraining/Adam/Variable_50*,
_class"
 loc:@training/Adam/Variable_50*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_144IsVariableInitializedtraining/Adam/Variable_51*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_51*
dtype0
 
IsVariableInitialized_145IsVariableInitializedtraining/Adam/Variable_52*,
_class"
 loc:@training/Adam/Variable_52*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_146IsVariableInitializedtraining/Adam/Variable_53*,
_class"
 loc:@training/Adam/Variable_53*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_147IsVariableInitializedtraining/Adam/Variable_54*,
_class"
 loc:@training/Adam/Variable_54*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_148IsVariableInitializedtraining/Adam/Variable_55*,
_class"
 loc:@training/Adam/Variable_55*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_149IsVariableInitializedtraining/Adam/Variable_56*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_56
 
IsVariableInitialized_150IsVariableInitializedtraining/Adam/Variable_57*,
_class"
 loc:@training/Adam/Variable_57*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_151IsVariableInitializedtraining/Adam/Variable_58*,
_class"
 loc:@training/Adam/Variable_58*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_152IsVariableInitializedtraining/Adam/Variable_59*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_59
 
IsVariableInitialized_153IsVariableInitializedtraining/Adam/Variable_60*,
_class"
 loc:@training/Adam/Variable_60*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_154IsVariableInitializedtraining/Adam/Variable_61*,
_class"
 loc:@training/Adam/Variable_61*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_155IsVariableInitializedtraining/Adam/Variable_62*,
_class"
 loc:@training/Adam/Variable_62*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_156IsVariableInitializedtraining/Adam/Variable_63*,
_class"
 loc:@training/Adam/Variable_63*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_157IsVariableInitializedtraining/Adam/Variable_64*,
_class"
 loc:@training/Adam/Variable_64*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_158IsVariableInitializedtraining/Adam/Variable_65*,
_class"
 loc:@training/Adam/Variable_65*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_159IsVariableInitializedtraining/Adam/Variable_66*,
_class"
 loc:@training/Adam/Variable_66*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_160IsVariableInitializedtraining/Adam/Variable_67*,
_class"
 loc:@training/Adam/Variable_67*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_161IsVariableInitializedtraining/Adam/Variable_68*,
_class"
 loc:@training/Adam/Variable_68*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_162IsVariableInitializedtraining/Adam/Variable_69*,
_class"
 loc:@training/Adam/Variable_69*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_163IsVariableInitializedtraining/Adam/Variable_70*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_70
 
IsVariableInitialized_164IsVariableInitializedtraining/Adam/Variable_71*,
_class"
 loc:@training/Adam/Variable_71*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_165IsVariableInitializedtraining/Adam/Variable_72*,
_class"
 loc:@training/Adam/Variable_72*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_166IsVariableInitializedtraining/Adam/Variable_73*,
_class"
 loc:@training/Adam/Variable_73*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_167IsVariableInitializedtraining/Adam/Variable_74*,
_class"
 loc:@training/Adam/Variable_74*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_168IsVariableInitializedtraining/Adam/Variable_75*,
_class"
 loc:@training/Adam/Variable_75*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_169IsVariableInitializedtraining/Adam/Variable_76*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_76
 
IsVariableInitialized_170IsVariableInitializedtraining/Adam/Variable_77*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_77
 
IsVariableInitialized_171IsVariableInitializedtraining/Adam/Variable_78*,
_class"
 loc:@training/Adam/Variable_78*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_172IsVariableInitializedtraining/Adam/Variable_79*,
_class"
 loc:@training/Adam/Variable_79*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_173IsVariableInitializedtraining/Adam/Variable_80*,
_class"
 loc:@training/Adam/Variable_80*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_174IsVariableInitializedtraining/Adam/Variable_81*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_81
 
IsVariableInitialized_175IsVariableInitializedtraining/Adam/Variable_82*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_82*
dtype0
 
IsVariableInitialized_176IsVariableInitializedtraining/Adam/Variable_83*,
_class"
 loc:@training/Adam/Variable_83*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_177IsVariableInitializedtraining/Adam/Variable_84*,
_class"
 loc:@training/Adam/Variable_84*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_178IsVariableInitializedtraining/Adam/Variable_85*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_85*
dtype0
 
IsVariableInitialized_179IsVariableInitializedtraining/Adam/Variable_86*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_86
 
IsVariableInitialized_180IsVariableInitializedtraining/Adam/Variable_87*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_87*
dtype0
 
IsVariableInitialized_181IsVariableInitializedtraining/Adam/Variable_88*,
_class"
 loc:@training/Adam/Variable_88*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_182IsVariableInitializedtraining/Adam/Variable_89*,
_class"
 loc:@training/Adam/Variable_89*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_183IsVariableInitializedtraining/Adam/Variable_90*,
_class"
 loc:@training/Adam/Variable_90*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_184IsVariableInitializedtraining/Adam/Variable_91*,
_class"
 loc:@training/Adam/Variable_91*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_185IsVariableInitializedtraining/Adam/Variable_92*,
_class"
 loc:@training/Adam/Variable_92*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_186IsVariableInitializedtraining/Adam/Variable_93*,
_class"
 loc:@training/Adam/Variable_93*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_187IsVariableInitializedtraining/Adam/Variable_94*
dtype0*
_output_shapes
: *,
_class"
 loc:@training/Adam/Variable_94
 
IsVariableInitialized_188IsVariableInitializedtraining/Adam/Variable_95*,
_class"
 loc:@training/Adam/Variable_95*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_189IsVariableInitializedtraining/Adam/Variable_96*,
_class"
 loc:@training/Adam/Variable_96*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_190IsVariableInitializedtraining/Adam/Variable_97*,
_class"
 loc:@training/Adam/Variable_97*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_191IsVariableInitializedtraining/Adam/Variable_98*,
_class"
 loc:@training/Adam/Variable_98*
dtype0*
_output_shapes
: 
 
IsVariableInitialized_192IsVariableInitializedtraining/Adam/Variable_99*,
_class"
 loc:@training/Adam/Variable_99*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_193IsVariableInitializedtraining/Adam/Variable_100*
dtype0*
_output_shapes
: *-
_class#
!loc:@training/Adam/Variable_100
˘
IsVariableInitialized_194IsVariableInitializedtraining/Adam/Variable_101*-
_class#
!loc:@training/Adam/Variable_101*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_195IsVariableInitializedtraining/Adam/Variable_102*
_output_shapes
: *-
_class#
!loc:@training/Adam/Variable_102*
dtype0
˘
IsVariableInitialized_196IsVariableInitializedtraining/Adam/Variable_103*-
_class#
!loc:@training/Adam/Variable_103*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_197IsVariableInitializedtraining/Adam/Variable_104*
_output_shapes
: *-
_class#
!loc:@training/Adam/Variable_104*
dtype0
˘
IsVariableInitialized_198IsVariableInitializedtraining/Adam/Variable_105*-
_class#
!loc:@training/Adam/Variable_105*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_199IsVariableInitializedtraining/Adam/Variable_106*-
_class#
!loc:@training/Adam/Variable_106*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_200IsVariableInitializedtraining/Adam/Variable_107*-
_class#
!loc:@training/Adam/Variable_107*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_201IsVariableInitializedtraining/Adam/Variable_108*-
_class#
!loc:@training/Adam/Variable_108*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_202IsVariableInitializedtraining/Adam/Variable_109*
dtype0*
_output_shapes
: *-
_class#
!loc:@training/Adam/Variable_109
˘
IsVariableInitialized_203IsVariableInitializedtraining/Adam/Variable_110*-
_class#
!loc:@training/Adam/Variable_110*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_204IsVariableInitializedtraining/Adam/Variable_111*-
_class#
!loc:@training/Adam/Variable_111*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_205IsVariableInitializedtraining/Adam/Variable_112*
dtype0*
_output_shapes
: *-
_class#
!loc:@training/Adam/Variable_112
˘
IsVariableInitialized_206IsVariableInitializedtraining/Adam/Variable_113*-
_class#
!loc:@training/Adam/Variable_113*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_207IsVariableInitializedtraining/Adam/Variable_114*
_output_shapes
: *-
_class#
!loc:@training/Adam/Variable_114*
dtype0
˘
IsVariableInitialized_208IsVariableInitializedtraining/Adam/Variable_115*-
_class#
!loc:@training/Adam/Variable_115*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_209IsVariableInitializedtraining/Adam/Variable_116*-
_class#
!loc:@training/Adam/Variable_116*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_210IsVariableInitializedtraining/Adam/Variable_117*-
_class#
!loc:@training/Adam/Variable_117*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_211IsVariableInitializedtraining/Adam/Variable_118*-
_class#
!loc:@training/Adam/Variable_118*
dtype0*
_output_shapes
: 
˘
IsVariableInitialized_212IsVariableInitializedtraining/Adam/Variable_119*-
_class#
!loc:@training/Adam/Variable_119*
dtype0*
_output_shapes
: 
ć!
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign"^training/Adam/Variable_100/Assign"^training/Adam/Variable_101/Assign"^training/Adam/Variable_102/Assign"^training/Adam/Variable_103/Assign"^training/Adam/Variable_104/Assign"^training/Adam/Variable_105/Assign"^training/Adam/Variable_106/Assign"^training/Adam/Variable_107/Assign"^training/Adam/Variable_108/Assign"^training/Adam/Variable_109/Assign!^training/Adam/Variable_11/Assign"^training/Adam/Variable_110/Assign"^training/Adam/Variable_111/Assign"^training/Adam/Variable_112/Assign"^training/Adam/Variable_113/Assign"^training/Adam/Variable_114/Assign"^training/Adam/Variable_115/Assign"^training/Adam/Variable_116/Assign"^training/Adam/Variable_117/Assign"^training/Adam/Variable_118/Assign"^training/Adam/Variable_119/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign!^training/Adam/Variable_24/Assign!^training/Adam/Variable_25/Assign!^training/Adam/Variable_26/Assign!^training/Adam/Variable_27/Assign!^training/Adam/Variable_28/Assign!^training/Adam/Variable_29/Assign ^training/Adam/Variable_3/Assign!^training/Adam/Variable_30/Assign!^training/Adam/Variable_31/Assign!^training/Adam/Variable_32/Assign!^training/Adam/Variable_33/Assign!^training/Adam/Variable_34/Assign!^training/Adam/Variable_35/Assign!^training/Adam/Variable_36/Assign!^training/Adam/Variable_37/Assign!^training/Adam/Variable_38/Assign!^training/Adam/Variable_39/Assign ^training/Adam/Variable_4/Assign!^training/Adam/Variable_40/Assign!^training/Adam/Variable_41/Assign!^training/Adam/Variable_42/Assign!^training/Adam/Variable_43/Assign!^training/Adam/Variable_44/Assign!^training/Adam/Variable_45/Assign!^training/Adam/Variable_46/Assign!^training/Adam/Variable_47/Assign!^training/Adam/Variable_48/Assign!^training/Adam/Variable_49/Assign ^training/Adam/Variable_5/Assign!^training/Adam/Variable_50/Assign!^training/Adam/Variable_51/Assign!^training/Adam/Variable_52/Assign!^training/Adam/Variable_53/Assign!^training/Adam/Variable_54/Assign!^training/Adam/Variable_55/Assign!^training/Adam/Variable_56/Assign!^training/Adam/Variable_57/Assign!^training/Adam/Variable_58/Assign!^training/Adam/Variable_59/Assign ^training/Adam/Variable_6/Assign!^training/Adam/Variable_60/Assign!^training/Adam/Variable_61/Assign!^training/Adam/Variable_62/Assign!^training/Adam/Variable_63/Assign!^training/Adam/Variable_64/Assign!^training/Adam/Variable_65/Assign!^training/Adam/Variable_66/Assign!^training/Adam/Variable_67/Assign!^training/Adam/Variable_68/Assign!^training/Adam/Variable_69/Assign ^training/Adam/Variable_7/Assign!^training/Adam/Variable_70/Assign!^training/Adam/Variable_71/Assign!^training/Adam/Variable_72/Assign!^training/Adam/Variable_73/Assign!^training/Adam/Variable_74/Assign!^training/Adam/Variable_75/Assign!^training/Adam/Variable_76/Assign!^training/Adam/Variable_77/Assign!^training/Adam/Variable_78/Assign!^training/Adam/Variable_79/Assign ^training/Adam/Variable_8/Assign!^training/Adam/Variable_80/Assign!^training/Adam/Variable_81/Assign!^training/Adam/Variable_82/Assign!^training/Adam/Variable_83/Assign!^training/Adam/Variable_84/Assign!^training/Adam/Variable_85/Assign!^training/Adam/Variable_86/Assign!^training/Adam/Variable_87/Assign!^training/Adam/Variable_88/Assign!^training/Adam/Variable_89/Assign ^training/Adam/Variable_9/Assign!^training/Adam/Variable_90/Assign!^training/Adam/Variable_91/Assign!^training/Adam/Variable_92/Assign!^training/Adam/Variable_93/Assign!^training/Adam/Variable_94/Assign!^training/Adam/Variable_95/Assign!^training/Adam/Variable_96/Assign!^training/Adam/Variable_97/Assign!^training/Adam/Variable_98/Assign!^training/Adam/Variable_99/Assign
O
Placeholder_58Placeholder*
dtype0	*
_output_shapes
: *
shape: 
˘
	Assign_58AssignAdam/iterationsPlaceholder_58*
_output_shapes
: *
use_locking( *
T0	*"
_class
loc:@Adam/iterations*
validate_shape(
o
Placeholder_59Placeholder*
dtype0*&
_output_shapes
: *
shape: 
Ŕ
	Assign_59Assigntraining/Adam/VariablePlaceholder_59*&
_output_shapes
: *
use_locking( *
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(
W
Placeholder_60Placeholder*
_output_shapes
: *
shape: *
dtype0
¸
	Assign_60Assigntraining/Adam/Variable_1Placeholder_60*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
W
Placeholder_61Placeholder*
dtype0*
_output_shapes
: *
shape: 
¸
	Assign_61Assigntraining/Adam/Variable_2Placeholder_61*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
: 
W
Placeholder_62Placeholder*
shape: *
dtype0*
_output_shapes
: 
¸
	Assign_62Assigntraining/Adam/Variable_3Placeholder_62*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
: 
o
Placeholder_63Placeholder*
shape:  *
dtype0*&
_output_shapes
:  
Ä
	Assign_63Assigntraining/Adam/Variable_4Placeholder_63*&
_output_shapes
:  *
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(
W
Placeholder_64Placeholder*
dtype0*
_output_shapes
: *
shape: 
¸
	Assign_64Assigntraining/Adam/Variable_5Placeholder_64*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
W
Placeholder_65Placeholder*
dtype0*
_output_shapes
: *
shape: 
¸
	Assign_65Assigntraining/Adam/Variable_6Placeholder_65*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
: 
W
Placeholder_66Placeholder*
dtype0*
_output_shapes
: *
shape: 
¸
	Assign_66Assigntraining/Adam/Variable_7Placeholder_66*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
o
Placeholder_67Placeholder*
dtype0*&
_output_shapes
: @*
shape: @
Ä
	Assign_67Assigntraining/Adam/Variable_8Placeholder_67*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*&
_output_shapes
: @*
use_locking( 
W
Placeholder_68Placeholder*
shape:@*
dtype0*
_output_shapes
:@
¸
	Assign_68Assigntraining/Adam/Variable_9Placeholder_68*
use_locking( *
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:@
W
Placeholder_69Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ş
	Assign_69Assigntraining/Adam/Variable_10Placeholder_69*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:@
W
Placeholder_70Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ş
	Assign_70Assigntraining/Adam/Variable_11Placeholder_70*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:@
o
Placeholder_71Placeholder*
shape:@@*
dtype0*&
_output_shapes
:@@
Ć
	Assign_71Assigntraining/Adam/Variable_12Placeholder_71*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*&
_output_shapes
:@@*
use_locking( *
T0
W
Placeholder_72Placeholder*
shape:@*
dtype0*
_output_shapes
:@
ş
	Assign_72Assigntraining/Adam/Variable_13Placeholder_72*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_13
W
Placeholder_73Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ş
	Assign_73Assigntraining/Adam/Variable_14Placeholder_73*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_14
W
Placeholder_74Placeholder*
shape:@*
dtype0*
_output_shapes
:@
ş
	Assign_74Assigntraining/Adam/Variable_15Placeholder_74*
_output_shapes
:@*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(
q
Placeholder_75Placeholder*'
_output_shapes
:@*
shape:@*
dtype0
Ç
	Assign_75Assigntraining/Adam/Variable_16Placeholder_75*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*'
_output_shapes
:@
Y
Placeholder_76Placeholder*
dtype0*
_output_shapes	
:*
shape:
ť
	Assign_76Assigntraining/Adam/Variable_17Placeholder_76*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_17
Y
Placeholder_77Placeholder*
dtype0*
_output_shapes	
:*
shape:
ť
	Assign_77Assigntraining/Adam/Variable_18Placeholder_77*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes	
:
Y
Placeholder_78Placeholder*
dtype0*
_output_shapes	
:*
shape:
ť
	Assign_78Assigntraining/Adam/Variable_19Placeholder_78*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes	
:
s
Placeholder_79Placeholder*(
_output_shapes
:*
shape:*
dtype0
Č
	Assign_79Assigntraining/Adam/Variable_20Placeholder_79*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*(
_output_shapes
:*
use_locking( 
Y
Placeholder_80Placeholder*
dtype0*
_output_shapes	
:*
shape:
ť
	Assign_80Assigntraining/Adam/Variable_21Placeholder_80*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(
Y
Placeholder_81Placeholder*
dtype0*
_output_shapes	
:*
shape:
ť
	Assign_81Assigntraining/Adam/Variable_22Placeholder_81*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(
Y
Placeholder_82Placeholder*
dtype0*
_output_shapes	
:*
shape:
ť
	Assign_82Assigntraining/Adam/Variable_23Placeholder_82*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes	
:
s
Placeholder_83Placeholder*(
_output_shapes
:*
shape:*
dtype0
Č
	Assign_83Assigntraining/Adam/Variable_24Placeholder_83*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*(
_output_shapes
:
Y
Placeholder_84Placeholder*
_output_shapes	
:*
shape:*
dtype0
ť
	Assign_84Assigntraining/Adam/Variable_25Placeholder_84*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes	
:
Y
Placeholder_85Placeholder*
dtype0*
_output_shapes	
:*
shape:
ť
	Assign_85Assigntraining/Adam/Variable_26Placeholder_85*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes	
:
Y
Placeholder_86Placeholder*
dtype0*
_output_shapes	
:*
shape:
ť
	Assign_86Assigntraining/Adam/Variable_27Placeholder_86*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(
c
Placeholder_87Placeholder*
dtype0* 
_output_shapes
:
*
shape:

Ŕ
	Assign_87Assigntraining/Adam/Variable_28Placeholder_87*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(* 
_output_shapes
:

Y
Placeholder_88Placeholder*
_output_shapes	
:*
shape:*
dtype0
ť
	Assign_88Assigntraining/Adam/Variable_29Placeholder_88*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes	
:*
use_locking( 
c
Placeholder_89Placeholder*
dtype0* 
_output_shapes
:
*
shape:

Ŕ
	Assign_89Assigntraining/Adam/Variable_30Placeholder_89*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(* 
_output_shapes
:
*
use_locking( *
T0
Y
Placeholder_90Placeholder*
shape:*
dtype0*
_output_shapes	
:
ť
	Assign_90Assigntraining/Adam/Variable_31Placeholder_90*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(*
_output_shapes	
:
Y
Placeholder_91Placeholder*
shape:*
dtype0*
_output_shapes	
:
ť
	Assign_91Assigntraining/Adam/Variable_32Placeholder_91*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(
Y
Placeholder_92Placeholder*
_output_shapes	
:*
shape:*
dtype0
ť
	Assign_92Assigntraining/Adam/Variable_33Placeholder_92*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_33*
validate_shape(*
_output_shapes	
:
a
Placeholder_93Placeholder*
shape:	@*
dtype0*
_output_shapes
:	@
ż
	Assign_93Assigntraining/Adam/Variable_34Placeholder_93*
T0*,
_class"
 loc:@training/Adam/Variable_34*
validate_shape(*
_output_shapes
:	@*
use_locking( 
W
Placeholder_94Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ş
	Assign_94Assigntraining/Adam/Variable_35Placeholder_94*
_output_shapes
:@*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_35*
validate_shape(
W
Placeholder_95Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ş
	Assign_95Assigntraining/Adam/Variable_36Placeholder_95*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_36*
validate_shape(*
_output_shapes
:@
W
Placeholder_96Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ş
	Assign_96Assigntraining/Adam/Variable_37Placeholder_96*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_37*
validate_shape(*
_output_shapes
:@
_
Placeholder_97Placeholder*
shape
:@*
dtype0*
_output_shapes

:@
ž
	Assign_97Assigntraining/Adam/Variable_38Placeholder_97*
_output_shapes

:@*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_38*
validate_shape(
W
Placeholder_98Placeholder*
dtype0*
_output_shapes
:*
shape:
ş
	Assign_98Assigntraining/Adam/Variable_39Placeholder_98*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_39*
validate_shape(*
_output_shapes
:
o
Placeholder_99Placeholder*
dtype0*&
_output_shapes
: *
shape: 
Ć
	Assign_99Assigntraining/Adam/Variable_40Placeholder_99*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_40*
validate_shape(*&
_output_shapes
: 
X
Placeholder_100Placeholder*
dtype0*
_output_shapes
: *
shape: 
ź

Assign_100Assigntraining/Adam/Variable_41Placeholder_100*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_41*
validate_shape(*
_output_shapes
: 
X
Placeholder_101Placeholder*
dtype0*
_output_shapes
: *
shape: 
ź

Assign_101Assigntraining/Adam/Variable_42Placeholder_101*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_42*
validate_shape(*
_output_shapes
: 
X
Placeholder_102Placeholder*
dtype0*
_output_shapes
: *
shape: 
ź

Assign_102Assigntraining/Adam/Variable_43Placeholder_102*
_output_shapes
: *
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_43*
validate_shape(
p
Placeholder_103Placeholder*
shape:  *
dtype0*&
_output_shapes
:  
Č

Assign_103Assigntraining/Adam/Variable_44Placeholder_103*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_44*
validate_shape(*&
_output_shapes
:  
X
Placeholder_104Placeholder*
shape: *
dtype0*
_output_shapes
: 
ź

Assign_104Assigntraining/Adam/Variable_45Placeholder_104*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_45*
validate_shape(*
_output_shapes
: 
X
Placeholder_105Placeholder*
dtype0*
_output_shapes
: *
shape: 
ź

Assign_105Assigntraining/Adam/Variable_46Placeholder_105*
_output_shapes
: *
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_46*
validate_shape(
X
Placeholder_106Placeholder*
dtype0*
_output_shapes
: *
shape: 
ź

Assign_106Assigntraining/Adam/Variable_47Placeholder_106*
T0*,
_class"
 loc:@training/Adam/Variable_47*
validate_shape(*
_output_shapes
: *
use_locking( 
p
Placeholder_107Placeholder*
dtype0*&
_output_shapes
: @*
shape: @
Č

Assign_107Assigntraining/Adam/Variable_48Placeholder_107*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_48*
validate_shape(*&
_output_shapes
: @
X
Placeholder_108Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź

Assign_108Assigntraining/Adam/Variable_49Placeholder_108*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_49*
validate_shape(*
_output_shapes
:@
X
Placeholder_109Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź

Assign_109Assigntraining/Adam/Variable_50Placeholder_109*,
_class"
 loc:@training/Adam/Variable_50*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0
X
Placeholder_110Placeholder*
shape:@*
dtype0*
_output_shapes
:@
ź

Assign_110Assigntraining/Adam/Variable_51Placeholder_110*
T0*,
_class"
 loc:@training/Adam/Variable_51*
validate_shape(*
_output_shapes
:@*
use_locking( 
p
Placeholder_111Placeholder*
dtype0*&
_output_shapes
:@@*
shape:@@
Č

Assign_111Assigntraining/Adam/Variable_52Placeholder_111*&
_output_shapes
:@@*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_52*
validate_shape(
X
Placeholder_112Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź

Assign_112Assigntraining/Adam/Variable_53Placeholder_112*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_53*
validate_shape(*
_output_shapes
:@
X
Placeholder_113Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź

Assign_113Assigntraining/Adam/Variable_54Placeholder_113*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_54*
validate_shape(*
_output_shapes
:@
X
Placeholder_114Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź

Assign_114Assigntraining/Adam/Variable_55Placeholder_114*
T0*,
_class"
 loc:@training/Adam/Variable_55*
validate_shape(*
_output_shapes
:@*
use_locking( 
r
Placeholder_115Placeholder*
dtype0*'
_output_shapes
:@*
shape:@
É

Assign_115Assigntraining/Adam/Variable_56Placeholder_115*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_56*
validate_shape(*'
_output_shapes
:@
Z
Placeholder_116Placeholder*
dtype0*
_output_shapes	
:*
shape:
˝

Assign_116Assigntraining/Adam/Variable_57Placeholder_116*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_57*
validate_shape(*
_output_shapes	
:
Z
Placeholder_117Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝

Assign_117Assigntraining/Adam/Variable_58Placeholder_117*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_58*
validate_shape(*
_output_shapes	
:
Z
Placeholder_118Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝

Assign_118Assigntraining/Adam/Variable_59Placeholder_118*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_59*
validate_shape(*
_output_shapes	
:
t
Placeholder_119Placeholder*
shape:*
dtype0*(
_output_shapes
:
Ę

Assign_119Assigntraining/Adam/Variable_60Placeholder_119*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_60*
validate_shape(*(
_output_shapes
:
Z
Placeholder_120Placeholder*
dtype0*
_output_shapes	
:*
shape:
˝

Assign_120Assigntraining/Adam/Variable_61Placeholder_120*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_61*
validate_shape(
Z
Placeholder_121Placeholder*
_output_shapes	
:*
shape:*
dtype0
˝

Assign_121Assigntraining/Adam/Variable_62Placeholder_121*
T0*,
_class"
 loc:@training/Adam/Variable_62*
validate_shape(*
_output_shapes	
:*
use_locking( 
Z
Placeholder_122Placeholder*
dtype0*
_output_shapes	
:*
shape:
˝

Assign_122Assigntraining/Adam/Variable_63Placeholder_122*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_63
t
Placeholder_123Placeholder*
dtype0*(
_output_shapes
:*
shape:
Ę

Assign_123Assigntraining/Adam/Variable_64Placeholder_123*
validate_shape(*(
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_64
Z
Placeholder_124Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝

Assign_124Assigntraining/Adam/Variable_65Placeholder_124*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_65*
validate_shape(*
_output_shapes	
:
Z
Placeholder_125Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝

Assign_125Assigntraining/Adam/Variable_66Placeholder_125*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_66*
validate_shape(*
_output_shapes	
:
Z
Placeholder_126Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝

Assign_126Assigntraining/Adam/Variable_67Placeholder_126*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_67*
validate_shape(
d
Placeholder_127Placeholder*
dtype0* 
_output_shapes
:
*
shape:

Â

Assign_127Assigntraining/Adam/Variable_68Placeholder_127*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_68*
validate_shape(* 
_output_shapes
:

Z
Placeholder_128Placeholder*
dtype0*
_output_shapes	
:*
shape:
˝

Assign_128Assigntraining/Adam/Variable_69Placeholder_128*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_69*
validate_shape(*
_output_shapes	
:
d
Placeholder_129Placeholder*
shape:
*
dtype0* 
_output_shapes
:

Â

Assign_129Assigntraining/Adam/Variable_70Placeholder_129*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_70*
validate_shape(* 
_output_shapes
:

Z
Placeholder_130Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝

Assign_130Assigntraining/Adam/Variable_71Placeholder_130*
T0*,
_class"
 loc:@training/Adam/Variable_71*
validate_shape(*
_output_shapes	
:*
use_locking( 
Z
Placeholder_131Placeholder*
_output_shapes	
:*
shape:*
dtype0
˝

Assign_131Assigntraining/Adam/Variable_72Placeholder_131*,
_class"
 loc:@training/Adam/Variable_72*
validate_shape(*
_output_shapes	
:*
use_locking( *
T0
Z
Placeholder_132Placeholder*
shape:*
dtype0*
_output_shapes	
:
˝

Assign_132Assigntraining/Adam/Variable_73Placeholder_132*
_output_shapes	
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_73*
validate_shape(
b
Placeholder_133Placeholder*
dtype0*
_output_shapes
:	@*
shape:	@
Á

Assign_133Assigntraining/Adam/Variable_74Placeholder_133*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_74*
validate_shape(*
_output_shapes
:	@
X
Placeholder_134Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź

Assign_134Assigntraining/Adam/Variable_75Placeholder_134*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_75*
validate_shape(*
_output_shapes
:@
X
Placeholder_135Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź

Assign_135Assigntraining/Adam/Variable_76Placeholder_135*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_76*
validate_shape(*
_output_shapes
:@
X
Placeholder_136Placeholder*
dtype0*
_output_shapes
:@*
shape:@
ź

Assign_136Assigntraining/Adam/Variable_77Placeholder_136*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_77*
validate_shape(*
_output_shapes
:@
`
Placeholder_137Placeholder*
_output_shapes

:@*
shape
:@*
dtype0
Ŕ

Assign_137Assigntraining/Adam/Variable_78Placeholder_137*
validate_shape(*
_output_shapes

:@*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_78
X
Placeholder_138Placeholder*
shape:*
dtype0*
_output_shapes
:
ź

Assign_138Assigntraining/Adam/Variable_79Placeholder_138*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_79*
validate_shape(*
_output_shapes
:
X
Placeholder_139Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_139Assigntraining/Adam/Variable_80Placeholder_139*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_80*
validate_shape(*
_output_shapes
:
X
Placeholder_140Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_140Assigntraining/Adam/Variable_81Placeholder_140*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_81*
validate_shape(*
_output_shapes
:
X
Placeholder_141Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_141Assigntraining/Adam/Variable_82Placeholder_141*,
_class"
 loc:@training/Adam/Variable_82*
validate_shape(*
_output_shapes
:*
use_locking( *
T0
X
Placeholder_142Placeholder*
_output_shapes
:*
shape:*
dtype0
ź

Assign_142Assigntraining/Adam/Variable_83Placeholder_142*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_83*
validate_shape(*
_output_shapes
:
X
Placeholder_143Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_143Assigntraining/Adam/Variable_84Placeholder_143*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_84*
validate_shape(*
_output_shapes
:
X
Placeholder_144Placeholder*
shape:*
dtype0*
_output_shapes
:
ź

Assign_144Assigntraining/Adam/Variable_85Placeholder_144*
T0*,
_class"
 loc:@training/Adam/Variable_85*
validate_shape(*
_output_shapes
:*
use_locking( 
X
Placeholder_145Placeholder*
_output_shapes
:*
shape:*
dtype0
ź

Assign_145Assigntraining/Adam/Variable_86Placeholder_145*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_86*
validate_shape(*
_output_shapes
:
X
Placeholder_146Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_146Assigntraining/Adam/Variable_87Placeholder_146*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_87
X
Placeholder_147Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_147Assigntraining/Adam/Variable_88Placeholder_147*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_88*
validate_shape(*
_output_shapes
:
X
Placeholder_148Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_148Assigntraining/Adam/Variable_89Placeholder_148*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_89*
validate_shape(*
_output_shapes
:
X
Placeholder_149Placeholder*
shape:*
dtype0*
_output_shapes
:
ź

Assign_149Assigntraining/Adam/Variable_90Placeholder_149*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_90
X
Placeholder_150Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_150Assigntraining/Adam/Variable_91Placeholder_150*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_91*
validate_shape(*
_output_shapes
:
X
Placeholder_151Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_151Assigntraining/Adam/Variable_92Placeholder_151*
T0*,
_class"
 loc:@training/Adam/Variable_92*
validate_shape(*
_output_shapes
:*
use_locking( 
X
Placeholder_152Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_152Assigntraining/Adam/Variable_93Placeholder_152*
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_93*
validate_shape(
X
Placeholder_153Placeholder*
shape:*
dtype0*
_output_shapes
:
ź

Assign_153Assigntraining/Adam/Variable_94Placeholder_153*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_94*
validate_shape(*
_output_shapes
:
X
Placeholder_154Placeholder*
shape:*
dtype0*
_output_shapes
:
ź

Assign_154Assigntraining/Adam/Variable_95Placeholder_154*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_95*
validate_shape(*
_output_shapes
:
X
Placeholder_155Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_155Assigntraining/Adam/Variable_96Placeholder_155*
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_96*
validate_shape(
X
Placeholder_156Placeholder*
_output_shapes
:*
shape:*
dtype0
ź

Assign_156Assigntraining/Adam/Variable_97Placeholder_156*,
_class"
 loc:@training/Adam/Variable_97*
validate_shape(*
_output_shapes
:*
use_locking( *
T0
X
Placeholder_157Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_157Assigntraining/Adam/Variable_98Placeholder_157*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_98*
validate_shape(*
_output_shapes
:
X
Placeholder_158Placeholder*
dtype0*
_output_shapes
:*
shape:
ź

Assign_158Assigntraining/Adam/Variable_99Placeholder_158*
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@training/Adam/Variable_99*
validate_shape(
X
Placeholder_159Placeholder*
shape:*
dtype0*
_output_shapes
:
ž

Assign_159Assigntraining/Adam/Variable_100Placeholder_159*
_output_shapes
:*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_100*
validate_shape(
X
Placeholder_160Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_160Assigntraining/Adam/Variable_101Placeholder_160*-
_class#
!loc:@training/Adam/Variable_101*
validate_shape(*
_output_shapes
:*
use_locking( *
T0
X
Placeholder_161Placeholder*
shape:*
dtype0*
_output_shapes
:
ž

Assign_161Assigntraining/Adam/Variable_102Placeholder_161*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_102*
validate_shape(*
_output_shapes
:
X
Placeholder_162Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_162Assigntraining/Adam/Variable_103Placeholder_162*
_output_shapes
:*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_103*
validate_shape(
X
Placeholder_163Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_163Assigntraining/Adam/Variable_104Placeholder_163*
T0*-
_class#
!loc:@training/Adam/Variable_104*
validate_shape(*
_output_shapes
:*
use_locking( 
X
Placeholder_164Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_164Assigntraining/Adam/Variable_105Placeholder_164*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_105
X
Placeholder_165Placeholder*
shape:*
dtype0*
_output_shapes
:
ž

Assign_165Assigntraining/Adam/Variable_106Placeholder_165*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_106*
validate_shape(*
_output_shapes
:
X
Placeholder_166Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_166Assigntraining/Adam/Variable_107Placeholder_166*
validate_shape(*
_output_shapes
:*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_107
X
Placeholder_167Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_167Assigntraining/Adam/Variable_108Placeholder_167*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_108*
validate_shape(*
_output_shapes
:
X
Placeholder_168Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_168Assigntraining/Adam/Variable_109Placeholder_168*
_output_shapes
:*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_109*
validate_shape(
X
Placeholder_169Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_169Assigntraining/Adam/Variable_110Placeholder_169*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_110*
validate_shape(*
_output_shapes
:
X
Placeholder_170Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_170Assigntraining/Adam/Variable_111Placeholder_170*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_111*
validate_shape(*
_output_shapes
:
X
Placeholder_171Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_171Assigntraining/Adam/Variable_112Placeholder_171*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_112*
validate_shape(*
_output_shapes
:
X
Placeholder_172Placeholder*
_output_shapes
:*
shape:*
dtype0
ž

Assign_172Assigntraining/Adam/Variable_113Placeholder_172*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_113*
validate_shape(*
_output_shapes
:
X
Placeholder_173Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_173Assigntraining/Adam/Variable_114Placeholder_173*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_114*
validate_shape(*
_output_shapes
:
X
Placeholder_174Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_174Assigntraining/Adam/Variable_115Placeholder_174*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_115*
validate_shape(*
_output_shapes
:
X
Placeholder_175Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_175Assigntraining/Adam/Variable_116Placeholder_175*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_116*
validate_shape(*
_output_shapes
:
X
Placeholder_176Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_176Assigntraining/Adam/Variable_117Placeholder_176*-
_class#
!loc:@training/Adam/Variable_117*
validate_shape(*
_output_shapes
:*
use_locking( *
T0
X
Placeholder_177Placeholder*
_output_shapes
:*
shape:*
dtype0
ž

Assign_177Assigntraining/Adam/Variable_118Placeholder_177*-
_class#
!loc:@training/Adam/Variable_118*
validate_shape(*
_output_shapes
:*
use_locking( *
T0
X
Placeholder_178Placeholder*
dtype0*
_output_shapes
:*
shape:
ž

Assign_178Assigntraining/Adam/Variable_119Placeholder_178*
use_locking( *
T0*-
_class#
!loc:@training/Adam/Variable_119*
validate_shape(*
_output_shapes
:
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_5abfeff821aa416b8287a2fc840291fa/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
2
save/SaveV2/tensor_namesConst"/device:CPU:0*Á1
valueˇ1B´1ŰBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB(batch_normalization_1/moving_mean/biasedB,batch_normalization_1/moving_mean/local_stepB%batch_normalization_1/moving_varianceB,batch_normalization_1/moving_variance/biasedB0batch_normalization_1/moving_variance/local_stepBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB(batch_normalization_2/moving_mean/biasedB,batch_normalization_2/moving_mean/local_stepB%batch_normalization_2/moving_varianceB,batch_normalization_2/moving_variance/biasedB0batch_normalization_2/moving_variance/local_stepBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB(batch_normalization_3/moving_mean/biasedB,batch_normalization_3/moving_mean/local_stepB%batch_normalization_3/moving_varianceB,batch_normalization_3/moving_variance/biasedB0batch_normalization_3/moving_variance/local_stepBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB(batch_normalization_4/moving_mean/biasedB,batch_normalization_4/moving_mean/local_stepB%batch_normalization_4/moving_varianceB,batch_normalization_4/moving_variance/biasedB0batch_normalization_4/moving_variance/local_stepBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB(batch_normalization_5/moving_mean/biasedB,batch_normalization_5/moving_mean/local_stepB%batch_normalization_5/moving_varianceB,batch_normalization_5/moving_variance/biasedB0batch_normalization_5/moving_variance/local_stepBbatch_normalization_6/betaBbatch_normalization_6/gammaB!batch_normalization_6/moving_meanB(batch_normalization_6/moving_mean/biasedB,batch_normalization_6/moving_mean/local_stepB%batch_normalization_6/moving_varianceB,batch_normalization_6/moving_variance/biasedB0batch_normalization_6/moving_variance/local_stepBbatch_normalization_7/betaBbatch_normalization_7/gammaB!batch_normalization_7/moving_meanB(batch_normalization_7/moving_mean/biasedB,batch_normalization_7/moving_mean/local_stepB%batch_normalization_7/moving_varianceB,batch_normalization_7/moving_variance/biasedB0batch_normalization_7/moving_variance/local_stepBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBconv2d_5/biasBconv2d_5/kernelBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBtime_distributed_1/biasBtime_distributed_1/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_100Btraining/Adam/Variable_101Btraining/Adam/Variable_102Btraining/Adam/Variable_103Btraining/Adam/Variable_104Btraining/Adam/Variable_105Btraining/Adam/Variable_106Btraining/Adam/Variable_107Btraining/Adam/Variable_108Btraining/Adam/Variable_109Btraining/Adam/Variable_11Btraining/Adam/Variable_110Btraining/Adam/Variable_111Btraining/Adam/Variable_112Btraining/Adam/Variable_113Btraining/Adam/Variable_114Btraining/Adam/Variable_115Btraining/Adam/Variable_116Btraining/Adam/Variable_117Btraining/Adam/Variable_118Btraining/Adam/Variable_119Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_30Btraining/Adam/Variable_31Btraining/Adam/Variable_32Btraining/Adam/Variable_33Btraining/Adam/Variable_34Btraining/Adam/Variable_35Btraining/Adam/Variable_36Btraining/Adam/Variable_37Btraining/Adam/Variable_38Btraining/Adam/Variable_39Btraining/Adam/Variable_4Btraining/Adam/Variable_40Btraining/Adam/Variable_41Btraining/Adam/Variable_42Btraining/Adam/Variable_43Btraining/Adam/Variable_44Btraining/Adam/Variable_45Btraining/Adam/Variable_46Btraining/Adam/Variable_47Btraining/Adam/Variable_48Btraining/Adam/Variable_49Btraining/Adam/Variable_5Btraining/Adam/Variable_50Btraining/Adam/Variable_51Btraining/Adam/Variable_52Btraining/Adam/Variable_53Btraining/Adam/Variable_54Btraining/Adam/Variable_55Btraining/Adam/Variable_56Btraining/Adam/Variable_57Btraining/Adam/Variable_58Btraining/Adam/Variable_59Btraining/Adam/Variable_6Btraining/Adam/Variable_60Btraining/Adam/Variable_61Btraining/Adam/Variable_62Btraining/Adam/Variable_63Btraining/Adam/Variable_64Btraining/Adam/Variable_65Btraining/Adam/Variable_66Btraining/Adam/Variable_67Btraining/Adam/Variable_68Btraining/Adam/Variable_69Btraining/Adam/Variable_7Btraining/Adam/Variable_70Btraining/Adam/Variable_71Btraining/Adam/Variable_72Btraining/Adam/Variable_73Btraining/Adam/Variable_74Btraining/Adam/Variable_75Btraining/Adam/Variable_76Btraining/Adam/Variable_77Btraining/Adam/Variable_78Btraining/Adam/Variable_79Btraining/Adam/Variable_8Btraining/Adam/Variable_80Btraining/Adam/Variable_81Btraining/Adam/Variable_82Btraining/Adam/Variable_83Btraining/Adam/Variable_84Btraining/Adam/Variable_85Btraining/Adam/Variable_86Btraining/Adam/Variable_87Btraining/Adam/Variable_88Btraining/Adam/Variable_89Btraining/Adam/Variable_9Btraining/Adam/Variable_90Btraining/Adam/Variable_91Btraining/Adam/Variable_92Btraining/Adam/Variable_93Btraining/Adam/Variable_94Btraining/Adam/Variable_95Btraining/Adam/Variable_96Btraining/Adam/Variable_97Btraining/Adam/Variable_98Btraining/Adam/Variable_99Bvad_bn2/betaBvad_bn2/gammaBvad_bn2/moving_meanBvad_bn2/moving_mean/biasedBvad_bn2/moving_mean/local_stepBvad_bn2/moving_varianceBvad_bn2/moving_variance/biasedB"vad_bn2/moving_variance/local_stepBvad_bn3/betaBvad_bn3/gammaBvad_bn3/moving_meanBvad_bn3/moving_mean/biasedBvad_bn3/moving_mean/local_stepBvad_bn3/moving_varianceBvad_bn3/moving_variance/biasedB"vad_bn3/moving_variance/local_stepBvad_fc2/biasBvad_fc2/kernelBvad_fc3/biasBvad_fc3/kernelBvad_prediction_layer/biasBvad_prediction_layer/kernel*
dtype0*
_output_shapes	
:Ű
­
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes	
:Ű*Ě
valueÂBżŰB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
4
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrbatch_normalization_1/betabatch_normalization_1/gamma!batch_normalization_1/moving_mean(batch_normalization_1/moving_mean/biased,batch_normalization_1/moving_mean/local_step%batch_normalization_1/moving_variance,batch_normalization_1/moving_variance/biased0batch_normalization_1/moving_variance/local_stepbatch_normalization_2/betabatch_normalization_2/gamma!batch_normalization_2/moving_mean(batch_normalization_2/moving_mean/biased,batch_normalization_2/moving_mean/local_step%batch_normalization_2/moving_variance,batch_normalization_2/moving_variance/biased0batch_normalization_2/moving_variance/local_stepbatch_normalization_3/betabatch_normalization_3/gamma!batch_normalization_3/moving_mean(batch_normalization_3/moving_mean/biased,batch_normalization_3/moving_mean/local_step%batch_normalization_3/moving_variance,batch_normalization_3/moving_variance/biased0batch_normalization_3/moving_variance/local_stepbatch_normalization_4/betabatch_normalization_4/gamma!batch_normalization_4/moving_mean(batch_normalization_4/moving_mean/biased,batch_normalization_4/moving_mean/local_step%batch_normalization_4/moving_variance,batch_normalization_4/moving_variance/biased0batch_normalization_4/moving_variance/local_stepbatch_normalization_5/betabatch_normalization_5/gamma!batch_normalization_5/moving_mean(batch_normalization_5/moving_mean/biased,batch_normalization_5/moving_mean/local_step%batch_normalization_5/moving_variance,batch_normalization_5/moving_variance/biased0batch_normalization_5/moving_variance/local_stepbatch_normalization_6/betabatch_normalization_6/gamma!batch_normalization_6/moving_mean(batch_normalization_6/moving_mean/biased,batch_normalization_6/moving_mean/local_step%batch_normalization_6/moving_variance,batch_normalization_6/moving_variance/biased0batch_normalization_6/moving_variance/local_stepbatch_normalization_7/betabatch_normalization_7/gamma!batch_normalization_7/moving_mean(batch_normalization_7/moving_mean/biased,batch_normalization_7/moving_mean/local_step%batch_normalization_7/moving_variance,batch_normalization_7/moving_variance/biased0batch_normalization_7/moving_variance/local_stepconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernelconv2d_4/biasconv2d_4/kernelconv2d_5/biasconv2d_5/kernelconv2d_6/biasconv2d_6/kernelconv2d_7/biasconv2d_7/kerneltime_distributed_1/biastime_distributed_1/kerneltraining/Adam/Variabletraining/Adam/Variable_1training/Adam/Variable_10training/Adam/Variable_100training/Adam/Variable_101training/Adam/Variable_102training/Adam/Variable_103training/Adam/Variable_104training/Adam/Variable_105training/Adam/Variable_106training/Adam/Variable_107training/Adam/Variable_108training/Adam/Variable_109training/Adam/Variable_11training/Adam/Variable_110training/Adam/Variable_111training/Adam/Variable_112training/Adam/Variable_113training/Adam/Variable_114training/Adam/Variable_115training/Adam/Variable_116training/Adam/Variable_117training/Adam/Variable_118training/Adam/Variable_119training/Adam/Variable_12training/Adam/Variable_13training/Adam/Variable_14training/Adam/Variable_15training/Adam/Variable_16training/Adam/Variable_17training/Adam/Variable_18training/Adam/Variable_19training/Adam/Variable_2training/Adam/Variable_20training/Adam/Variable_21training/Adam/Variable_22training/Adam/Variable_23training/Adam/Variable_24training/Adam/Variable_25training/Adam/Variable_26training/Adam/Variable_27training/Adam/Variable_28training/Adam/Variable_29training/Adam/Variable_3training/Adam/Variable_30training/Adam/Variable_31training/Adam/Variable_32training/Adam/Variable_33training/Adam/Variable_34training/Adam/Variable_35training/Adam/Variable_36training/Adam/Variable_37training/Adam/Variable_38training/Adam/Variable_39training/Adam/Variable_4training/Adam/Variable_40training/Adam/Variable_41training/Adam/Variable_42training/Adam/Variable_43training/Adam/Variable_44training/Adam/Variable_45training/Adam/Variable_46training/Adam/Variable_47training/Adam/Variable_48training/Adam/Variable_49training/Adam/Variable_5training/Adam/Variable_50training/Adam/Variable_51training/Adam/Variable_52training/Adam/Variable_53training/Adam/Variable_54training/Adam/Variable_55training/Adam/Variable_56training/Adam/Variable_57training/Adam/Variable_58training/Adam/Variable_59training/Adam/Variable_6training/Adam/Variable_60training/Adam/Variable_61training/Adam/Variable_62training/Adam/Variable_63training/Adam/Variable_64training/Adam/Variable_65training/Adam/Variable_66training/Adam/Variable_67training/Adam/Variable_68training/Adam/Variable_69training/Adam/Variable_7training/Adam/Variable_70training/Adam/Variable_71training/Adam/Variable_72training/Adam/Variable_73training/Adam/Variable_74training/Adam/Variable_75training/Adam/Variable_76training/Adam/Variable_77training/Adam/Variable_78training/Adam/Variable_79training/Adam/Variable_8training/Adam/Variable_80training/Adam/Variable_81training/Adam/Variable_82training/Adam/Variable_83training/Adam/Variable_84training/Adam/Variable_85training/Adam/Variable_86training/Adam/Variable_87training/Adam/Variable_88training/Adam/Variable_89training/Adam/Variable_9training/Adam/Variable_90training/Adam/Variable_91training/Adam/Variable_92training/Adam/Variable_93training/Adam/Variable_94training/Adam/Variable_95training/Adam/Variable_96training/Adam/Variable_97training/Adam/Variable_98training/Adam/Variable_99vad_bn2/betavad_bn2/gammavad_bn2/moving_meanvad_bn2/moving_mean/biasedvad_bn2/moving_mean/local_stepvad_bn2/moving_variancevad_bn2/moving_variance/biased"vad_bn2/moving_variance/local_stepvad_bn3/betavad_bn3/gammavad_bn3/moving_meanvad_bn3/moving_mean/biasedvad_bn3/moving_mean/local_stepvad_bn3/moving_variancevad_bn3/moving_variance/biased"vad_bn3/moving_variance/local_stepvad_fc2/biasvad_fc2/kernelvad_fc3/biasvad_fc3/kernelvad_prediction_layer/biasvad_prediction_layer/kernel"/device:CPU:0*ě
dtypesá
Ţ2Ű	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ą2
save/RestoreV2/tensor_namesConst"/device:CPU:0*Á1
valueˇ1B´1ŰBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB(batch_normalization_1/moving_mean/biasedB,batch_normalization_1/moving_mean/local_stepB%batch_normalization_1/moving_varianceB,batch_normalization_1/moving_variance/biasedB0batch_normalization_1/moving_variance/local_stepBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB(batch_normalization_2/moving_mean/biasedB,batch_normalization_2/moving_mean/local_stepB%batch_normalization_2/moving_varianceB,batch_normalization_2/moving_variance/biasedB0batch_normalization_2/moving_variance/local_stepBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB(batch_normalization_3/moving_mean/biasedB,batch_normalization_3/moving_mean/local_stepB%batch_normalization_3/moving_varianceB,batch_normalization_3/moving_variance/biasedB0batch_normalization_3/moving_variance/local_stepBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB(batch_normalization_4/moving_mean/biasedB,batch_normalization_4/moving_mean/local_stepB%batch_normalization_4/moving_varianceB,batch_normalization_4/moving_variance/biasedB0batch_normalization_4/moving_variance/local_stepBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB(batch_normalization_5/moving_mean/biasedB,batch_normalization_5/moving_mean/local_stepB%batch_normalization_5/moving_varianceB,batch_normalization_5/moving_variance/biasedB0batch_normalization_5/moving_variance/local_stepBbatch_normalization_6/betaBbatch_normalization_6/gammaB!batch_normalization_6/moving_meanB(batch_normalization_6/moving_mean/biasedB,batch_normalization_6/moving_mean/local_stepB%batch_normalization_6/moving_varianceB,batch_normalization_6/moving_variance/biasedB0batch_normalization_6/moving_variance/local_stepBbatch_normalization_7/betaBbatch_normalization_7/gammaB!batch_normalization_7/moving_meanB(batch_normalization_7/moving_mean/biasedB,batch_normalization_7/moving_mean/local_stepB%batch_normalization_7/moving_varianceB,batch_normalization_7/moving_variance/biasedB0batch_normalization_7/moving_variance/local_stepBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBconv2d_5/biasBconv2d_5/kernelBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBtime_distributed_1/biasBtime_distributed_1/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_100Btraining/Adam/Variable_101Btraining/Adam/Variable_102Btraining/Adam/Variable_103Btraining/Adam/Variable_104Btraining/Adam/Variable_105Btraining/Adam/Variable_106Btraining/Adam/Variable_107Btraining/Adam/Variable_108Btraining/Adam/Variable_109Btraining/Adam/Variable_11Btraining/Adam/Variable_110Btraining/Adam/Variable_111Btraining/Adam/Variable_112Btraining/Adam/Variable_113Btraining/Adam/Variable_114Btraining/Adam/Variable_115Btraining/Adam/Variable_116Btraining/Adam/Variable_117Btraining/Adam/Variable_118Btraining/Adam/Variable_119Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_30Btraining/Adam/Variable_31Btraining/Adam/Variable_32Btraining/Adam/Variable_33Btraining/Adam/Variable_34Btraining/Adam/Variable_35Btraining/Adam/Variable_36Btraining/Adam/Variable_37Btraining/Adam/Variable_38Btraining/Adam/Variable_39Btraining/Adam/Variable_4Btraining/Adam/Variable_40Btraining/Adam/Variable_41Btraining/Adam/Variable_42Btraining/Adam/Variable_43Btraining/Adam/Variable_44Btraining/Adam/Variable_45Btraining/Adam/Variable_46Btraining/Adam/Variable_47Btraining/Adam/Variable_48Btraining/Adam/Variable_49Btraining/Adam/Variable_5Btraining/Adam/Variable_50Btraining/Adam/Variable_51Btraining/Adam/Variable_52Btraining/Adam/Variable_53Btraining/Adam/Variable_54Btraining/Adam/Variable_55Btraining/Adam/Variable_56Btraining/Adam/Variable_57Btraining/Adam/Variable_58Btraining/Adam/Variable_59Btraining/Adam/Variable_6Btraining/Adam/Variable_60Btraining/Adam/Variable_61Btraining/Adam/Variable_62Btraining/Adam/Variable_63Btraining/Adam/Variable_64Btraining/Adam/Variable_65Btraining/Adam/Variable_66Btraining/Adam/Variable_67Btraining/Adam/Variable_68Btraining/Adam/Variable_69Btraining/Adam/Variable_7Btraining/Adam/Variable_70Btraining/Adam/Variable_71Btraining/Adam/Variable_72Btraining/Adam/Variable_73Btraining/Adam/Variable_74Btraining/Adam/Variable_75Btraining/Adam/Variable_76Btraining/Adam/Variable_77Btraining/Adam/Variable_78Btraining/Adam/Variable_79Btraining/Adam/Variable_8Btraining/Adam/Variable_80Btraining/Adam/Variable_81Btraining/Adam/Variable_82Btraining/Adam/Variable_83Btraining/Adam/Variable_84Btraining/Adam/Variable_85Btraining/Adam/Variable_86Btraining/Adam/Variable_87Btraining/Adam/Variable_88Btraining/Adam/Variable_89Btraining/Adam/Variable_9Btraining/Adam/Variable_90Btraining/Adam/Variable_91Btraining/Adam/Variable_92Btraining/Adam/Variable_93Btraining/Adam/Variable_94Btraining/Adam/Variable_95Btraining/Adam/Variable_96Btraining/Adam/Variable_97Btraining/Adam/Variable_98Btraining/Adam/Variable_99Bvad_bn2/betaBvad_bn2/gammaBvad_bn2/moving_meanBvad_bn2/moving_mean/biasedBvad_bn2/moving_mean/local_stepBvad_bn2/moving_varianceBvad_bn2/moving_variance/biasedB"vad_bn2/moving_variance/local_stepBvad_bn3/betaBvad_bn3/gammaBvad_bn3/moving_meanBvad_bn3/moving_mean/biasedBvad_bn3/moving_mean/local_stepBvad_bn3/moving_varianceBvad_bn3/moving_variance/biasedB"vad_bn3/moving_variance/local_stepBvad_fc2/biasBvad_fc2/kernelBvad_fc3/biasBvad_fc3/kernelBvad_prediction_layer/biasBvad_prediction_layer/kernel*
dtype0*
_output_shapes	
:Ű
°
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ě
valueÂBżŰB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:Ű
č	
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapesď
ě:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*ě
dtypesá
Ţ2Ű	

save/AssignAssignAdam/beta_1save/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(
 
save/Assign_1AssignAdam/beta_2save/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/beta_2

save/Assign_2Assign
Adam/decaysave/RestoreV2:2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/decay
¨
save/Assign_3AssignAdam/iterationssave/RestoreV2:3*
use_locking(*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: 

save/Assign_4AssignAdam/lrsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: 
Â
save/Assign_5Assignbatch_normalization_1/betasave/RestoreV2:5*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ä
save/Assign_6Assignbatch_normalization_1/gammasave/RestoreV2:6*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
: 
Đ
save/Assign_7Assign!batch_normalization_1/moving_meansave/RestoreV2:7*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
×
save/Assign_8Assign(batch_normalization_1/moving_mean/biasedsave/RestoreV2:8*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
: 
×
save/Assign_9Assign,batch_normalization_1/moving_mean/local_stepsave/RestoreV2:9*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
: 
Ú
save/Assign_10Assign%batch_normalization_1/moving_variancesave/RestoreV2:10*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
á
save/Assign_11Assign,batch_normalization_1/moving_variance/biasedsave/RestoreV2:11*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
á
save/Assign_12Assign0batch_normalization_1/moving_variance/local_stepsave/RestoreV2:12*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
Ä
save/Assign_13Assignbatch_normalization_2/betasave/RestoreV2:13*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
: 
Ć
save/Assign_14Assignbatch_normalization_2/gammasave/RestoreV2:14*
_output_shapes
: *
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(
Ň
save/Assign_15Assign!batch_normalization_2/moving_meansave/RestoreV2:15*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ů
save/Assign_16Assign(batch_normalization_2/moving_mean/biasedsave/RestoreV2:16*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
: 
Ů
save/Assign_17Assign,batch_normalization_2/moving_mean/local_stepsave/RestoreV2:17*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
: 
Ú
save/Assign_18Assign%batch_normalization_2/moving_variancesave/RestoreV2:18*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
: 
á
save/Assign_19Assign,batch_normalization_2/moving_variance/biasedsave/RestoreV2:19*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
: 
á
save/Assign_20Assign0batch_normalization_2/moving_variance/local_stepsave/RestoreV2:20*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
Ä
save/Assign_21Assignbatch_normalization_3/betasave/RestoreV2:21*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes
:@
Ć
save/Assign_22Assignbatch_normalization_3/gammasave/RestoreV2:22*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ň
save/Assign_23Assign!batch_normalization_3/moving_meansave/RestoreV2:23*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
:@
Ů
save/Assign_24Assign(batch_normalization_3/moving_mean/biasedsave/RestoreV2:24*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(
Ů
save/Assign_25Assign,batch_normalization_3/moving_mean/local_stepsave/RestoreV2:25*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
Ú
save/Assign_26Assign%batch_normalization_3/moving_variancesave/RestoreV2:26*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(
á
save/Assign_27Assign,batch_normalization_3/moving_variance/biasedsave/RestoreV2:27*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
á
save/Assign_28Assign0batch_normalization_3/moving_variance/local_stepsave/RestoreV2:28*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes
: 
Ä
save/Assign_29Assignbatch_normalization_4/betasave/RestoreV2:29*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta
Ć
save/Assign_30Assignbatch_normalization_4/gammasave/RestoreV2:30*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma
Ň
save/Assign_31Assign!batch_normalization_4/moving_meansave/RestoreV2:31*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
Ů
save/Assign_32Assign(batch_normalization_4/moving_mean/biasedsave/RestoreV2:32*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
:@
Ů
save/Assign_33Assign,batch_normalization_4/moving_mean/local_stepsave/RestoreV2:33*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
: 
Ú
save/Assign_34Assign%batch_normalization_4/moving_variancesave/RestoreV2:34*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
á
save/Assign_35Assign,batch_normalization_4/moving_variance/biasedsave/RestoreV2:35*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
á
save/Assign_36Assign0batch_normalization_4/moving_variance/local_stepsave/RestoreV2:36*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
Ĺ
save/Assign_37Assignbatch_normalization_5/betasave/RestoreV2:37*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:
Ç
save/Assign_38Assignbatch_normalization_5/gammasave/RestoreV2:38*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ó
save/Assign_39Assign!batch_normalization_5/moving_meansave/RestoreV2:39*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ú
save/Assign_40Assign(batch_normalization_5/moving_mean/biasedsave/RestoreV2:40*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
Ů
save/Assign_41Assign,batch_normalization_5/moving_mean/local_stepsave/RestoreV2:41*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes
: 
Ű
save/Assign_42Assign%batch_normalization_5/moving_variancesave/RestoreV2:42*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance
â
save/Assign_43Assign,batch_normalization_5/moving_variance/biasedsave/RestoreV2:43*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
á
save/Assign_44Assign0batch_normalization_5/moving_variance/local_stepsave/RestoreV2:44*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(
Ĺ
save/Assign_45Assignbatch_normalization_6/betasave/RestoreV2:45*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ç
save/Assign_46Assignbatch_normalization_6/gammasave/RestoreV2:46*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:
Ó
save/Assign_47Assign!batch_normalization_6/moving_meansave/RestoreV2:47*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:
Ú
save/Assign_48Assign(batch_normalization_6/moving_mean/biasedsave/RestoreV2:48*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:
Ů
save/Assign_49Assign,batch_normalization_6/moving_mean/local_stepsave/RestoreV2:49*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes
: 
Ű
save/Assign_50Assign%batch_normalization_6/moving_variancesave/RestoreV2:50*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
â
save/Assign_51Assign,batch_normalization_6/moving_variance/biasedsave/RestoreV2:51*
_output_shapes	
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(
á
save/Assign_52Assign0batch_normalization_6/moving_variance/local_stepsave/RestoreV2:52*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance
Ĺ
save/Assign_53Assignbatch_normalization_7/betasave/RestoreV2:53*
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
Ç
save/Assign_54Assignbatch_normalization_7/gammasave/RestoreV2:54*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:
Ó
save/Assign_55Assign!batch_normalization_7/moving_meansave/RestoreV2:55*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes	
:
Ú
save/Assign_56Assign(batch_normalization_7/moving_mean/biasedsave/RestoreV2:56*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ů
save/Assign_57Assign,batch_normalization_7/moving_mean/local_stepsave/RestoreV2:57*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes
: 
Ű
save/Assign_58Assign%batch_normalization_7/moving_variancesave/RestoreV2:58*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
â
save/Assign_59Assign,batch_normalization_7/moving_variance/biasedsave/RestoreV2:59*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:
á
save/Assign_60Assign0batch_normalization_7/moving_variance/local_stepsave/RestoreV2:60*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes
: 
Ş
save/Assign_61Assignconv2d_1/biassave/RestoreV2:61*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
ş
save/Assign_62Assignconv2d_1/kernelsave/RestoreV2:62*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
Ş
save/Assign_63Assignconv2d_2/biassave/RestoreV2:63*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(
ş
save/Assign_64Assignconv2d_2/kernelsave/RestoreV2:64*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0
Ş
save/Assign_65Assignconv2d_3/biassave/RestoreV2:65*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias
ş
save/Assign_66Assignconv2d_3/kernelsave/RestoreV2:66*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Ş
save/Assign_67Assignconv2d_4/biassave/RestoreV2:67*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes
:@
ş
save/Assign_68Assignconv2d_4/kernelsave/RestoreV2:68*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:@@
Ť
save/Assign_69Assignconv2d_5/biassave/RestoreV2:69*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias
ť
save/Assign_70Assignconv2d_5/kernelsave/RestoreV2:70*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0
Ť
save/Assign_71Assignconv2d_6/biassave/RestoreV2:71*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes	
:
ź
save/Assign_72Assignconv2d_6/kernelsave/RestoreV2:72*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@conv2d_6/kernel
Ť
save/Assign_73Assignconv2d_7/biassave/RestoreV2:73*
T0* 
_class
loc:@conv2d_7/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ź
save/Assign_74Assignconv2d_7/kernelsave/RestoreV2:74*
use_locking(*
T0*"
_class
loc:@conv2d_7/kernel*
validate_shape(*(
_output_shapes
:
ż
save/Assign_75Assigntime_distributed_1/biassave/RestoreV2:75*
use_locking(*
T0**
_class 
loc:@time_distributed_1/bias*
validate_shape(*
_output_shapes	
:
Č
save/Assign_76Assigntime_distributed_1/kernelsave/RestoreV2:76*
use_locking(*
T0*,
_class"
 loc:@time_distributed_1/kernel*
validate_shape(* 
_output_shapes
:

Č
save/Assign_77Assigntraining/Adam/Variablesave/RestoreV2:77*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*&
_output_shapes
: 
Ŕ
save/Assign_78Assigntraining/Adam/Variable_1save/RestoreV2:78*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
Â
save/Assign_79Assigntraining/Adam/Variable_10save/RestoreV2:79*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:@
Ä
save/Assign_80Assigntraining/Adam/Variable_100save/RestoreV2:80*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_100
Ä
save/Assign_81Assigntraining/Adam/Variable_101save/RestoreV2:81*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_101*
validate_shape(*
_output_shapes
:
Ä
save/Assign_82Assigntraining/Adam/Variable_102save/RestoreV2:82*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_102*
validate_shape(*
_output_shapes
:
Ä
save/Assign_83Assigntraining/Adam/Variable_103save/RestoreV2:83*-
_class#
!loc:@training/Adam/Variable_103*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ä
save/Assign_84Assigntraining/Adam/Variable_104save/RestoreV2:84*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_104*
validate_shape(
Ä
save/Assign_85Assigntraining/Adam/Variable_105save/RestoreV2:85*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_105*
validate_shape(*
_output_shapes
:
Ä
save/Assign_86Assigntraining/Adam/Variable_106save/RestoreV2:86*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_106
Ä
save/Assign_87Assigntraining/Adam/Variable_107save/RestoreV2:87*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_107
Ä
save/Assign_88Assigntraining/Adam/Variable_108save/RestoreV2:88*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_108
Ä
save/Assign_89Assigntraining/Adam/Variable_109save/RestoreV2:89*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_109*
validate_shape(*
_output_shapes
:
Â
save/Assign_90Assigntraining/Adam/Variable_11save/RestoreV2:90*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:@
Ä
save/Assign_91Assigntraining/Adam/Variable_110save/RestoreV2:91*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_110*
validate_shape(*
_output_shapes
:
Ä
save/Assign_92Assigntraining/Adam/Variable_111save/RestoreV2:92*
T0*-
_class#
!loc:@training/Adam/Variable_111*
validate_shape(*
_output_shapes
:*
use_locking(
Ä
save/Assign_93Assigntraining/Adam/Variable_112save/RestoreV2:93*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_112*
validate_shape(*
_output_shapes
:
Ä
save/Assign_94Assigntraining/Adam/Variable_113save/RestoreV2:94*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_113
Ä
save/Assign_95Assigntraining/Adam/Variable_114save/RestoreV2:95*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_114
Ä
save/Assign_96Assigntraining/Adam/Variable_115save/RestoreV2:96*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_115*
validate_shape(*
_output_shapes
:
Ä
save/Assign_97Assigntraining/Adam/Variable_116save/RestoreV2:97*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_116*
validate_shape(*
_output_shapes
:
Ä
save/Assign_98Assigntraining/Adam/Variable_117save/RestoreV2:98*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_117*
validate_shape(
Ä
save/Assign_99Assigntraining/Adam/Variable_118save/RestoreV2:99*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_118*
validate_shape(*
_output_shapes
:
Ć
save/Assign_100Assigntraining/Adam/Variable_119save/RestoreV2:100*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_119*
validate_shape(*
_output_shapes
:
Đ
save/Assign_101Assigntraining/Adam/Variable_12save/RestoreV2:101*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12
Ä
save/Assign_102Assigntraining/Adam/Variable_13save/RestoreV2:102*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13*
validate_shape(*
_output_shapes
:@
Ä
save/Assign_103Assigntraining/Adam/Variable_14save/RestoreV2:103*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes
:@*
use_locking(
Ä
save/Assign_104Assigntraining/Adam/Variable_15save/RestoreV2:104*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
:@
Ń
save/Assign_105Assigntraining/Adam/Variable_16save/RestoreV2:105*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_16
Ĺ
save/Assign_106Assigntraining/Adam/Variable_17save/RestoreV2:106*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17
Ĺ
save/Assign_107Assigntraining/Adam/Variable_18save/RestoreV2:107*
T0*,
_class"
 loc:@training/Adam/Variable_18*
validate_shape(*
_output_shapes	
:*
use_locking(
Ĺ
save/Assign_108Assigntraining/Adam/Variable_19save/RestoreV2:108*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes	
:
Â
save/Assign_109Assigntraining/Adam/Variable_2save/RestoreV2:109*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
: 
Ň
save/Assign_110Assigntraining/Adam/Variable_20save/RestoreV2:110*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20*
validate_shape(*(
_output_shapes
:
Ĺ
save/Assign_111Assigntraining/Adam/Variable_21save/RestoreV2:111*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes	
:*
use_locking(
Ĺ
save/Assign_112Assigntraining/Adam/Variable_22save/RestoreV2:112*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_22
Ĺ
save/Assign_113Assigntraining/Adam/Variable_23save/RestoreV2:113*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_23
Ň
save/Assign_114Assigntraining/Adam/Variable_24save/RestoreV2:114*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*(
_output_shapes
:
Ĺ
save/Assign_115Assigntraining/Adam/Variable_25save/RestoreV2:115*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ĺ
save/Assign_116Assigntraining/Adam/Variable_26save/RestoreV2:116*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(
Ĺ
save/Assign_117Assigntraining/Adam/Variable_27save/RestoreV2:117*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes	
:
Ę
save/Assign_118Assigntraining/Adam/Variable_28save/RestoreV2:118*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(* 
_output_shapes
:

Ĺ
save/Assign_119Assigntraining/Adam/Variable_29save/RestoreV2:119*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes	
:
Â
save/Assign_120Assigntraining/Adam/Variable_3save/RestoreV2:120*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
: 
Ę
save/Assign_121Assigntraining/Adam/Variable_30save/RestoreV2:121* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(
Ĺ
save/Assign_122Assigntraining/Adam/Variable_31save/RestoreV2:122*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(
Ĺ
save/Assign_123Assigntraining/Adam/Variable_32save/RestoreV2:123*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(*
_output_shapes	
:
Ĺ
save/Assign_124Assigntraining/Adam/Variable_33save/RestoreV2:124*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_33*
validate_shape(*
_output_shapes	
:
É
save/Assign_125Assigntraining/Adam/Variable_34save/RestoreV2:125*
T0*,
_class"
 loc:@training/Adam/Variable_34*
validate_shape(*
_output_shapes
:	@*
use_locking(
Ä
save/Assign_126Assigntraining/Adam/Variable_35save/RestoreV2:126*
T0*,
_class"
 loc:@training/Adam/Variable_35*
validate_shape(*
_output_shapes
:@*
use_locking(
Ä
save/Assign_127Assigntraining/Adam/Variable_36save/RestoreV2:127*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_36*
validate_shape(*
_output_shapes
:@
Ä
save/Assign_128Assigntraining/Adam/Variable_37save/RestoreV2:128*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_37*
validate_shape(*
_output_shapes
:@
Č
save/Assign_129Assigntraining/Adam/Variable_38save/RestoreV2:129*
_output_shapes

:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_38*
validate_shape(
Ä
save/Assign_130Assigntraining/Adam/Variable_39save/RestoreV2:130*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_39*
validate_shape(
Î
save/Assign_131Assigntraining/Adam/Variable_4save/RestoreV2:131*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*&
_output_shapes
:  
Đ
save/Assign_132Assigntraining/Adam/Variable_40save/RestoreV2:132*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_40*
validate_shape(*&
_output_shapes
: 
Ä
save/Assign_133Assigntraining/Adam/Variable_41save/RestoreV2:133*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_41*
validate_shape(*
_output_shapes
: 
Ä
save/Assign_134Assigntraining/Adam/Variable_42save/RestoreV2:134*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_42*
validate_shape(*
_output_shapes
: 
Ä
save/Assign_135Assigntraining/Adam/Variable_43save/RestoreV2:135*,
_class"
 loc:@training/Adam/Variable_43*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Đ
save/Assign_136Assigntraining/Adam/Variable_44save/RestoreV2:136*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_44*
validate_shape(*&
_output_shapes
:  
Ä
save/Assign_137Assigntraining/Adam/Variable_45save/RestoreV2:137*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_45*
validate_shape(*
_output_shapes
: 
Ä
save/Assign_138Assigntraining/Adam/Variable_46save/RestoreV2:138*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_46*
validate_shape(*
_output_shapes
: 
Ä
save/Assign_139Assigntraining/Adam/Variable_47save/RestoreV2:139*,
_class"
 loc:@training/Adam/Variable_47*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Đ
save/Assign_140Assigntraining/Adam/Variable_48save/RestoreV2:140*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_48*
validate_shape(*&
_output_shapes
: @
Ä
save/Assign_141Assigntraining/Adam/Variable_49save/RestoreV2:141*,
_class"
 loc:@training/Adam/Variable_49*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Â
save/Assign_142Assigntraining/Adam/Variable_5save/RestoreV2:142*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: 
Ä
save/Assign_143Assigntraining/Adam/Variable_50save/RestoreV2:143*
T0*,
_class"
 loc:@training/Adam/Variable_50*
validate_shape(*
_output_shapes
:@*
use_locking(
Ä
save/Assign_144Assigntraining/Adam/Variable_51save/RestoreV2:144*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_51*
validate_shape(
Đ
save/Assign_145Assigntraining/Adam/Variable_52save/RestoreV2:145*,
_class"
 loc:@training/Adam/Variable_52*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0
Ä
save/Assign_146Assigntraining/Adam/Variable_53save/RestoreV2:146*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_53*
validate_shape(*
_output_shapes
:@
Ä
save/Assign_147Assigntraining/Adam/Variable_54save/RestoreV2:147*
T0*,
_class"
 loc:@training/Adam/Variable_54*
validate_shape(*
_output_shapes
:@*
use_locking(
Ä
save/Assign_148Assigntraining/Adam/Variable_55save/RestoreV2:148*
T0*,
_class"
 loc:@training/Adam/Variable_55*
validate_shape(*
_output_shapes
:@*
use_locking(
Ń
save/Assign_149Assigntraining/Adam/Variable_56save/RestoreV2:149*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_56*
validate_shape(*'
_output_shapes
:@
Ĺ
save/Assign_150Assigntraining/Adam/Variable_57save/RestoreV2:150*
T0*,
_class"
 loc:@training/Adam/Variable_57*
validate_shape(*
_output_shapes	
:*
use_locking(
Ĺ
save/Assign_151Assigntraining/Adam/Variable_58save/RestoreV2:151*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_58
Ĺ
save/Assign_152Assigntraining/Adam/Variable_59save/RestoreV2:152*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_59*
validate_shape(*
_output_shapes	
:
Â
save/Assign_153Assigntraining/Adam/Variable_6save/RestoreV2:153*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes
: 
Ň
save/Assign_154Assigntraining/Adam/Variable_60save/RestoreV2:154*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_60*
validate_shape(*(
_output_shapes
:
Ĺ
save/Assign_155Assigntraining/Adam/Variable_61save/RestoreV2:155*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_61*
validate_shape(
Ĺ
save/Assign_156Assigntraining/Adam/Variable_62save/RestoreV2:156*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_62
Ĺ
save/Assign_157Assigntraining/Adam/Variable_63save/RestoreV2:157*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_63*
validate_shape(*
_output_shapes	
:
Ň
save/Assign_158Assigntraining/Adam/Variable_64save/RestoreV2:158*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_64*
validate_shape(*(
_output_shapes
:
Ĺ
save/Assign_159Assigntraining/Adam/Variable_65save/RestoreV2:159*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_65*
validate_shape(
Ĺ
save/Assign_160Assigntraining/Adam/Variable_66save/RestoreV2:160*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_66
Ĺ
save/Assign_161Assigntraining/Adam/Variable_67save/RestoreV2:161*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_67*
validate_shape(
Ę
save/Assign_162Assigntraining/Adam/Variable_68save/RestoreV2:162*,
_class"
 loc:@training/Adam/Variable_68*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
Ĺ
save/Assign_163Assigntraining/Adam/Variable_69save/RestoreV2:163*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_69*
validate_shape(
Â
save/Assign_164Assigntraining/Adam/Variable_7save/RestoreV2:164*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: *
use_locking(
Ę
save/Assign_165Assigntraining/Adam/Variable_70save/RestoreV2:165*
T0*,
_class"
 loc:@training/Adam/Variable_70*
validate_shape(* 
_output_shapes
:
*
use_locking(
Ĺ
save/Assign_166Assigntraining/Adam/Variable_71save/RestoreV2:166*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_71*
validate_shape(*
_output_shapes	
:
Ĺ
save/Assign_167Assigntraining/Adam/Variable_72save/RestoreV2:167*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_72*
validate_shape(*
_output_shapes	
:
Ĺ
save/Assign_168Assigntraining/Adam/Variable_73save/RestoreV2:168*
T0*,
_class"
 loc:@training/Adam/Variable_73*
validate_shape(*
_output_shapes	
:*
use_locking(
É
save/Assign_169Assigntraining/Adam/Variable_74save/RestoreV2:169*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_74*
validate_shape(*
_output_shapes
:	@
Ä
save/Assign_170Assigntraining/Adam/Variable_75save/RestoreV2:170*
T0*,
_class"
 loc:@training/Adam/Variable_75*
validate_shape(*
_output_shapes
:@*
use_locking(
Ä
save/Assign_171Assigntraining/Adam/Variable_76save/RestoreV2:171*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_76
Ä
save/Assign_172Assigntraining/Adam/Variable_77save/RestoreV2:172*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_77*
validate_shape(
Č
save/Assign_173Assigntraining/Adam/Variable_78save/RestoreV2:173*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_78*
validate_shape(*
_output_shapes

:@
Ä
save/Assign_174Assigntraining/Adam/Variable_79save/RestoreV2:174*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_79*
validate_shape(*
_output_shapes
:
Î
save/Assign_175Assigntraining/Adam/Variable_8save/RestoreV2:175*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*&
_output_shapes
: @
Ä
save/Assign_176Assigntraining/Adam/Variable_80save/RestoreV2:176*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_80*
validate_shape(*
_output_shapes
:
Ä
save/Assign_177Assigntraining/Adam/Variable_81save/RestoreV2:177*
T0*,
_class"
 loc:@training/Adam/Variable_81*
validate_shape(*
_output_shapes
:*
use_locking(
Ä
save/Assign_178Assigntraining/Adam/Variable_82save/RestoreV2:178*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_82*
validate_shape(*
_output_shapes
:
Ä
save/Assign_179Assigntraining/Adam/Variable_83save/RestoreV2:179*,
_class"
 loc:@training/Adam/Variable_83*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ä
save/Assign_180Assigntraining/Adam/Variable_84save/RestoreV2:180*,
_class"
 loc:@training/Adam/Variable_84*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ä
save/Assign_181Assigntraining/Adam/Variable_85save/RestoreV2:181*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_85*
validate_shape(
Ä
save/Assign_182Assigntraining/Adam/Variable_86save/RestoreV2:182*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_86
Ä
save/Assign_183Assigntraining/Adam/Variable_87save/RestoreV2:183*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_87
Ä
save/Assign_184Assigntraining/Adam/Variable_88save/RestoreV2:184*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_88*
validate_shape(*
_output_shapes
:
Ä
save/Assign_185Assigntraining/Adam/Variable_89save/RestoreV2:185*,
_class"
 loc:@training/Adam/Variable_89*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Â
save/Assign_186Assigntraining/Adam/Variable_9save/RestoreV2:186*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:@
Ä
save/Assign_187Assigntraining/Adam/Variable_90save/RestoreV2:187*
T0*,
_class"
 loc:@training/Adam/Variable_90*
validate_shape(*
_output_shapes
:*
use_locking(
Ä
save/Assign_188Assigntraining/Adam/Variable_91save/RestoreV2:188*,
_class"
 loc:@training/Adam/Variable_91*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ä
save/Assign_189Assigntraining/Adam/Variable_92save/RestoreV2:189*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_92*
validate_shape(
Ä
save/Assign_190Assigntraining/Adam/Variable_93save/RestoreV2:190*,
_class"
 loc:@training/Adam/Variable_93*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ä
save/Assign_191Assigntraining/Adam/Variable_94save/RestoreV2:191*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_94*
validate_shape(*
_output_shapes
:
Ä
save/Assign_192Assigntraining/Adam/Variable_95save/RestoreV2:192*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_95*
validate_shape(*
_output_shapes
:
Ä
save/Assign_193Assigntraining/Adam/Variable_96save/RestoreV2:193*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_96*
validate_shape(*
_output_shapes
:
Ä
save/Assign_194Assigntraining/Adam/Variable_97save/RestoreV2:194*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_97*
validate_shape(*
_output_shapes
:
Ä
save/Assign_195Assigntraining/Adam/Variable_98save/RestoreV2:195*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_98*
validate_shape(*
_output_shapes
:
Ä
save/Assign_196Assigntraining/Adam/Variable_99save/RestoreV2:196*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_99*
validate_shape(*
_output_shapes
:
Ť
save/Assign_197Assignvad_bn2/betasave/RestoreV2:197*
_class
loc:@vad_bn2/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
­
save/Assign_198Assignvad_bn2/gammasave/RestoreV2:198* 
_class
loc:@vad_bn2/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
š
save/Assign_199Assignvad_bn2/moving_meansave/RestoreV2:199*
use_locking(*
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(*
_output_shapes	
:
Ŕ
save/Assign_200Assignvad_bn2/moving_mean/biasedsave/RestoreV2:200*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(
ż
save/Assign_201Assignvad_bn2/moving_mean/local_stepsave/RestoreV2:201*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*&
_class
loc:@vad_bn2/moving_mean
Á
save/Assign_202Assignvad_bn2/moving_variancesave/RestoreV2:202**
_class 
loc:@vad_bn2/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Č
save/Assign_203Assignvad_bn2/moving_variance/biasedsave/RestoreV2:203**
_class 
loc:@vad_bn2/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ç
save/Assign_204Assign"vad_bn2/moving_variance/local_stepsave/RestoreV2:204*
use_locking(*
T0**
_class 
loc:@vad_bn2/moving_variance*
validate_shape(*
_output_shapes
: 
Ş
save/Assign_205Assignvad_bn3/betasave/RestoreV2:205*
use_locking(*
T0*
_class
loc:@vad_bn3/beta*
validate_shape(*
_output_shapes
:@
Ź
save/Assign_206Assignvad_bn3/gammasave/RestoreV2:206* 
_class
loc:@vad_bn3/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
¸
save/Assign_207Assignvad_bn3/moving_meansave/RestoreV2:207*
use_locking(*
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
:@
ż
save/Assign_208Assignvad_bn3/moving_mean/biasedsave/RestoreV2:208*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ż
save/Assign_209Assignvad_bn3/moving_mean/local_stepsave/RestoreV2:209*
use_locking(*
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
: 
Ŕ
save/Assign_210Assignvad_bn3/moving_variancesave/RestoreV2:210*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(*
_output_shapes
:@
Ç
save/Assign_211Assignvad_bn3/moving_variance/biasedsave/RestoreV2:211*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(*
_output_shapes
:@
Ç
save/Assign_212Assign"vad_bn3/moving_variance/local_stepsave/RestoreV2:212*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(*
_output_shapes
: 
Ť
save/Assign_213Assignvad_fc2/biassave/RestoreV2:213*
use_locking(*
T0*
_class
loc:@vad_fc2/bias*
validate_shape(*
_output_shapes	
:
´
save/Assign_214Assignvad_fc2/kernelsave/RestoreV2:214*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*!
_class
loc:@vad_fc2/kernel
Ş
save/Assign_215Assignvad_fc3/biassave/RestoreV2:215*
T0*
_class
loc:@vad_fc3/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
ł
save/Assign_216Assignvad_fc3/kernelsave/RestoreV2:216*
use_locking(*
T0*!
_class
loc:@vad_fc3/kernel*
validate_shape(*
_output_shapes
:	@
Ä
save/Assign_217Assignvad_prediction_layer/biassave/RestoreV2:217*
use_locking(*
T0*,
_class"
 loc:@vad_prediction_layer/bias*
validate_shape(*
_output_shapes
:
Ě
save/Assign_218Assignvad_prediction_layer/kernelsave/RestoreV2:218*
use_locking(*
T0*.
_class$
" loc:@vad_prediction_layer/kernel*
validate_shape(*
_output_shapes

:@

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_14^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_15^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_16^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_166^save/Assign_167^save/Assign_168^save/Assign_169^save/Assign_17^save/Assign_170^save/Assign_171^save/Assign_172^save/Assign_173^save/Assign_174^save/Assign_175^save/Assign_176^save/Assign_177^save/Assign_178^save/Assign_179^save/Assign_18^save/Assign_180^save/Assign_181^save/Assign_182^save/Assign_183^save/Assign_184^save/Assign_185^save/Assign_186^save/Assign_187^save/Assign_188^save/Assign_189^save/Assign_19^save/Assign_190^save/Assign_191^save/Assign_192^save/Assign_193^save/Assign_194^save/Assign_195^save/Assign_196^save/Assign_197^save/Assign_198^save/Assign_199^save/Assign_2^save/Assign_20^save/Assign_200^save/Assign_201^save/Assign_202^save/Assign_203^save/Assign_204^save/Assign_205^save/Assign_206^save/Assign_207^save/Assign_208^save/Assign_209^save/Assign_21^save/Assign_210^save/Assign_211^save/Assign_212^save/Assign_213^save/Assign_214^save/Assign_215^save/Assign_216^save/Assign_217^save/Assign_218^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
shape: *
dtype0

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_e938bba38ec540cb93a605a377fa5dbf/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
 2
save_1/SaveV2/tensor_namesConst"/device:CPU:0*Á1
valueˇ1B´1ŰBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB(batch_normalization_1/moving_mean/biasedB,batch_normalization_1/moving_mean/local_stepB%batch_normalization_1/moving_varianceB,batch_normalization_1/moving_variance/biasedB0batch_normalization_1/moving_variance/local_stepBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB(batch_normalization_2/moving_mean/biasedB,batch_normalization_2/moving_mean/local_stepB%batch_normalization_2/moving_varianceB,batch_normalization_2/moving_variance/biasedB0batch_normalization_2/moving_variance/local_stepBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB(batch_normalization_3/moving_mean/biasedB,batch_normalization_3/moving_mean/local_stepB%batch_normalization_3/moving_varianceB,batch_normalization_3/moving_variance/biasedB0batch_normalization_3/moving_variance/local_stepBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB(batch_normalization_4/moving_mean/biasedB,batch_normalization_4/moving_mean/local_stepB%batch_normalization_4/moving_varianceB,batch_normalization_4/moving_variance/biasedB0batch_normalization_4/moving_variance/local_stepBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB(batch_normalization_5/moving_mean/biasedB,batch_normalization_5/moving_mean/local_stepB%batch_normalization_5/moving_varianceB,batch_normalization_5/moving_variance/biasedB0batch_normalization_5/moving_variance/local_stepBbatch_normalization_6/betaBbatch_normalization_6/gammaB!batch_normalization_6/moving_meanB(batch_normalization_6/moving_mean/biasedB,batch_normalization_6/moving_mean/local_stepB%batch_normalization_6/moving_varianceB,batch_normalization_6/moving_variance/biasedB0batch_normalization_6/moving_variance/local_stepBbatch_normalization_7/betaBbatch_normalization_7/gammaB!batch_normalization_7/moving_meanB(batch_normalization_7/moving_mean/biasedB,batch_normalization_7/moving_mean/local_stepB%batch_normalization_7/moving_varianceB,batch_normalization_7/moving_variance/biasedB0batch_normalization_7/moving_variance/local_stepBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBconv2d_5/biasBconv2d_5/kernelBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBtime_distributed_1/biasBtime_distributed_1/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_100Btraining/Adam/Variable_101Btraining/Adam/Variable_102Btraining/Adam/Variable_103Btraining/Adam/Variable_104Btraining/Adam/Variable_105Btraining/Adam/Variable_106Btraining/Adam/Variable_107Btraining/Adam/Variable_108Btraining/Adam/Variable_109Btraining/Adam/Variable_11Btraining/Adam/Variable_110Btraining/Adam/Variable_111Btraining/Adam/Variable_112Btraining/Adam/Variable_113Btraining/Adam/Variable_114Btraining/Adam/Variable_115Btraining/Adam/Variable_116Btraining/Adam/Variable_117Btraining/Adam/Variable_118Btraining/Adam/Variable_119Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_30Btraining/Adam/Variable_31Btraining/Adam/Variable_32Btraining/Adam/Variable_33Btraining/Adam/Variable_34Btraining/Adam/Variable_35Btraining/Adam/Variable_36Btraining/Adam/Variable_37Btraining/Adam/Variable_38Btraining/Adam/Variable_39Btraining/Adam/Variable_4Btraining/Adam/Variable_40Btraining/Adam/Variable_41Btraining/Adam/Variable_42Btraining/Adam/Variable_43Btraining/Adam/Variable_44Btraining/Adam/Variable_45Btraining/Adam/Variable_46Btraining/Adam/Variable_47Btraining/Adam/Variable_48Btraining/Adam/Variable_49Btraining/Adam/Variable_5Btraining/Adam/Variable_50Btraining/Adam/Variable_51Btraining/Adam/Variable_52Btraining/Adam/Variable_53Btraining/Adam/Variable_54Btraining/Adam/Variable_55Btraining/Adam/Variable_56Btraining/Adam/Variable_57Btraining/Adam/Variable_58Btraining/Adam/Variable_59Btraining/Adam/Variable_6Btraining/Adam/Variable_60Btraining/Adam/Variable_61Btraining/Adam/Variable_62Btraining/Adam/Variable_63Btraining/Adam/Variable_64Btraining/Adam/Variable_65Btraining/Adam/Variable_66Btraining/Adam/Variable_67Btraining/Adam/Variable_68Btraining/Adam/Variable_69Btraining/Adam/Variable_7Btraining/Adam/Variable_70Btraining/Adam/Variable_71Btraining/Adam/Variable_72Btraining/Adam/Variable_73Btraining/Adam/Variable_74Btraining/Adam/Variable_75Btraining/Adam/Variable_76Btraining/Adam/Variable_77Btraining/Adam/Variable_78Btraining/Adam/Variable_79Btraining/Adam/Variable_8Btraining/Adam/Variable_80Btraining/Adam/Variable_81Btraining/Adam/Variable_82Btraining/Adam/Variable_83Btraining/Adam/Variable_84Btraining/Adam/Variable_85Btraining/Adam/Variable_86Btraining/Adam/Variable_87Btraining/Adam/Variable_88Btraining/Adam/Variable_89Btraining/Adam/Variable_9Btraining/Adam/Variable_90Btraining/Adam/Variable_91Btraining/Adam/Variable_92Btraining/Adam/Variable_93Btraining/Adam/Variable_94Btraining/Adam/Variable_95Btraining/Adam/Variable_96Btraining/Adam/Variable_97Btraining/Adam/Variable_98Btraining/Adam/Variable_99Bvad_bn2/betaBvad_bn2/gammaBvad_bn2/moving_meanBvad_bn2/moving_mean/biasedBvad_bn2/moving_mean/local_stepBvad_bn2/moving_varianceBvad_bn2/moving_variance/biasedB"vad_bn2/moving_variance/local_stepBvad_bn3/betaBvad_bn3/gammaBvad_bn3/moving_meanBvad_bn3/moving_mean/biasedBvad_bn3/moving_mean/local_stepBvad_bn3/moving_varianceBvad_bn3/moving_variance/biasedB"vad_bn3/moving_variance/local_stepBvad_fc2/biasBvad_fc2/kernelBvad_fc3/biasBvad_fc3/kernelBvad_prediction_layer/biasBvad_prediction_layer/kernel*
dtype0*
_output_shapes	
:Ű
Ż
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*Ě
valueÂBżŰB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:Ű
4
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrbatch_normalization_1/betabatch_normalization_1/gamma!batch_normalization_1/moving_mean(batch_normalization_1/moving_mean/biased,batch_normalization_1/moving_mean/local_step%batch_normalization_1/moving_variance,batch_normalization_1/moving_variance/biased0batch_normalization_1/moving_variance/local_stepbatch_normalization_2/betabatch_normalization_2/gamma!batch_normalization_2/moving_mean(batch_normalization_2/moving_mean/biased,batch_normalization_2/moving_mean/local_step%batch_normalization_2/moving_variance,batch_normalization_2/moving_variance/biased0batch_normalization_2/moving_variance/local_stepbatch_normalization_3/betabatch_normalization_3/gamma!batch_normalization_3/moving_mean(batch_normalization_3/moving_mean/biased,batch_normalization_3/moving_mean/local_step%batch_normalization_3/moving_variance,batch_normalization_3/moving_variance/biased0batch_normalization_3/moving_variance/local_stepbatch_normalization_4/betabatch_normalization_4/gamma!batch_normalization_4/moving_mean(batch_normalization_4/moving_mean/biased,batch_normalization_4/moving_mean/local_step%batch_normalization_4/moving_variance,batch_normalization_4/moving_variance/biased0batch_normalization_4/moving_variance/local_stepbatch_normalization_5/betabatch_normalization_5/gamma!batch_normalization_5/moving_mean(batch_normalization_5/moving_mean/biased,batch_normalization_5/moving_mean/local_step%batch_normalization_5/moving_variance,batch_normalization_5/moving_variance/biased0batch_normalization_5/moving_variance/local_stepbatch_normalization_6/betabatch_normalization_6/gamma!batch_normalization_6/moving_mean(batch_normalization_6/moving_mean/biased,batch_normalization_6/moving_mean/local_step%batch_normalization_6/moving_variance,batch_normalization_6/moving_variance/biased0batch_normalization_6/moving_variance/local_stepbatch_normalization_7/betabatch_normalization_7/gamma!batch_normalization_7/moving_mean(batch_normalization_7/moving_mean/biased,batch_normalization_7/moving_mean/local_step%batch_normalization_7/moving_variance,batch_normalization_7/moving_variance/biased0batch_normalization_7/moving_variance/local_stepconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernelconv2d_4/biasconv2d_4/kernelconv2d_5/biasconv2d_5/kernelconv2d_6/biasconv2d_6/kernelconv2d_7/biasconv2d_7/kerneltime_distributed_1/biastime_distributed_1/kerneltraining/Adam/Variabletraining/Adam/Variable_1training/Adam/Variable_10training/Adam/Variable_100training/Adam/Variable_101training/Adam/Variable_102training/Adam/Variable_103training/Adam/Variable_104training/Adam/Variable_105training/Adam/Variable_106training/Adam/Variable_107training/Adam/Variable_108training/Adam/Variable_109training/Adam/Variable_11training/Adam/Variable_110training/Adam/Variable_111training/Adam/Variable_112training/Adam/Variable_113training/Adam/Variable_114training/Adam/Variable_115training/Adam/Variable_116training/Adam/Variable_117training/Adam/Variable_118training/Adam/Variable_119training/Adam/Variable_12training/Adam/Variable_13training/Adam/Variable_14training/Adam/Variable_15training/Adam/Variable_16training/Adam/Variable_17training/Adam/Variable_18training/Adam/Variable_19training/Adam/Variable_2training/Adam/Variable_20training/Adam/Variable_21training/Adam/Variable_22training/Adam/Variable_23training/Adam/Variable_24training/Adam/Variable_25training/Adam/Variable_26training/Adam/Variable_27training/Adam/Variable_28training/Adam/Variable_29training/Adam/Variable_3training/Adam/Variable_30training/Adam/Variable_31training/Adam/Variable_32training/Adam/Variable_33training/Adam/Variable_34training/Adam/Variable_35training/Adam/Variable_36training/Adam/Variable_37training/Adam/Variable_38training/Adam/Variable_39training/Adam/Variable_4training/Adam/Variable_40training/Adam/Variable_41training/Adam/Variable_42training/Adam/Variable_43training/Adam/Variable_44training/Adam/Variable_45training/Adam/Variable_46training/Adam/Variable_47training/Adam/Variable_48training/Adam/Variable_49training/Adam/Variable_5training/Adam/Variable_50training/Adam/Variable_51training/Adam/Variable_52training/Adam/Variable_53training/Adam/Variable_54training/Adam/Variable_55training/Adam/Variable_56training/Adam/Variable_57training/Adam/Variable_58training/Adam/Variable_59training/Adam/Variable_6training/Adam/Variable_60training/Adam/Variable_61training/Adam/Variable_62training/Adam/Variable_63training/Adam/Variable_64training/Adam/Variable_65training/Adam/Variable_66training/Adam/Variable_67training/Adam/Variable_68training/Adam/Variable_69training/Adam/Variable_7training/Adam/Variable_70training/Adam/Variable_71training/Adam/Variable_72training/Adam/Variable_73training/Adam/Variable_74training/Adam/Variable_75training/Adam/Variable_76training/Adam/Variable_77training/Adam/Variable_78training/Adam/Variable_79training/Adam/Variable_8training/Adam/Variable_80training/Adam/Variable_81training/Adam/Variable_82training/Adam/Variable_83training/Adam/Variable_84training/Adam/Variable_85training/Adam/Variable_86training/Adam/Variable_87training/Adam/Variable_88training/Adam/Variable_89training/Adam/Variable_9training/Adam/Variable_90training/Adam/Variable_91training/Adam/Variable_92training/Adam/Variable_93training/Adam/Variable_94training/Adam/Variable_95training/Adam/Variable_96training/Adam/Variable_97training/Adam/Variable_98training/Adam/Variable_99vad_bn2/betavad_bn2/gammavad_bn2/moving_meanvad_bn2/moving_mean/biasedvad_bn2/moving_mean/local_stepvad_bn2/moving_variancevad_bn2/moving_variance/biased"vad_bn2/moving_variance/local_stepvad_bn3/betavad_bn3/gammavad_bn3/moving_meanvad_bn3/moving_mean/biasedvad_bn3/moving_mean/local_stepvad_bn3/moving_variancevad_bn3/moving_variance/biased"vad_bn3/moving_variance/local_stepvad_fc2/biasvad_fc2/kernelvad_fc3/biasvad_fc3/kernelvad_prediction_layer/biasvad_prediction_layer/kernel"/device:CPU:0*ě
dtypesá
Ţ2Ű	
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
˛
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
_output_shapes
:*
T0*

axis *
N

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
Ł2
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*Á1
valueˇ1B´1ŰBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB(batch_normalization_1/moving_mean/biasedB,batch_normalization_1/moving_mean/local_stepB%batch_normalization_1/moving_varianceB,batch_normalization_1/moving_variance/biasedB0batch_normalization_1/moving_variance/local_stepBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB(batch_normalization_2/moving_mean/biasedB,batch_normalization_2/moving_mean/local_stepB%batch_normalization_2/moving_varianceB,batch_normalization_2/moving_variance/biasedB0batch_normalization_2/moving_variance/local_stepBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB(batch_normalization_3/moving_mean/biasedB,batch_normalization_3/moving_mean/local_stepB%batch_normalization_3/moving_varianceB,batch_normalization_3/moving_variance/biasedB0batch_normalization_3/moving_variance/local_stepBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB(batch_normalization_4/moving_mean/biasedB,batch_normalization_4/moving_mean/local_stepB%batch_normalization_4/moving_varianceB,batch_normalization_4/moving_variance/biasedB0batch_normalization_4/moving_variance/local_stepBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB(batch_normalization_5/moving_mean/biasedB,batch_normalization_5/moving_mean/local_stepB%batch_normalization_5/moving_varianceB,batch_normalization_5/moving_variance/biasedB0batch_normalization_5/moving_variance/local_stepBbatch_normalization_6/betaBbatch_normalization_6/gammaB!batch_normalization_6/moving_meanB(batch_normalization_6/moving_mean/biasedB,batch_normalization_6/moving_mean/local_stepB%batch_normalization_6/moving_varianceB,batch_normalization_6/moving_variance/biasedB0batch_normalization_6/moving_variance/local_stepBbatch_normalization_7/betaBbatch_normalization_7/gammaB!batch_normalization_7/moving_meanB(batch_normalization_7/moving_mean/biasedB,batch_normalization_7/moving_mean/local_stepB%batch_normalization_7/moving_varianceB,batch_normalization_7/moving_variance/biasedB0batch_normalization_7/moving_variance/local_stepBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBconv2d_5/biasBconv2d_5/kernelBconv2d_6/biasBconv2d_6/kernelBconv2d_7/biasBconv2d_7/kernelBtime_distributed_1/biasBtime_distributed_1/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_100Btraining/Adam/Variable_101Btraining/Adam/Variable_102Btraining/Adam/Variable_103Btraining/Adam/Variable_104Btraining/Adam/Variable_105Btraining/Adam/Variable_106Btraining/Adam/Variable_107Btraining/Adam/Variable_108Btraining/Adam/Variable_109Btraining/Adam/Variable_11Btraining/Adam/Variable_110Btraining/Adam/Variable_111Btraining/Adam/Variable_112Btraining/Adam/Variable_113Btraining/Adam/Variable_114Btraining/Adam/Variable_115Btraining/Adam/Variable_116Btraining/Adam/Variable_117Btraining/Adam/Variable_118Btraining/Adam/Variable_119Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_24Btraining/Adam/Variable_25Btraining/Adam/Variable_26Btraining/Adam/Variable_27Btraining/Adam/Variable_28Btraining/Adam/Variable_29Btraining/Adam/Variable_3Btraining/Adam/Variable_30Btraining/Adam/Variable_31Btraining/Adam/Variable_32Btraining/Adam/Variable_33Btraining/Adam/Variable_34Btraining/Adam/Variable_35Btraining/Adam/Variable_36Btraining/Adam/Variable_37Btraining/Adam/Variable_38Btraining/Adam/Variable_39Btraining/Adam/Variable_4Btraining/Adam/Variable_40Btraining/Adam/Variable_41Btraining/Adam/Variable_42Btraining/Adam/Variable_43Btraining/Adam/Variable_44Btraining/Adam/Variable_45Btraining/Adam/Variable_46Btraining/Adam/Variable_47Btraining/Adam/Variable_48Btraining/Adam/Variable_49Btraining/Adam/Variable_5Btraining/Adam/Variable_50Btraining/Adam/Variable_51Btraining/Adam/Variable_52Btraining/Adam/Variable_53Btraining/Adam/Variable_54Btraining/Adam/Variable_55Btraining/Adam/Variable_56Btraining/Adam/Variable_57Btraining/Adam/Variable_58Btraining/Adam/Variable_59Btraining/Adam/Variable_6Btraining/Adam/Variable_60Btraining/Adam/Variable_61Btraining/Adam/Variable_62Btraining/Adam/Variable_63Btraining/Adam/Variable_64Btraining/Adam/Variable_65Btraining/Adam/Variable_66Btraining/Adam/Variable_67Btraining/Adam/Variable_68Btraining/Adam/Variable_69Btraining/Adam/Variable_7Btraining/Adam/Variable_70Btraining/Adam/Variable_71Btraining/Adam/Variable_72Btraining/Adam/Variable_73Btraining/Adam/Variable_74Btraining/Adam/Variable_75Btraining/Adam/Variable_76Btraining/Adam/Variable_77Btraining/Adam/Variable_78Btraining/Adam/Variable_79Btraining/Adam/Variable_8Btraining/Adam/Variable_80Btraining/Adam/Variable_81Btraining/Adam/Variable_82Btraining/Adam/Variable_83Btraining/Adam/Variable_84Btraining/Adam/Variable_85Btraining/Adam/Variable_86Btraining/Adam/Variable_87Btraining/Adam/Variable_88Btraining/Adam/Variable_89Btraining/Adam/Variable_9Btraining/Adam/Variable_90Btraining/Adam/Variable_91Btraining/Adam/Variable_92Btraining/Adam/Variable_93Btraining/Adam/Variable_94Btraining/Adam/Variable_95Btraining/Adam/Variable_96Btraining/Adam/Variable_97Btraining/Adam/Variable_98Btraining/Adam/Variable_99Bvad_bn2/betaBvad_bn2/gammaBvad_bn2/moving_meanBvad_bn2/moving_mean/biasedBvad_bn2/moving_mean/local_stepBvad_bn2/moving_varianceBvad_bn2/moving_variance/biasedB"vad_bn2/moving_variance/local_stepBvad_bn3/betaBvad_bn3/gammaBvad_bn3/moving_meanBvad_bn3/moving_mean/biasedBvad_bn3/moving_mean/local_stepBvad_bn3/moving_varianceBvad_bn3/moving_variance/biasedB"vad_bn3/moving_variance/local_stepBvad_fc2/biasBvad_fc2/kernelBvad_fc3/biasBvad_fc3/kernelBvad_prediction_layer/biasBvad_prediction_layer/kernel*
dtype0*
_output_shapes	
:Ű
˛
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ě
valueÂBżŰB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:Ű
đ	
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*ě
dtypesá
Ţ2Ű	*
_output_shapesď
ě:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 
save_1/AssignAssignAdam/beta_1save_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: 
¤
save_1/Assign_1AssignAdam/beta_2save_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 
˘
save_1/Assign_2Assign
Adam/decaysave_1/RestoreV2:2*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ź
save_1/Assign_3AssignAdam/iterationssave_1/RestoreV2:3*
use_locking(*
T0	*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: 

save_1/Assign_4AssignAdam/lrsave_1/RestoreV2:4*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: *
use_locking(
Ć
save_1/Assign_5Assignbatch_normalization_1/betasave_1/RestoreV2:5*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
: 
Č
save_1/Assign_6Assignbatch_normalization_1/gammasave_1/RestoreV2:6*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ô
save_1/Assign_7Assign!batch_normalization_1/moving_meansave_1/RestoreV2:7*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
: 
Ű
save_1/Assign_8Assign(batch_normalization_1/moving_mean/biasedsave_1/RestoreV2:8*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(
Ű
save_1/Assign_9Assign,batch_normalization_1/moving_mean/local_stepsave_1/RestoreV2:9*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(
Ţ
save_1/Assign_10Assign%batch_normalization_1/moving_variancesave_1/RestoreV2:10*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
ĺ
save_1/Assign_11Assign,batch_normalization_1/moving_variance/biasedsave_1/RestoreV2:11*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
ĺ
save_1/Assign_12Assign0batch_normalization_1/moving_variance/local_stepsave_1/RestoreV2:12*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
: 
Č
save_1/Assign_13Assignbatch_normalization_2/betasave_1/RestoreV2:13*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
: 
Ę
save_1/Assign_14Assignbatch_normalization_2/gammasave_1/RestoreV2:14*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
: 
Ö
save_1/Assign_15Assign!batch_normalization_2/moving_meansave_1/RestoreV2:15*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
Ý
save_1/Assign_16Assign(batch_normalization_2/moving_mean/biasedsave_1/RestoreV2:16*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
: 
Ý
save_1/Assign_17Assign,batch_normalization_2/moving_mean/local_stepsave_1/RestoreV2:17*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
Ţ
save_1/Assign_18Assign%batch_normalization_2/moving_variancesave_1/RestoreV2:18*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
ĺ
save_1/Assign_19Assign,batch_normalization_2/moving_variance/biasedsave_1/RestoreV2:19*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(
ĺ
save_1/Assign_20Assign0batch_normalization_2/moving_variance/local_stepsave_1/RestoreV2:20*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
: 
Č
save_1/Assign_21Assignbatch_normalization_3/betasave_1/RestoreV2:21*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
Ę
save_1/Assign_22Assignbatch_normalization_3/gammasave_1/RestoreV2:22*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes
:@
Ö
save_1/Assign_23Assign!batch_normalization_3/moving_meansave_1/RestoreV2:23*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
:@
Ý
save_1/Assign_24Assign(batch_normalization_3/moving_mean/biasedsave_1/RestoreV2:24*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
:@
Ý
save_1/Assign_25Assign,batch_normalization_3/moving_mean/local_stepsave_1/RestoreV2:25*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
: 
Ţ
save_1/Assign_26Assign%batch_normalization_3/moving_variancesave_1/RestoreV2:26*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
ĺ
save_1/Assign_27Assign,batch_normalization_3/moving_variance/biasedsave_1/RestoreV2:27*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
ĺ
save_1/Assign_28Assign0batch_normalization_3/moving_variance/local_stepsave_1/RestoreV2:28*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(
Č
save_1/Assign_29Assignbatch_normalization_4/betasave_1/RestoreV2:29*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes
:@
Ę
save_1/Assign_30Assignbatch_normalization_4/gammasave_1/RestoreV2:30*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes
:@
Ö
save_1/Assign_31Assign!batch_normalization_4/moving_meansave_1/RestoreV2:31*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean
Ý
save_1/Assign_32Assign(batch_normalization_4/moving_mean/biasedsave_1/RestoreV2:32*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean
Ý
save_1/Assign_33Assign,batch_normalization_4/moving_mean/local_stepsave_1/RestoreV2:33*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
: 
Ţ
save_1/Assign_34Assign%batch_normalization_4/moving_variancesave_1/RestoreV2:34*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ĺ
save_1/Assign_35Assign,batch_normalization_4/moving_variance/biasedsave_1/RestoreV2:35*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance
ĺ
save_1/Assign_36Assign0batch_normalization_4/moving_variance/local_stepsave_1/RestoreV2:36*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes
: 
É
save_1/Assign_37Assignbatch_normalization_5/betasave_1/RestoreV2:37*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:
Ë
save_1/Assign_38Assignbatch_normalization_5/gammasave_1/RestoreV2:38*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:
×
save_1/Assign_39Assign!batch_normalization_5/moving_meansave_1/RestoreV2:39*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
Ţ
save_1/Assign_40Assign(batch_normalization_5/moving_mean/biasedsave_1/RestoreV2:40*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:
Ý
save_1/Assign_41Assign,batch_normalization_5/moving_mean/local_stepsave_1/RestoreV2:41*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes
: 
ß
save_1/Assign_42Assign%batch_normalization_5/moving_variancesave_1/RestoreV2:42*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance
ć
save_1/Assign_43Assign,batch_normalization_5/moving_variance/biasedsave_1/RestoreV2:43*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:
ĺ
save_1/Assign_44Assign0batch_normalization_5/moving_variance/local_stepsave_1/RestoreV2:44*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes
: 
É
save_1/Assign_45Assignbatch_normalization_6/betasave_1/RestoreV2:45*
T0*-
_class#
!loc:@batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
Ë
save_1/Assign_46Assignbatch_normalization_6/gammasave_1/RestoreV2:46*
T0*.
_class$
" loc:@batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
×
save_1/Assign_47Assign!batch_normalization_6/moving_meansave_1/RestoreV2:47*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:
Ţ
save_1/Assign_48Assign(batch_normalization_6/moving_mean/biasedsave_1/RestoreV2:48*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(
Ý
save_1/Assign_49Assign,batch_normalization_6/moving_mean/local_stepsave_1/RestoreV2:49*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes
: 
ß
save_1/Assign_50Assign%batch_normalization_6/moving_variancesave_1/RestoreV2:50*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:
ć
save_1/Assign_51Assign,batch_normalization_6/moving_variance/biasedsave_1/RestoreV2:51*8
_class.
,*loc:@batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ĺ
save_1/Assign_52Assign0batch_normalization_6/moving_variance/local_stepsave_1/RestoreV2:52*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_6/moving_variance
É
save_1/Assign_53Assignbatch_normalization_7/betasave_1/RestoreV2:53*
_output_shapes	
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_7/beta*
validate_shape(
Ë
save_1/Assign_54Assignbatch_normalization_7/gammasave_1/RestoreV2:54*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:
×
save_1/Assign_55Assign!batch_normalization_7/moving_meansave_1/RestoreV2:55*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ţ
save_1/Assign_56Assign(batch_normalization_7/moving_mean/biasedsave_1/RestoreV2:56*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes	
:
Ý
save_1/Assign_57Assign,batch_normalization_7/moving_mean/local_stepsave_1/RestoreV2:57*
T0*4
_class*
(&loc:@batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
ß
save_1/Assign_58Assign%batch_normalization_7/moving_variancesave_1/RestoreV2:58*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
ć
save_1/Assign_59Assign,batch_normalization_7/moving_variance/biasedsave_1/RestoreV2:59*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance
ĺ
save_1/Assign_60Assign0batch_normalization_7/moving_variance/local_stepsave_1/RestoreV2:60*
_output_shapes
: *
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_7/moving_variance*
validate_shape(
Ž
save_1/Assign_61Assignconv2d_1/biassave_1/RestoreV2:61*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(
ž
save_1/Assign_62Assignconv2d_1/kernelsave_1/RestoreV2:62*&
_output_shapes
: *
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(
Ž
save_1/Assign_63Assignconv2d_2/biassave_1/RestoreV2:63*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
: 
ž
save_1/Assign_64Assignconv2d_2/kernelsave_1/RestoreV2:64*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel
Ž
save_1/Assign_65Assignconv2d_3/biassave_1/RestoreV2:65*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(
ž
save_1/Assign_66Assignconv2d_3/kernelsave_1/RestoreV2:66*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel
Ž
save_1/Assign_67Assignconv2d_4/biassave_1/RestoreV2:67*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(
ž
save_1/Assign_68Assignconv2d_4/kernelsave_1/RestoreV2:68*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:@@
Ż
save_1/Assign_69Assignconv2d_5/biassave_1/RestoreV2:69* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
ż
save_1/Assign_70Assignconv2d_5/kernelsave_1/RestoreV2:70*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:@
Ż
save_1/Assign_71Assignconv2d_6/biassave_1/RestoreV2:71*
use_locking(*
T0* 
_class
loc:@conv2d_6/bias*
validate_shape(*
_output_shapes	
:
Ŕ
save_1/Assign_72Assignconv2d_6/kernelsave_1/RestoreV2:72*"
_class
loc:@conv2d_6/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
Ż
save_1/Assign_73Assignconv2d_7/biassave_1/RestoreV2:73*
use_locking(*
T0* 
_class
loc:@conv2d_7/bias*
validate_shape(*
_output_shapes	
:
Ŕ
save_1/Assign_74Assignconv2d_7/kernelsave_1/RestoreV2:74*
use_locking(*
T0*"
_class
loc:@conv2d_7/kernel*
validate_shape(*(
_output_shapes
:
Ă
save_1/Assign_75Assigntime_distributed_1/biassave_1/RestoreV2:75*
_output_shapes	
:*
use_locking(*
T0**
_class 
loc:@time_distributed_1/bias*
validate_shape(
Ě
save_1/Assign_76Assigntime_distributed_1/kernelsave_1/RestoreV2:76*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*,
_class"
 loc:@time_distributed_1/kernel
Ě
save_1/Assign_77Assigntraining/Adam/Variablesave_1/RestoreV2:77*)
_class
loc:@training/Adam/Variable*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
Ä
save_1/Assign_78Assigntraining/Adam/Variable_1save_1/RestoreV2:78*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
: 
Ć
save_1/Assign_79Assigntraining/Adam/Variable_10save_1/RestoreV2:79*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:@
Č
save_1/Assign_80Assigntraining/Adam/Variable_100save_1/RestoreV2:80*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_100*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_81Assigntraining/Adam/Variable_101save_1/RestoreV2:81*-
_class#
!loc:@training/Adam/Variable_101*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Č
save_1/Assign_82Assigntraining/Adam/Variable_102save_1/RestoreV2:82*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_102*
validate_shape(
Č
save_1/Assign_83Assigntraining/Adam/Variable_103save_1/RestoreV2:83*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_103*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_84Assigntraining/Adam/Variable_104save_1/RestoreV2:84*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_104*
validate_shape(
Č
save_1/Assign_85Assigntraining/Adam/Variable_105save_1/RestoreV2:85*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_105*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_86Assigntraining/Adam/Variable_106save_1/RestoreV2:86*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_106*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_87Assigntraining/Adam/Variable_107save_1/RestoreV2:87*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_107*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_88Assigntraining/Adam/Variable_108save_1/RestoreV2:88*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_108*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_89Assigntraining/Adam/Variable_109save_1/RestoreV2:89*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_109*
validate_shape(*
_output_shapes
:
Ć
save_1/Assign_90Assigntraining/Adam/Variable_11save_1/RestoreV2:90*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11
Č
save_1/Assign_91Assigntraining/Adam/Variable_110save_1/RestoreV2:91*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_110*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_92Assigntraining/Adam/Variable_111save_1/RestoreV2:92*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_111*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_93Assigntraining/Adam/Variable_112save_1/RestoreV2:93*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_112*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_94Assigntraining/Adam/Variable_113save_1/RestoreV2:94*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_113*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_95Assigntraining/Adam/Variable_114save_1/RestoreV2:95*
T0*-
_class#
!loc:@training/Adam/Variable_114*
validate_shape(*
_output_shapes
:*
use_locking(
Č
save_1/Assign_96Assigntraining/Adam/Variable_115save_1/RestoreV2:96*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_115*
validate_shape(
Č
save_1/Assign_97Assigntraining/Adam/Variable_116save_1/RestoreV2:97*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_116
Č
save_1/Assign_98Assigntraining/Adam/Variable_117save_1/RestoreV2:98*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_117*
validate_shape(
Č
save_1/Assign_99Assigntraining/Adam/Variable_118save_1/RestoreV2:99*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_118
Ę
save_1/Assign_100Assigntraining/Adam/Variable_119save_1/RestoreV2:100*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@training/Adam/Variable_119
Ô
save_1/Assign_101Assigntraining/Adam/Variable_12save_1/RestoreV2:101*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_12*
validate_shape(*&
_output_shapes
:@@
Č
save_1/Assign_102Assigntraining/Adam/Variable_13save_1/RestoreV2:102*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_13
Č
save_1/Assign_103Assigntraining/Adam/Variable_14save_1/RestoreV2:103*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_14*
validate_shape(*
_output_shapes
:@
Č
save_1/Assign_104Assigntraining/Adam/Variable_15save_1/RestoreV2:104*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_15*
validate_shape(*
_output_shapes
:@
Ő
save_1/Assign_105Assigntraining/Adam/Variable_16save_1/RestoreV2:105*
T0*,
_class"
 loc:@training/Adam/Variable_16*
validate_shape(*'
_output_shapes
:@*
use_locking(
É
save_1/Assign_106Assigntraining/Adam/Variable_17save_1/RestoreV2:106*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_17
É
save_1/Assign_107Assigntraining/Adam/Variable_18save_1/RestoreV2:107*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_18
É
save_1/Assign_108Assigntraining/Adam/Variable_19save_1/RestoreV2:108*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_19*
validate_shape(*
_output_shapes	
:
Ć
save_1/Assign_109Assigntraining/Adam/Variable_2save_1/RestoreV2:109*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ö
save_1/Assign_110Assigntraining/Adam/Variable_20save_1/RestoreV2:110*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_20
É
save_1/Assign_111Assigntraining/Adam/Variable_21save_1/RestoreV2:111*
T0*,
_class"
 loc:@training/Adam/Variable_21*
validate_shape(*
_output_shapes	
:*
use_locking(
É
save_1/Assign_112Assigntraining/Adam/Variable_22save_1/RestoreV2:112*
T0*,
_class"
 loc:@training/Adam/Variable_22*
validate_shape(*
_output_shapes	
:*
use_locking(
É
save_1/Assign_113Assigntraining/Adam/Variable_23save_1/RestoreV2:113*,
_class"
 loc:@training/Adam/Variable_23*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ö
save_1/Assign_114Assigntraining/Adam/Variable_24save_1/RestoreV2:114*,
_class"
 loc:@training/Adam/Variable_24*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
É
save_1/Assign_115Assigntraining/Adam/Variable_25save_1/RestoreV2:115*,
_class"
 loc:@training/Adam/Variable_25*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
É
save_1/Assign_116Assigntraining/Adam/Variable_26save_1/RestoreV2:116*
T0*,
_class"
 loc:@training/Adam/Variable_26*
validate_shape(*
_output_shapes	
:*
use_locking(
É
save_1/Assign_117Assigntraining/Adam/Variable_27save_1/RestoreV2:117*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_27*
validate_shape(*
_output_shapes	
:
Î
save_1/Assign_118Assigntraining/Adam/Variable_28save_1/RestoreV2:118*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_28*
validate_shape(* 
_output_shapes
:

É
save_1/Assign_119Assigntraining/Adam/Variable_29save_1/RestoreV2:119*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_29*
validate_shape(*
_output_shapes	
:
Ć
save_1/Assign_120Assigntraining/Adam/Variable_3save_1/RestoreV2:120*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
: 
Î
save_1/Assign_121Assigntraining/Adam/Variable_30save_1/RestoreV2:121*,
_class"
 loc:@training/Adam/Variable_30*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
É
save_1/Assign_122Assigntraining/Adam/Variable_31save_1/RestoreV2:122*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_31*
validate_shape(*
_output_shapes	
:
É
save_1/Assign_123Assigntraining/Adam/Variable_32save_1/RestoreV2:123*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_32*
validate_shape(
É
save_1/Assign_124Assigntraining/Adam/Variable_33save_1/RestoreV2:124*,
_class"
 loc:@training/Adam/Variable_33*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Í
save_1/Assign_125Assigntraining/Adam/Variable_34save_1/RestoreV2:125*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_34*
validate_shape(*
_output_shapes
:	@
Č
save_1/Assign_126Assigntraining/Adam/Variable_35save_1/RestoreV2:126*,
_class"
 loc:@training/Adam/Variable_35*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Č
save_1/Assign_127Assigntraining/Adam/Variable_36save_1/RestoreV2:127*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_36*
validate_shape(
Č
save_1/Assign_128Assigntraining/Adam/Variable_37save_1/RestoreV2:128*
T0*,
_class"
 loc:@training/Adam/Variable_37*
validate_shape(*
_output_shapes
:@*
use_locking(
Ě
save_1/Assign_129Assigntraining/Adam/Variable_38save_1/RestoreV2:129*
T0*,
_class"
 loc:@training/Adam/Variable_38*
validate_shape(*
_output_shapes

:@*
use_locking(
Č
save_1/Assign_130Assigntraining/Adam/Variable_39save_1/RestoreV2:130*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_39*
validate_shape(
Ň
save_1/Assign_131Assigntraining/Adam/Variable_4save_1/RestoreV2:131*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*&
_output_shapes
:  
Ô
save_1/Assign_132Assigntraining/Adam/Variable_40save_1/RestoreV2:132*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_40*
validate_shape(*&
_output_shapes
: 
Č
save_1/Assign_133Assigntraining/Adam/Variable_41save_1/RestoreV2:133*,
_class"
 loc:@training/Adam/Variable_41*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Č
save_1/Assign_134Assigntraining/Adam/Variable_42save_1/RestoreV2:134*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_42*
validate_shape(*
_output_shapes
: 
Č
save_1/Assign_135Assigntraining/Adam/Variable_43save_1/RestoreV2:135*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_43*
validate_shape(
Ô
save_1/Assign_136Assigntraining/Adam/Variable_44save_1/RestoreV2:136*
validate_shape(*&
_output_shapes
:  *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_44
Č
save_1/Assign_137Assigntraining/Adam/Variable_45save_1/RestoreV2:137*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_45*
validate_shape(
Č
save_1/Assign_138Assigntraining/Adam/Variable_46save_1/RestoreV2:138*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_46
Č
save_1/Assign_139Assigntraining/Adam/Variable_47save_1/RestoreV2:139*
T0*,
_class"
 loc:@training/Adam/Variable_47*
validate_shape(*
_output_shapes
: *
use_locking(
Ô
save_1/Assign_140Assigntraining/Adam/Variable_48save_1/RestoreV2:140*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_48*
validate_shape(*&
_output_shapes
: @
Č
save_1/Assign_141Assigntraining/Adam/Variable_49save_1/RestoreV2:141*
T0*,
_class"
 loc:@training/Adam/Variable_49*
validate_shape(*
_output_shapes
:@*
use_locking(
Ć
save_1/Assign_142Assigntraining/Adam/Variable_5save_1/RestoreV2:142*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Č
save_1/Assign_143Assigntraining/Adam/Variable_50save_1/RestoreV2:143*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_50*
validate_shape(*
_output_shapes
:@
Č
save_1/Assign_144Assigntraining/Adam/Variable_51save_1/RestoreV2:144*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_51*
validate_shape(*
_output_shapes
:@
Ô
save_1/Assign_145Assigntraining/Adam/Variable_52save_1/RestoreV2:145*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_52*
validate_shape(*&
_output_shapes
:@@
Č
save_1/Assign_146Assigntraining/Adam/Variable_53save_1/RestoreV2:146*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_53*
validate_shape(*
_output_shapes
:@
Č
save_1/Assign_147Assigntraining/Adam/Variable_54save_1/RestoreV2:147*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_54*
validate_shape(*
_output_shapes
:@
Č
save_1/Assign_148Assigntraining/Adam/Variable_55save_1/RestoreV2:148*,
_class"
 loc:@training/Adam/Variable_55*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Ő
save_1/Assign_149Assigntraining/Adam/Variable_56save_1/RestoreV2:149*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_56*
validate_shape(*'
_output_shapes
:@
É
save_1/Assign_150Assigntraining/Adam/Variable_57save_1/RestoreV2:150*,
_class"
 loc:@training/Adam/Variable_57*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
É
save_1/Assign_151Assigntraining/Adam/Variable_58save_1/RestoreV2:151*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_58*
validate_shape(*
_output_shapes	
:
É
save_1/Assign_152Assigntraining/Adam/Variable_59save_1/RestoreV2:152*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_59*
validate_shape(
Ć
save_1/Assign_153Assigntraining/Adam/Variable_6save_1/RestoreV2:153*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(
Ö
save_1/Assign_154Assigntraining/Adam/Variable_60save_1/RestoreV2:154*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_60*
validate_shape(*(
_output_shapes
:
É
save_1/Assign_155Assigntraining/Adam/Variable_61save_1/RestoreV2:155*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_61*
validate_shape(*
_output_shapes	
:
É
save_1/Assign_156Assigntraining/Adam/Variable_62save_1/RestoreV2:156*
T0*,
_class"
 loc:@training/Adam/Variable_62*
validate_shape(*
_output_shapes	
:*
use_locking(
É
save_1/Assign_157Assigntraining/Adam/Variable_63save_1/RestoreV2:157*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_63
Ö
save_1/Assign_158Assigntraining/Adam/Variable_64save_1/RestoreV2:158*,
_class"
 loc:@training/Adam/Variable_64*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
É
save_1/Assign_159Assigntraining/Adam/Variable_65save_1/RestoreV2:159*
T0*,
_class"
 loc:@training/Adam/Variable_65*
validate_shape(*
_output_shapes	
:*
use_locking(
É
save_1/Assign_160Assigntraining/Adam/Variable_66save_1/RestoreV2:160*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_66*
validate_shape(*
_output_shapes	
:
É
save_1/Assign_161Assigntraining/Adam/Variable_67save_1/RestoreV2:161*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_67
Î
save_1/Assign_162Assigntraining/Adam/Variable_68save_1/RestoreV2:162*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_68*
validate_shape(* 
_output_shapes
:

É
save_1/Assign_163Assigntraining/Adam/Variable_69save_1/RestoreV2:163*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_69*
validate_shape(*
_output_shapes	
:
Ć
save_1/Assign_164Assigntraining/Adam/Variable_7save_1/RestoreV2:164*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
: 
Î
save_1/Assign_165Assigntraining/Adam/Variable_70save_1/RestoreV2:165*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_70*
validate_shape(* 
_output_shapes
:

É
save_1/Assign_166Assigntraining/Adam/Variable_71save_1/RestoreV2:166*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_71*
validate_shape(*
_output_shapes	
:
É
save_1/Assign_167Assigntraining/Adam/Variable_72save_1/RestoreV2:167*,
_class"
 loc:@training/Adam/Variable_72*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
É
save_1/Assign_168Assigntraining/Adam/Variable_73save_1/RestoreV2:168*
T0*,
_class"
 loc:@training/Adam/Variable_73*
validate_shape(*
_output_shapes	
:*
use_locking(
Í
save_1/Assign_169Assigntraining/Adam/Variable_74save_1/RestoreV2:169*
T0*,
_class"
 loc:@training/Adam/Variable_74*
validate_shape(*
_output_shapes
:	@*
use_locking(
Č
save_1/Assign_170Assigntraining/Adam/Variable_75save_1/RestoreV2:170*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_75*
validate_shape(*
_output_shapes
:@
Č
save_1/Assign_171Assigntraining/Adam/Variable_76save_1/RestoreV2:171*
T0*,
_class"
 loc:@training/Adam/Variable_76*
validate_shape(*
_output_shapes
:@*
use_locking(
Č
save_1/Assign_172Assigntraining/Adam/Variable_77save_1/RestoreV2:172*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_77*
validate_shape(*
_output_shapes
:@
Ě
save_1/Assign_173Assigntraining/Adam/Variable_78save_1/RestoreV2:173*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_78
Č
save_1/Assign_174Assigntraining/Adam/Variable_79save_1/RestoreV2:174*
T0*,
_class"
 loc:@training/Adam/Variable_79*
validate_shape(*
_output_shapes
:*
use_locking(
Ň
save_1/Assign_175Assigntraining/Adam/Variable_8save_1/RestoreV2:175*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0
Č
save_1/Assign_176Assigntraining/Adam/Variable_80save_1/RestoreV2:176*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_80*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_177Assigntraining/Adam/Variable_81save_1/RestoreV2:177*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_81*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_178Assigntraining/Adam/Variable_82save_1/RestoreV2:178*,
_class"
 loc:@training/Adam/Variable_82*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Č
save_1/Assign_179Assigntraining/Adam/Variable_83save_1/RestoreV2:179*
T0*,
_class"
 loc:@training/Adam/Variable_83*
validate_shape(*
_output_shapes
:*
use_locking(
Č
save_1/Assign_180Assigntraining/Adam/Variable_84save_1/RestoreV2:180*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_84*
validate_shape(
Č
save_1/Assign_181Assigntraining/Adam/Variable_85save_1/RestoreV2:181*
T0*,
_class"
 loc:@training/Adam/Variable_85*
validate_shape(*
_output_shapes
:*
use_locking(
Č
save_1/Assign_182Assigntraining/Adam/Variable_86save_1/RestoreV2:182*
T0*,
_class"
 loc:@training/Adam/Variable_86*
validate_shape(*
_output_shapes
:*
use_locking(
Č
save_1/Assign_183Assigntraining/Adam/Variable_87save_1/RestoreV2:183*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_87*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_184Assigntraining/Adam/Variable_88save_1/RestoreV2:184*,
_class"
 loc:@training/Adam/Variable_88*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Č
save_1/Assign_185Assigntraining/Adam/Variable_89save_1/RestoreV2:185*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_89*
validate_shape(*
_output_shapes
:
Ć
save_1/Assign_186Assigntraining/Adam/Variable_9save_1/RestoreV2:186*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:@
Č
save_1/Assign_187Assigntraining/Adam/Variable_90save_1/RestoreV2:187*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_90
Č
save_1/Assign_188Assigntraining/Adam/Variable_91save_1/RestoreV2:188*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_91
Č
save_1/Assign_189Assigntraining/Adam/Variable_92save_1/RestoreV2:189*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_92
Č
save_1/Assign_190Assigntraining/Adam/Variable_93save_1/RestoreV2:190*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_93*
validate_shape(
Č
save_1/Assign_191Assigntraining/Adam/Variable_94save_1/RestoreV2:191*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_94*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_192Assigntraining/Adam/Variable_95save_1/RestoreV2:192*
T0*,
_class"
 loc:@training/Adam/Variable_95*
validate_shape(*
_output_shapes
:*
use_locking(
Č
save_1/Assign_193Assigntraining/Adam/Variable_96save_1/RestoreV2:193*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_96*
validate_shape(*
_output_shapes
:
Č
save_1/Assign_194Assigntraining/Adam/Variable_97save_1/RestoreV2:194*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_97
Č
save_1/Assign_195Assigntraining/Adam/Variable_98save_1/RestoreV2:195*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_98
Č
save_1/Assign_196Assigntraining/Adam/Variable_99save_1/RestoreV2:196*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_99*
validate_shape(
Ż
save_1/Assign_197Assignvad_bn2/betasave_1/RestoreV2:197*
use_locking(*
T0*
_class
loc:@vad_bn2/beta*
validate_shape(*
_output_shapes	
:
ą
save_1/Assign_198Assignvad_bn2/gammasave_1/RestoreV2:198*
use_locking(*
T0* 
_class
loc:@vad_bn2/gamma*
validate_shape(*
_output_shapes	
:
˝
save_1/Assign_199Assignvad_bn2/moving_meansave_1/RestoreV2:199*
use_locking(*
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(*
_output_shapes	
:
Ä
save_1/Assign_200Assignvad_bn2/moving_mean/biasedsave_1/RestoreV2:200*
use_locking(*
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(*
_output_shapes	
:
Ă
save_1/Assign_201Assignvad_bn2/moving_mean/local_stepsave_1/RestoreV2:201*
use_locking(*
T0*&
_class
loc:@vad_bn2/moving_mean*
validate_shape(*
_output_shapes
: 
Ĺ
save_1/Assign_202Assignvad_bn2/moving_variancesave_1/RestoreV2:202*
use_locking(*
T0**
_class 
loc:@vad_bn2/moving_variance*
validate_shape(*
_output_shapes	
:
Ě
save_1/Assign_203Assignvad_bn2/moving_variance/biasedsave_1/RestoreV2:203*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0**
_class 
loc:@vad_bn2/moving_variance
Ë
save_1/Assign_204Assign"vad_bn2/moving_variance/local_stepsave_1/RestoreV2:204**
_class 
loc:@vad_bn2/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ž
save_1/Assign_205Assignvad_bn3/betasave_1/RestoreV2:205*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@vad_bn3/beta
°
save_1/Assign_206Assignvad_bn3/gammasave_1/RestoreV2:206*
use_locking(*
T0* 
_class
loc:@vad_bn3/gamma*
validate_shape(*
_output_shapes
:@
ź
save_1/Assign_207Assignvad_bn3/moving_meansave_1/RestoreV2:207*
_output_shapes
:@*
use_locking(*
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(
Ă
save_1/Assign_208Assignvad_bn3/moving_mean/biasedsave_1/RestoreV2:208*
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
Ă
save_1/Assign_209Assignvad_bn3/moving_mean/local_stepsave_1/RestoreV2:209*
use_locking(*
T0*&
_class
loc:@vad_bn3/moving_mean*
validate_shape(*
_output_shapes
: 
Ä
save_1/Assign_210Assignvad_bn3/moving_variancesave_1/RestoreV2:210*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(*
_output_shapes
:@
Ë
save_1/Assign_211Assignvad_bn3/moving_variance/biasedsave_1/RestoreV2:211*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance
Ë
save_1/Assign_212Assign"vad_bn3/moving_variance/local_stepsave_1/RestoreV2:212*
use_locking(*
T0**
_class 
loc:@vad_bn3/moving_variance*
validate_shape(*
_output_shapes
: 
Ż
save_1/Assign_213Assignvad_fc2/biassave_1/RestoreV2:213*
use_locking(*
T0*
_class
loc:@vad_fc2/bias*
validate_shape(*
_output_shapes	
:
¸
save_1/Assign_214Assignvad_fc2/kernelsave_1/RestoreV2:214*
use_locking(*
T0*!
_class
loc:@vad_fc2/kernel*
validate_shape(* 
_output_shapes
:

Ž
save_1/Assign_215Assignvad_fc3/biassave_1/RestoreV2:215*
use_locking(*
T0*
_class
loc:@vad_fc3/bias*
validate_shape(*
_output_shapes
:@
ˇ
save_1/Assign_216Assignvad_fc3/kernelsave_1/RestoreV2:216*
use_locking(*
T0*!
_class
loc:@vad_fc3/kernel*
validate_shape(*
_output_shapes
:	@
Č
save_1/Assign_217Assignvad_prediction_layer/biassave_1/RestoreV2:217*
use_locking(*
T0*,
_class"
 loc:@vad_prediction_layer/bias*
validate_shape(*
_output_shapes
:
Đ
save_1/Assign_218Assignvad_prediction_layer/kernelsave_1/RestoreV2:218*
use_locking(*
T0*.
_class$
" loc:@vad_prediction_layer/kernel*
validate_shape(*
_output_shapes

:@
Č!
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_11^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_12^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_128^save_1/Assign_129^save_1/Assign_13^save_1/Assign_130^save_1/Assign_131^save_1/Assign_132^save_1/Assign_133^save_1/Assign_134^save_1/Assign_135^save_1/Assign_136^save_1/Assign_137^save_1/Assign_138^save_1/Assign_139^save_1/Assign_14^save_1/Assign_140^save_1/Assign_141^save_1/Assign_142^save_1/Assign_143^save_1/Assign_144^save_1/Assign_145^save_1/Assign_146^save_1/Assign_147^save_1/Assign_148^save_1/Assign_149^save_1/Assign_15^save_1/Assign_150^save_1/Assign_151^save_1/Assign_152^save_1/Assign_153^save_1/Assign_154^save_1/Assign_155^save_1/Assign_156^save_1/Assign_157^save_1/Assign_158^save_1/Assign_159^save_1/Assign_16^save_1/Assign_160^save_1/Assign_161^save_1/Assign_162^save_1/Assign_163^save_1/Assign_164^save_1/Assign_165^save_1/Assign_166^save_1/Assign_167^save_1/Assign_168^save_1/Assign_169^save_1/Assign_17^save_1/Assign_170^save_1/Assign_171^save_1/Assign_172^save_1/Assign_173^save_1/Assign_174^save_1/Assign_175^save_1/Assign_176^save_1/Assign_177^save_1/Assign_178^save_1/Assign_179^save_1/Assign_18^save_1/Assign_180^save_1/Assign_181^save_1/Assign_182^save_1/Assign_183^save_1/Assign_184^save_1/Assign_185^save_1/Assign_186^save_1/Assign_187^save_1/Assign_188^save_1/Assign_189^save_1/Assign_19^save_1/Assign_190^save_1/Assign_191^save_1/Assign_192^save_1/Assign_193^save_1/Assign_194^save_1/Assign_195^save_1/Assign_196^save_1/Assign_197^save_1/Assign_198^save_1/Assign_199^save_1/Assign_2^save_1/Assign_20^save_1/Assign_200^save_1/Assign_201^save_1/Assign_202^save_1/Assign_203^save_1/Assign_204^save_1/Assign_205^save_1/Assign_206^save_1/Assign_207^save_1/Assign_208^save_1/Assign_209^save_1/Assign_21^save_1/Assign_210^save_1/Assign_211^save_1/Assign_212^save_1/Assign_213^save_1/Assign_214^save_1/Assign_215^save_1/Assign_216^save_1/Assign_217^save_1/Assign_218^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
1
save_1/restore_allNoOp^save_1/restore_shard"&B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ł
trainable_variablesí˛é˛
`
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02conv2d_1/random_uniform:08
Q
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02conv2d_1/Const:08

batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02batch_normalization_1/Const:08

batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02batch_normalization_1/Const_1:08

#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:02batch_normalization_1/Const_2:08
¨
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:02batch_normalization_1/Const_3:08
`
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02conv2d_2/random_uniform:08
Q
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02conv2d_2/Const:08

batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02batch_normalization_2/Const:08

batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02batch_normalization_2/Const_1:08

#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:02batch_normalization_2/Const_2:08
¨
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:02batch_normalization_2/Const_3:08
`
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02conv2d_3/random_uniform:08
Q
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02conv2d_3/Const:08

batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02batch_normalization_3/Const:08

batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02batch_normalization_3/Const_1:08

#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign(batch_normalization_3/moving_mean/read:02batch_normalization_3/Const_2:08
¨
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign,batch_normalization_3/moving_variance/read:02batch_normalization_3/Const_3:08
`
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02conv2d_4/random_uniform:08
Q
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02conv2d_4/Const:08

batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:02batch_normalization_4/Const:08

batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:02batch_normalization_4/Const_1:08

#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign(batch_normalization_4/moving_mean/read:02batch_normalization_4/Const_2:08
¨
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign,batch_normalization_4/moving_variance/read:02batch_normalization_4/Const_3:08
`
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02conv2d_5/random_uniform:08
Q
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02conv2d_5/Const:08

batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign"batch_normalization_5/gamma/read:02batch_normalization_5/Const:08

batch_normalization_5/beta:0!batch_normalization_5/beta/Assign!batch_normalization_5/beta/read:02batch_normalization_5/Const_1:08

#batch_normalization_5/moving_mean:0(batch_normalization_5/moving_mean/Assign(batch_normalization_5/moving_mean/read:02batch_normalization_5/Const_2:08
¨
'batch_normalization_5/moving_variance:0,batch_normalization_5/moving_variance/Assign,batch_normalization_5/moving_variance/read:02batch_normalization_5/Const_3:08
`
conv2d_6/kernel:0conv2d_6/kernel/Assignconv2d_6/kernel/read:02conv2d_6/random_uniform:08
Q
conv2d_6/bias:0conv2d_6/bias/Assignconv2d_6/bias/read:02conv2d_6/Const:08

batch_normalization_6/gamma:0"batch_normalization_6/gamma/Assign"batch_normalization_6/gamma/read:02batch_normalization_6/Const:08

batch_normalization_6/beta:0!batch_normalization_6/beta/Assign!batch_normalization_6/beta/read:02batch_normalization_6/Const_1:08

#batch_normalization_6/moving_mean:0(batch_normalization_6/moving_mean/Assign(batch_normalization_6/moving_mean/read:02batch_normalization_6/Const_2:08
¨
'batch_normalization_6/moving_variance:0,batch_normalization_6/moving_variance/Assign,batch_normalization_6/moving_variance/read:02batch_normalization_6/Const_3:08
`
conv2d_7/kernel:0conv2d_7/kernel/Assignconv2d_7/kernel/read:02conv2d_7/random_uniform:08
Q
conv2d_7/bias:0conv2d_7/bias/Assignconv2d_7/bias/read:02conv2d_7/Const:08

batch_normalization_7/gamma:0"batch_normalization_7/gamma/Assign"batch_normalization_7/gamma/read:02batch_normalization_7/Const:08

batch_normalization_7/beta:0!batch_normalization_7/beta/Assign!batch_normalization_7/beta/read:02batch_normalization_7/Const_1:08

#batch_normalization_7/moving_mean:0(batch_normalization_7/moving_mean/Assign(batch_normalization_7/moving_mean/read:02batch_normalization_7/Const_2:08
¨
'batch_normalization_7/moving_variance:0,batch_normalization_7/moving_variance/Assign,batch_normalization_7/moving_variance/read:02batch_normalization_7/Const_3:08

time_distributed_1/kernel:0 time_distributed_1/kernel/Assign time_distributed_1/kernel/read:02#time_distributed_1/random_uniform:08
y
time_distributed_1/bias:0time_distributed_1/bias/Assigntime_distributed_1/bias/read:02time_distributed_1/Const:08
\
vad_fc2/kernel:0vad_fc2/kernel/Assignvad_fc2/kernel/read:02vad_fc2/random_uniform:08
M
vad_fc2/bias:0vad_fc2/bias/Assignvad_fc2/bias/read:02vad_fc2/Const:08
P
vad_bn2/gamma:0vad_bn2/gamma/Assignvad_bn2/gamma/read:02vad_bn2/Const:08
O
vad_bn2/beta:0vad_bn2/beta/Assignvad_bn2/beta/read:02vad_bn2/Const_1:08
d
vad_bn2/moving_mean:0vad_bn2/moving_mean/Assignvad_bn2/moving_mean/read:02vad_bn2/Const_2:08
p
vad_bn2/moving_variance:0vad_bn2/moving_variance/Assignvad_bn2/moving_variance/read:02vad_bn2/Const_3:08
\
vad_fc3/kernel:0vad_fc3/kernel/Assignvad_fc3/kernel/read:02vad_fc3/random_uniform:08
M
vad_fc3/bias:0vad_fc3/bias/Assignvad_fc3/bias/read:02vad_fc3/Const:08
P
vad_bn3/gamma:0vad_bn3/gamma/Assignvad_bn3/gamma/read:02vad_bn3/Const:08
O
vad_bn3/beta:0vad_bn3/beta/Assignvad_bn3/beta/read:02vad_bn3/Const_1:08
d
vad_bn3/moving_mean:0vad_bn3/moving_mean/Assignvad_bn3/moving_mean/read:02vad_bn3/Const_2:08
p
vad_bn3/moving_variance:0vad_bn3/moving_variance/Assignvad_bn3/moving_variance/read:02vad_bn3/Const_3:08

vad_prediction_layer/kernel:0"vad_prediction_layer/kernel/Assign"vad_prediction_layer/kernel/read:02%vad_prediction_layer/random_uniform:08

vad_prediction_layer/bias:0 vad_prediction_layer/bias/Assign vad_prediction_layer/bias/read:02vad_prediction_layer/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08
}
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:08
}
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:08
}
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:08
}
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:08
}
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:08
}
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:08
}
training/Adam/Variable_30:0 training/Adam/Variable_30/Assign training/Adam/Variable_30/read:02training/Adam/zeros_30:08
}
training/Adam/Variable_31:0 training/Adam/Variable_31/Assign training/Adam/Variable_31/read:02training/Adam/zeros_31:08
}
training/Adam/Variable_32:0 training/Adam/Variable_32/Assign training/Adam/Variable_32/read:02training/Adam/zeros_32:08
}
training/Adam/Variable_33:0 training/Adam/Variable_33/Assign training/Adam/Variable_33/read:02training/Adam/zeros_33:08
}
training/Adam/Variable_34:0 training/Adam/Variable_34/Assign training/Adam/Variable_34/read:02training/Adam/zeros_34:08
}
training/Adam/Variable_35:0 training/Adam/Variable_35/Assign training/Adam/Variable_35/read:02training/Adam/zeros_35:08
}
training/Adam/Variable_36:0 training/Adam/Variable_36/Assign training/Adam/Variable_36/read:02training/Adam/zeros_36:08
}
training/Adam/Variable_37:0 training/Adam/Variable_37/Assign training/Adam/Variable_37/read:02training/Adam/zeros_37:08
}
training/Adam/Variable_38:0 training/Adam/Variable_38/Assign training/Adam/Variable_38/read:02training/Adam/zeros_38:08
}
training/Adam/Variable_39:0 training/Adam/Variable_39/Assign training/Adam/Variable_39/read:02training/Adam/zeros_39:08
}
training/Adam/Variable_40:0 training/Adam/Variable_40/Assign training/Adam/Variable_40/read:02training/Adam/zeros_40:08
}
training/Adam/Variable_41:0 training/Adam/Variable_41/Assign training/Adam/Variable_41/read:02training/Adam/zeros_41:08
}
training/Adam/Variable_42:0 training/Adam/Variable_42/Assign training/Adam/Variable_42/read:02training/Adam/zeros_42:08
}
training/Adam/Variable_43:0 training/Adam/Variable_43/Assign training/Adam/Variable_43/read:02training/Adam/zeros_43:08
}
training/Adam/Variable_44:0 training/Adam/Variable_44/Assign training/Adam/Variable_44/read:02training/Adam/zeros_44:08
}
training/Adam/Variable_45:0 training/Adam/Variable_45/Assign training/Adam/Variable_45/read:02training/Adam/zeros_45:08
}
training/Adam/Variable_46:0 training/Adam/Variable_46/Assign training/Adam/Variable_46/read:02training/Adam/zeros_46:08
}
training/Adam/Variable_47:0 training/Adam/Variable_47/Assign training/Adam/Variable_47/read:02training/Adam/zeros_47:08
}
training/Adam/Variable_48:0 training/Adam/Variable_48/Assign training/Adam/Variable_48/read:02training/Adam/zeros_48:08
}
training/Adam/Variable_49:0 training/Adam/Variable_49/Assign training/Adam/Variable_49/read:02training/Adam/zeros_49:08
}
training/Adam/Variable_50:0 training/Adam/Variable_50/Assign training/Adam/Variable_50/read:02training/Adam/zeros_50:08
}
training/Adam/Variable_51:0 training/Adam/Variable_51/Assign training/Adam/Variable_51/read:02training/Adam/zeros_51:08
}
training/Adam/Variable_52:0 training/Adam/Variable_52/Assign training/Adam/Variable_52/read:02training/Adam/zeros_52:08
}
training/Adam/Variable_53:0 training/Adam/Variable_53/Assign training/Adam/Variable_53/read:02training/Adam/zeros_53:08
}
training/Adam/Variable_54:0 training/Adam/Variable_54/Assign training/Adam/Variable_54/read:02training/Adam/zeros_54:08
}
training/Adam/Variable_55:0 training/Adam/Variable_55/Assign training/Adam/Variable_55/read:02training/Adam/zeros_55:08
}
training/Adam/Variable_56:0 training/Adam/Variable_56/Assign training/Adam/Variable_56/read:02training/Adam/zeros_56:08
}
training/Adam/Variable_57:0 training/Adam/Variable_57/Assign training/Adam/Variable_57/read:02training/Adam/zeros_57:08
}
training/Adam/Variable_58:0 training/Adam/Variable_58/Assign training/Adam/Variable_58/read:02training/Adam/zeros_58:08
}
training/Adam/Variable_59:0 training/Adam/Variable_59/Assign training/Adam/Variable_59/read:02training/Adam/zeros_59:08
}
training/Adam/Variable_60:0 training/Adam/Variable_60/Assign training/Adam/Variable_60/read:02training/Adam/zeros_60:08
}
training/Adam/Variable_61:0 training/Adam/Variable_61/Assign training/Adam/Variable_61/read:02training/Adam/zeros_61:08
}
training/Adam/Variable_62:0 training/Adam/Variable_62/Assign training/Adam/Variable_62/read:02training/Adam/zeros_62:08
}
training/Adam/Variable_63:0 training/Adam/Variable_63/Assign training/Adam/Variable_63/read:02training/Adam/zeros_63:08
}
training/Adam/Variable_64:0 training/Adam/Variable_64/Assign training/Adam/Variable_64/read:02training/Adam/zeros_64:08
}
training/Adam/Variable_65:0 training/Adam/Variable_65/Assign training/Adam/Variable_65/read:02training/Adam/zeros_65:08
}
training/Adam/Variable_66:0 training/Adam/Variable_66/Assign training/Adam/Variable_66/read:02training/Adam/zeros_66:08
}
training/Adam/Variable_67:0 training/Adam/Variable_67/Assign training/Adam/Variable_67/read:02training/Adam/zeros_67:08
}
training/Adam/Variable_68:0 training/Adam/Variable_68/Assign training/Adam/Variable_68/read:02training/Adam/zeros_68:08
}
training/Adam/Variable_69:0 training/Adam/Variable_69/Assign training/Adam/Variable_69/read:02training/Adam/zeros_69:08
}
training/Adam/Variable_70:0 training/Adam/Variable_70/Assign training/Adam/Variable_70/read:02training/Adam/zeros_70:08
}
training/Adam/Variable_71:0 training/Adam/Variable_71/Assign training/Adam/Variable_71/read:02training/Adam/zeros_71:08
}
training/Adam/Variable_72:0 training/Adam/Variable_72/Assign training/Adam/Variable_72/read:02training/Adam/zeros_72:08
}
training/Adam/Variable_73:0 training/Adam/Variable_73/Assign training/Adam/Variable_73/read:02training/Adam/zeros_73:08
}
training/Adam/Variable_74:0 training/Adam/Variable_74/Assign training/Adam/Variable_74/read:02training/Adam/zeros_74:08
}
training/Adam/Variable_75:0 training/Adam/Variable_75/Assign training/Adam/Variable_75/read:02training/Adam/zeros_75:08
}
training/Adam/Variable_76:0 training/Adam/Variable_76/Assign training/Adam/Variable_76/read:02training/Adam/zeros_76:08
}
training/Adam/Variable_77:0 training/Adam/Variable_77/Assign training/Adam/Variable_77/read:02training/Adam/zeros_77:08
}
training/Adam/Variable_78:0 training/Adam/Variable_78/Assign training/Adam/Variable_78/read:02training/Adam/zeros_78:08
}
training/Adam/Variable_79:0 training/Adam/Variable_79/Assign training/Adam/Variable_79/read:02training/Adam/zeros_79:08
}
training/Adam/Variable_80:0 training/Adam/Variable_80/Assign training/Adam/Variable_80/read:02training/Adam/zeros_80:08
}
training/Adam/Variable_81:0 training/Adam/Variable_81/Assign training/Adam/Variable_81/read:02training/Adam/zeros_81:08
}
training/Adam/Variable_82:0 training/Adam/Variable_82/Assign training/Adam/Variable_82/read:02training/Adam/zeros_82:08
}
training/Adam/Variable_83:0 training/Adam/Variable_83/Assign training/Adam/Variable_83/read:02training/Adam/zeros_83:08
}
training/Adam/Variable_84:0 training/Adam/Variable_84/Assign training/Adam/Variable_84/read:02training/Adam/zeros_84:08
}
training/Adam/Variable_85:0 training/Adam/Variable_85/Assign training/Adam/Variable_85/read:02training/Adam/zeros_85:08
}
training/Adam/Variable_86:0 training/Adam/Variable_86/Assign training/Adam/Variable_86/read:02training/Adam/zeros_86:08
}
training/Adam/Variable_87:0 training/Adam/Variable_87/Assign training/Adam/Variable_87/read:02training/Adam/zeros_87:08
}
training/Adam/Variable_88:0 training/Adam/Variable_88/Assign training/Adam/Variable_88/read:02training/Adam/zeros_88:08
}
training/Adam/Variable_89:0 training/Adam/Variable_89/Assign training/Adam/Variable_89/read:02training/Adam/zeros_89:08
}
training/Adam/Variable_90:0 training/Adam/Variable_90/Assign training/Adam/Variable_90/read:02training/Adam/zeros_90:08
}
training/Adam/Variable_91:0 training/Adam/Variable_91/Assign training/Adam/Variable_91/read:02training/Adam/zeros_91:08
}
training/Adam/Variable_92:0 training/Adam/Variable_92/Assign training/Adam/Variable_92/read:02training/Adam/zeros_92:08
}
training/Adam/Variable_93:0 training/Adam/Variable_93/Assign training/Adam/Variable_93/read:02training/Adam/zeros_93:08
}
training/Adam/Variable_94:0 training/Adam/Variable_94/Assign training/Adam/Variable_94/read:02training/Adam/zeros_94:08
}
training/Adam/Variable_95:0 training/Adam/Variable_95/Assign training/Adam/Variable_95/read:02training/Adam/zeros_95:08
}
training/Adam/Variable_96:0 training/Adam/Variable_96/Assign training/Adam/Variable_96/read:02training/Adam/zeros_96:08
}
training/Adam/Variable_97:0 training/Adam/Variable_97/Assign training/Adam/Variable_97/read:02training/Adam/zeros_97:08
}
training/Adam/Variable_98:0 training/Adam/Variable_98/Assign training/Adam/Variable_98/read:02training/Adam/zeros_98:08
}
training/Adam/Variable_99:0 training/Adam/Variable_99/Assign training/Adam/Variable_99/read:02training/Adam/zeros_99:08

training/Adam/Variable_100:0!training/Adam/Variable_100/Assign!training/Adam/Variable_100/read:02training/Adam/zeros_100:08

training/Adam/Variable_101:0!training/Adam/Variable_101/Assign!training/Adam/Variable_101/read:02training/Adam/zeros_101:08

training/Adam/Variable_102:0!training/Adam/Variable_102/Assign!training/Adam/Variable_102/read:02training/Adam/zeros_102:08

training/Adam/Variable_103:0!training/Adam/Variable_103/Assign!training/Adam/Variable_103/read:02training/Adam/zeros_103:08

training/Adam/Variable_104:0!training/Adam/Variable_104/Assign!training/Adam/Variable_104/read:02training/Adam/zeros_104:08

training/Adam/Variable_105:0!training/Adam/Variable_105/Assign!training/Adam/Variable_105/read:02training/Adam/zeros_105:08

training/Adam/Variable_106:0!training/Adam/Variable_106/Assign!training/Adam/Variable_106/read:02training/Adam/zeros_106:08

training/Adam/Variable_107:0!training/Adam/Variable_107/Assign!training/Adam/Variable_107/read:02training/Adam/zeros_107:08

training/Adam/Variable_108:0!training/Adam/Variable_108/Assign!training/Adam/Variable_108/read:02training/Adam/zeros_108:08

training/Adam/Variable_109:0!training/Adam/Variable_109/Assign!training/Adam/Variable_109/read:02training/Adam/zeros_109:08

training/Adam/Variable_110:0!training/Adam/Variable_110/Assign!training/Adam/Variable_110/read:02training/Adam/zeros_110:08

training/Adam/Variable_111:0!training/Adam/Variable_111/Assign!training/Adam/Variable_111/read:02training/Adam/zeros_111:08

training/Adam/Variable_112:0!training/Adam/Variable_112/Assign!training/Adam/Variable_112/read:02training/Adam/zeros_112:08

training/Adam/Variable_113:0!training/Adam/Variable_113/Assign!training/Adam/Variable_113/read:02training/Adam/zeros_113:08

training/Adam/Variable_114:0!training/Adam/Variable_114/Assign!training/Adam/Variable_114/read:02training/Adam/zeros_114:08

training/Adam/Variable_115:0!training/Adam/Variable_115/Assign!training/Adam/Variable_115/read:02training/Adam/zeros_115:08

training/Adam/Variable_116:0!training/Adam/Variable_116/Assign!training/Adam/Variable_116/read:02training/Adam/zeros_116:08

training/Adam/Variable_117:0!training/Adam/Variable_117/Assign!training/Adam/Variable_117/read:02training/Adam/zeros_117:08

training/Adam/Variable_118:0!training/Adam/Variable_118/Assign!training/Adam/Variable_118/read:02training/Adam/zeros_118:08

training/Adam/Variable_119:0!training/Adam/Variable_119/Assign!training/Adam/Variable_119/read:02training/Adam/zeros_119:08"Ň|
cond_contextÁ|ž|
Ú
$batch_normalization_1/cond/cond_text$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_t:0 *â
&batch_normalization_1/FusedBatchNorm:0
%batch_normalization_1/cond/Switch_1:0
%batch_normalization_1/cond/Switch_1:1
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_t:0L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0O
&batch_normalization_1/FusedBatchNorm:0%batch_normalization_1/cond/Switch_1:1
ü

&batch_normalization_1/cond/cond_text_1$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_f:0*

!batch_normalization_1/beta/read:0
2batch_normalization_1/cond/FusedBatchNorm/Switch:0
4batch_normalization_1/cond/FusedBatchNorm/Switch_1:0
4batch_normalization_1/cond/FusedBatchNorm/Switch_2:0
4batch_normalization_1/cond/FusedBatchNorm/Switch_3:0
4batch_normalization_1/cond/FusedBatchNorm/Switch_4:0
+batch_normalization_1/cond/FusedBatchNorm:0
+batch_normalization_1/cond/FusedBatchNorm:1
+batch_normalization_1/cond/FusedBatchNorm:2
+batch_normalization_1/cond/FusedBatchNorm:3
+batch_normalization_1/cond/FusedBatchNorm:4
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_f:0
"batch_normalization_1/gamma/read:0
(batch_normalization_1/moving_mean/read:0
,batch_normalization_1/moving_variance/read:0
conv2d_1/BiasAdd:0L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0d
,batch_normalization_1/moving_variance/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_4:0`
(batch_normalization_1/moving_mean/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_3:0H
conv2d_1/BiasAdd:02batch_normalization_1/cond/FusedBatchNorm/Switch:0Z
"batch_normalization_1/gamma/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_1:0Y
!batch_normalization_1/beta/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_2:0
Ú
$batch_normalization_2/cond/cond_text$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_t:0 *â
&batch_normalization_2/FusedBatchNorm:0
%batch_normalization_2/cond/Switch_1:0
%batch_normalization_2/cond/Switch_1:1
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_t:0L
$batch_normalization_2/cond/pred_id:0$batch_normalization_2/cond/pred_id:0O
&batch_normalization_2/FusedBatchNorm:0%batch_normalization_2/cond/Switch_1:1
ü

&batch_normalization_2/cond/cond_text_1$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_f:0*

!batch_normalization_2/beta/read:0
2batch_normalization_2/cond/FusedBatchNorm/Switch:0
4batch_normalization_2/cond/FusedBatchNorm/Switch_1:0
4batch_normalization_2/cond/FusedBatchNorm/Switch_2:0
4batch_normalization_2/cond/FusedBatchNorm/Switch_3:0
4batch_normalization_2/cond/FusedBatchNorm/Switch_4:0
+batch_normalization_2/cond/FusedBatchNorm:0
+batch_normalization_2/cond/FusedBatchNorm:1
+batch_normalization_2/cond/FusedBatchNorm:2
+batch_normalization_2/cond/FusedBatchNorm:3
+batch_normalization_2/cond/FusedBatchNorm:4
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_f:0
"batch_normalization_2/gamma/read:0
(batch_normalization_2/moving_mean/read:0
,batch_normalization_2/moving_variance/read:0
conv2d_2/BiasAdd:0L
$batch_normalization_2/cond/pred_id:0$batch_normalization_2/cond/pred_id:0Z
"batch_normalization_2/gamma/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_1:0H
conv2d_2/BiasAdd:02batch_normalization_2/cond/FusedBatchNorm/Switch:0d
,batch_normalization_2/moving_variance/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_4:0`
(batch_normalization_2/moving_mean/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_3:0Y
!batch_normalization_2/beta/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_2:0
Ú
$batch_normalization_3/cond/cond_text$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_t:0 *â
&batch_normalization_3/FusedBatchNorm:0
%batch_normalization_3/cond/Switch_1:0
%batch_normalization_3/cond/Switch_1:1
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_t:0L
$batch_normalization_3/cond/pred_id:0$batch_normalization_3/cond/pred_id:0O
&batch_normalization_3/FusedBatchNorm:0%batch_normalization_3/cond/Switch_1:1
ü

&batch_normalization_3/cond/cond_text_1$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_f:0*

!batch_normalization_3/beta/read:0
2batch_normalization_3/cond/FusedBatchNorm/Switch:0
4batch_normalization_3/cond/FusedBatchNorm/Switch_1:0
4batch_normalization_3/cond/FusedBatchNorm/Switch_2:0
4batch_normalization_3/cond/FusedBatchNorm/Switch_3:0
4batch_normalization_3/cond/FusedBatchNorm/Switch_4:0
+batch_normalization_3/cond/FusedBatchNorm:0
+batch_normalization_3/cond/FusedBatchNorm:1
+batch_normalization_3/cond/FusedBatchNorm:2
+batch_normalization_3/cond/FusedBatchNorm:3
+batch_normalization_3/cond/FusedBatchNorm:4
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_f:0
"batch_normalization_3/gamma/read:0
(batch_normalization_3/moving_mean/read:0
,batch_normalization_3/moving_variance/read:0
conv2d_3/BiasAdd:0`
(batch_normalization_3/moving_mean/read:04batch_normalization_3/cond/FusedBatchNorm/Switch_3:0d
,batch_normalization_3/moving_variance/read:04batch_normalization_3/cond/FusedBatchNorm/Switch_4:0Z
"batch_normalization_3/gamma/read:04batch_normalization_3/cond/FusedBatchNorm/Switch_1:0H
conv2d_3/BiasAdd:02batch_normalization_3/cond/FusedBatchNorm/Switch:0L
$batch_normalization_3/cond/pred_id:0$batch_normalization_3/cond/pred_id:0Y
!batch_normalization_3/beta/read:04batch_normalization_3/cond/FusedBatchNorm/Switch_2:0
Ú
$batch_normalization_4/cond/cond_text$batch_normalization_4/cond/pred_id:0%batch_normalization_4/cond/switch_t:0 *â
&batch_normalization_4/FusedBatchNorm:0
%batch_normalization_4/cond/Switch_1:0
%batch_normalization_4/cond/Switch_1:1
$batch_normalization_4/cond/pred_id:0
%batch_normalization_4/cond/switch_t:0L
$batch_normalization_4/cond/pred_id:0$batch_normalization_4/cond/pred_id:0O
&batch_normalization_4/FusedBatchNorm:0%batch_normalization_4/cond/Switch_1:1
ü

&batch_normalization_4/cond/cond_text_1$batch_normalization_4/cond/pred_id:0%batch_normalization_4/cond/switch_f:0*

!batch_normalization_4/beta/read:0
2batch_normalization_4/cond/FusedBatchNorm/Switch:0
4batch_normalization_4/cond/FusedBatchNorm/Switch_1:0
4batch_normalization_4/cond/FusedBatchNorm/Switch_2:0
4batch_normalization_4/cond/FusedBatchNorm/Switch_3:0
4batch_normalization_4/cond/FusedBatchNorm/Switch_4:0
+batch_normalization_4/cond/FusedBatchNorm:0
+batch_normalization_4/cond/FusedBatchNorm:1
+batch_normalization_4/cond/FusedBatchNorm:2
+batch_normalization_4/cond/FusedBatchNorm:3
+batch_normalization_4/cond/FusedBatchNorm:4
$batch_normalization_4/cond/pred_id:0
%batch_normalization_4/cond/switch_f:0
"batch_normalization_4/gamma/read:0
(batch_normalization_4/moving_mean/read:0
,batch_normalization_4/moving_variance/read:0
conv2d_4/BiasAdd:0d
,batch_normalization_4/moving_variance/read:04batch_normalization_4/cond/FusedBatchNorm/Switch_4:0Y
!batch_normalization_4/beta/read:04batch_normalization_4/cond/FusedBatchNorm/Switch_2:0`
(batch_normalization_4/moving_mean/read:04batch_normalization_4/cond/FusedBatchNorm/Switch_3:0H
conv2d_4/BiasAdd:02batch_normalization_4/cond/FusedBatchNorm/Switch:0Z
"batch_normalization_4/gamma/read:04batch_normalization_4/cond/FusedBatchNorm/Switch_1:0L
$batch_normalization_4/cond/pred_id:0$batch_normalization_4/cond/pred_id:0
Ú
$batch_normalization_5/cond/cond_text$batch_normalization_5/cond/pred_id:0%batch_normalization_5/cond/switch_t:0 *â
&batch_normalization_5/FusedBatchNorm:0
%batch_normalization_5/cond/Switch_1:0
%batch_normalization_5/cond/Switch_1:1
$batch_normalization_5/cond/pred_id:0
%batch_normalization_5/cond/switch_t:0L
$batch_normalization_5/cond/pred_id:0$batch_normalization_5/cond/pred_id:0O
&batch_normalization_5/FusedBatchNorm:0%batch_normalization_5/cond/Switch_1:1
ü

&batch_normalization_5/cond/cond_text_1$batch_normalization_5/cond/pred_id:0%batch_normalization_5/cond/switch_f:0*

!batch_normalization_5/beta/read:0
2batch_normalization_5/cond/FusedBatchNorm/Switch:0
4batch_normalization_5/cond/FusedBatchNorm/Switch_1:0
4batch_normalization_5/cond/FusedBatchNorm/Switch_2:0
4batch_normalization_5/cond/FusedBatchNorm/Switch_3:0
4batch_normalization_5/cond/FusedBatchNorm/Switch_4:0
+batch_normalization_5/cond/FusedBatchNorm:0
+batch_normalization_5/cond/FusedBatchNorm:1
+batch_normalization_5/cond/FusedBatchNorm:2
+batch_normalization_5/cond/FusedBatchNorm:3
+batch_normalization_5/cond/FusedBatchNorm:4
$batch_normalization_5/cond/pred_id:0
%batch_normalization_5/cond/switch_f:0
"batch_normalization_5/gamma/read:0
(batch_normalization_5/moving_mean/read:0
,batch_normalization_5/moving_variance/read:0
conv2d_5/BiasAdd:0Z
"batch_normalization_5/gamma/read:04batch_normalization_5/cond/FusedBatchNorm/Switch_1:0Y
!batch_normalization_5/beta/read:04batch_normalization_5/cond/FusedBatchNorm/Switch_2:0L
$batch_normalization_5/cond/pred_id:0$batch_normalization_5/cond/pred_id:0d
,batch_normalization_5/moving_variance/read:04batch_normalization_5/cond/FusedBatchNorm/Switch_4:0`
(batch_normalization_5/moving_mean/read:04batch_normalization_5/cond/FusedBatchNorm/Switch_3:0H
conv2d_5/BiasAdd:02batch_normalization_5/cond/FusedBatchNorm/Switch:0
Ú
$batch_normalization_6/cond/cond_text$batch_normalization_6/cond/pred_id:0%batch_normalization_6/cond/switch_t:0 *â
&batch_normalization_6/FusedBatchNorm:0
%batch_normalization_6/cond/Switch_1:0
%batch_normalization_6/cond/Switch_1:1
$batch_normalization_6/cond/pred_id:0
%batch_normalization_6/cond/switch_t:0L
$batch_normalization_6/cond/pred_id:0$batch_normalization_6/cond/pred_id:0O
&batch_normalization_6/FusedBatchNorm:0%batch_normalization_6/cond/Switch_1:1
ü

&batch_normalization_6/cond/cond_text_1$batch_normalization_6/cond/pred_id:0%batch_normalization_6/cond/switch_f:0*

!batch_normalization_6/beta/read:0
2batch_normalization_6/cond/FusedBatchNorm/Switch:0
4batch_normalization_6/cond/FusedBatchNorm/Switch_1:0
4batch_normalization_6/cond/FusedBatchNorm/Switch_2:0
4batch_normalization_6/cond/FusedBatchNorm/Switch_3:0
4batch_normalization_6/cond/FusedBatchNorm/Switch_4:0
+batch_normalization_6/cond/FusedBatchNorm:0
+batch_normalization_6/cond/FusedBatchNorm:1
+batch_normalization_6/cond/FusedBatchNorm:2
+batch_normalization_6/cond/FusedBatchNorm:3
+batch_normalization_6/cond/FusedBatchNorm:4
$batch_normalization_6/cond/pred_id:0
%batch_normalization_6/cond/switch_f:0
"batch_normalization_6/gamma/read:0
(batch_normalization_6/moving_mean/read:0
,batch_normalization_6/moving_variance/read:0
conv2d_6/BiasAdd:0L
$batch_normalization_6/cond/pred_id:0$batch_normalization_6/cond/pred_id:0Z
"batch_normalization_6/gamma/read:04batch_normalization_6/cond/FusedBatchNorm/Switch_1:0H
conv2d_6/BiasAdd:02batch_normalization_6/cond/FusedBatchNorm/Switch:0`
(batch_normalization_6/moving_mean/read:04batch_normalization_6/cond/FusedBatchNorm/Switch_3:0d
,batch_normalization_6/moving_variance/read:04batch_normalization_6/cond/FusedBatchNorm/Switch_4:0Y
!batch_normalization_6/beta/read:04batch_normalization_6/cond/FusedBatchNorm/Switch_2:0
Ú
$batch_normalization_7/cond/cond_text$batch_normalization_7/cond/pred_id:0%batch_normalization_7/cond/switch_t:0 *â
&batch_normalization_7/FusedBatchNorm:0
%batch_normalization_7/cond/Switch_1:0
%batch_normalization_7/cond/Switch_1:1
$batch_normalization_7/cond/pred_id:0
%batch_normalization_7/cond/switch_t:0O
&batch_normalization_7/FusedBatchNorm:0%batch_normalization_7/cond/Switch_1:1L
$batch_normalization_7/cond/pred_id:0$batch_normalization_7/cond/pred_id:0
ü

&batch_normalization_7/cond/cond_text_1$batch_normalization_7/cond/pred_id:0%batch_normalization_7/cond/switch_f:0*

!batch_normalization_7/beta/read:0
2batch_normalization_7/cond/FusedBatchNorm/Switch:0
4batch_normalization_7/cond/FusedBatchNorm/Switch_1:0
4batch_normalization_7/cond/FusedBatchNorm/Switch_2:0
4batch_normalization_7/cond/FusedBatchNorm/Switch_3:0
4batch_normalization_7/cond/FusedBatchNorm/Switch_4:0
+batch_normalization_7/cond/FusedBatchNorm:0
+batch_normalization_7/cond/FusedBatchNorm:1
+batch_normalization_7/cond/FusedBatchNorm:2
+batch_normalization_7/cond/FusedBatchNorm:3
+batch_normalization_7/cond/FusedBatchNorm:4
$batch_normalization_7/cond/pred_id:0
%batch_normalization_7/cond/switch_f:0
"batch_normalization_7/gamma/read:0
(batch_normalization_7/moving_mean/read:0
,batch_normalization_7/moving_variance/read:0
conv2d_7/BiasAdd:0L
$batch_normalization_7/cond/pred_id:0$batch_normalization_7/cond/pred_id:0Y
!batch_normalization_7/beta/read:04batch_normalization_7/cond/FusedBatchNorm/Switch_2:0d
,batch_normalization_7/moving_variance/read:04batch_normalization_7/cond/FusedBatchNorm/Switch_4:0`
(batch_normalization_7/moving_mean/read:04batch_normalization_7/cond/FusedBatchNorm/Switch_3:0Z
"batch_normalization_7/gamma/read:04batch_normalization_7/cond/FusedBatchNorm/Switch_1:0H
conv2d_7/BiasAdd:02batch_normalization_7/cond/FusedBatchNorm/Switch:0
´
vad_bn2/cond/cond_textvad_bn2/cond/pred_id:0vad_bn2/cond/switch_t:0 *ć
vad_bn2/batchnorm/add_1:0
vad_bn2/cond/Switch_1:0
vad_bn2/cond/Switch_1:1
vad_bn2/cond/pred_id:0
vad_bn2/cond/switch_t:04
vad_bn2/batchnorm/add_1:0vad_bn2/cond/Switch_1:10
vad_bn2/cond/pred_id:0vad_bn2/cond/pred_id:0
Ł
vad_bn2/cond/cond_text_1vad_bn2/cond/pred_id:0vad_bn2/cond/switch_f:0*Ő
vad_bn2/beta/read:0
vad_bn2/cond/batchnorm/Rsqrt:0
#vad_bn2/cond/batchnorm/add/Switch:0
vad_bn2/cond/batchnorm/add/y:0
vad_bn2/cond/batchnorm/add:0
vad_bn2/cond/batchnorm/add_1:0
#vad_bn2/cond/batchnorm/mul/Switch:0
vad_bn2/cond/batchnorm/mul:0
%vad_bn2/cond/batchnorm/mul_1/Switch:0
vad_bn2/cond/batchnorm/mul_1:0
%vad_bn2/cond/batchnorm/mul_2/Switch:0
vad_bn2/cond/batchnorm/mul_2:0
#vad_bn2/cond/batchnorm/sub/Switch:0
vad_bn2/cond/batchnorm/sub:0
vad_bn2/cond/pred_id:0
vad_bn2/cond/switch_f:0
vad_bn2/gamma/read:0
vad_bn2/moving_mean/read:0
vad_bn2/moving_variance/read:0
vad_fc2/BiasAdd:0:
vad_bn2/beta/read:0#vad_bn2/cond/batchnorm/sub/Switch:0:
vad_fc2/BiasAdd:0%vad_bn2/cond/batchnorm/mul_1/Switch:00
vad_bn2/cond/pred_id:0vad_bn2/cond/pred_id:0E
vad_bn2/moving_variance/read:0#vad_bn2/cond/batchnorm/add/Switch:0C
vad_bn2/moving_mean/read:0%vad_bn2/cond/batchnorm/mul_2/Switch:0;
vad_bn2/gamma/read:0#vad_bn2/cond/batchnorm/mul/Switch:0
´
vad_bn3/cond/cond_textvad_bn3/cond/pred_id:0vad_bn3/cond/switch_t:0 *ć
vad_bn3/batchnorm/add_1:0
vad_bn3/cond/Switch_1:0
vad_bn3/cond/Switch_1:1
vad_bn3/cond/pred_id:0
vad_bn3/cond/switch_t:00
vad_bn3/cond/pred_id:0vad_bn3/cond/pred_id:04
vad_bn3/batchnorm/add_1:0vad_bn3/cond/Switch_1:1
Ł
vad_bn3/cond/cond_text_1vad_bn3/cond/pred_id:0vad_bn3/cond/switch_f:0*Ő
vad_bn3/beta/read:0
vad_bn3/cond/batchnorm/Rsqrt:0
#vad_bn3/cond/batchnorm/add/Switch:0
vad_bn3/cond/batchnorm/add/y:0
vad_bn3/cond/batchnorm/add:0
vad_bn3/cond/batchnorm/add_1:0
#vad_bn3/cond/batchnorm/mul/Switch:0
vad_bn3/cond/batchnorm/mul:0
%vad_bn3/cond/batchnorm/mul_1/Switch:0
vad_bn3/cond/batchnorm/mul_1:0
%vad_bn3/cond/batchnorm/mul_2/Switch:0
vad_bn3/cond/batchnorm/mul_2:0
#vad_bn3/cond/batchnorm/sub/Switch:0
vad_bn3/cond/batchnorm/sub:0
vad_bn3/cond/pred_id:0
vad_bn3/cond/switch_f:0
vad_bn3/gamma/read:0
vad_bn3/moving_mean/read:0
vad_bn3/moving_variance/read:0
vad_fc3/BiasAdd:00
vad_bn3/cond/pred_id:0vad_bn3/cond/pred_id:0;
vad_bn3/gamma/read:0#vad_bn3/cond/batchnorm/mul/Switch:0E
vad_bn3/moving_variance/read:0#vad_bn3/cond/batchnorm/add/Switch:0C
vad_bn3/moving_mean/read:0%vad_bn3/cond/batchnorm/mul_2/Switch:0:
vad_fc3/BiasAdd:0%vad_bn3/cond/batchnorm/mul_1/Switch:0:
vad_bn3/beta/read:0#vad_bn3/cond/batchnorm/sub/Switch:0"î
	variablesîî
`
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02conv2d_1/random_uniform:08
Q
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02conv2d_1/Const:08

batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02batch_normalization_1/Const:08

batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02batch_normalization_1/Const_1:08

#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:02batch_normalization_1/Const_2:08
¨
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:02batch_normalization_1/Const_3:08
Ě
*batch_normalization_1/moving_mean/biased:0/batch_normalization_1/moving_mean/biased/Assign/batch_normalization_1/moving_mean/biased/read:02<batch_normalization_1/moving_mean/biased/Initializer/zeros:0
Ü
.batch_normalization_1/moving_mean/local_step:03batch_normalization_1/moving_mean/local_step/Assign3batch_normalization_1/moving_mean/local_step/read:02@batch_normalization_1/moving_mean/local_step/Initializer/zeros:0
Ü
.batch_normalization_1/moving_variance/biased:03batch_normalization_1/moving_variance/biased/Assign3batch_normalization_1/moving_variance/biased/read:02@batch_normalization_1/moving_variance/biased/Initializer/zeros:0
ě
2batch_normalization_1/moving_variance/local_step:07batch_normalization_1/moving_variance/local_step/Assign7batch_normalization_1/moving_variance/local_step/read:02Dbatch_normalization_1/moving_variance/local_step/Initializer/zeros:0
`
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02conv2d_2/random_uniform:08
Q
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02conv2d_2/Const:08

batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02batch_normalization_2/Const:08

batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02batch_normalization_2/Const_1:08

#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:02batch_normalization_2/Const_2:08
¨
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:02batch_normalization_2/Const_3:08
Ě
*batch_normalization_2/moving_mean/biased:0/batch_normalization_2/moving_mean/biased/Assign/batch_normalization_2/moving_mean/biased/read:02<batch_normalization_2/moving_mean/biased/Initializer/zeros:0
Ü
.batch_normalization_2/moving_mean/local_step:03batch_normalization_2/moving_mean/local_step/Assign3batch_normalization_2/moving_mean/local_step/read:02@batch_normalization_2/moving_mean/local_step/Initializer/zeros:0
Ü
.batch_normalization_2/moving_variance/biased:03batch_normalization_2/moving_variance/biased/Assign3batch_normalization_2/moving_variance/biased/read:02@batch_normalization_2/moving_variance/biased/Initializer/zeros:0
ě
2batch_normalization_2/moving_variance/local_step:07batch_normalization_2/moving_variance/local_step/Assign7batch_normalization_2/moving_variance/local_step/read:02Dbatch_normalization_2/moving_variance/local_step/Initializer/zeros:0
`
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02conv2d_3/random_uniform:08
Q
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02conv2d_3/Const:08

batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02batch_normalization_3/Const:08

batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02batch_normalization_3/Const_1:08

#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign(batch_normalization_3/moving_mean/read:02batch_normalization_3/Const_2:08
¨
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign,batch_normalization_3/moving_variance/read:02batch_normalization_3/Const_3:08
Ě
*batch_normalization_3/moving_mean/biased:0/batch_normalization_3/moving_mean/biased/Assign/batch_normalization_3/moving_mean/biased/read:02<batch_normalization_3/moving_mean/biased/Initializer/zeros:0
Ü
.batch_normalization_3/moving_mean/local_step:03batch_normalization_3/moving_mean/local_step/Assign3batch_normalization_3/moving_mean/local_step/read:02@batch_normalization_3/moving_mean/local_step/Initializer/zeros:0
Ü
.batch_normalization_3/moving_variance/biased:03batch_normalization_3/moving_variance/biased/Assign3batch_normalization_3/moving_variance/biased/read:02@batch_normalization_3/moving_variance/biased/Initializer/zeros:0
ě
2batch_normalization_3/moving_variance/local_step:07batch_normalization_3/moving_variance/local_step/Assign7batch_normalization_3/moving_variance/local_step/read:02Dbatch_normalization_3/moving_variance/local_step/Initializer/zeros:0
`
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02conv2d_4/random_uniform:08
Q
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02conv2d_4/Const:08

batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:02batch_normalization_4/Const:08

batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:02batch_normalization_4/Const_1:08

#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign(batch_normalization_4/moving_mean/read:02batch_normalization_4/Const_2:08
¨
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign,batch_normalization_4/moving_variance/read:02batch_normalization_4/Const_3:08
Ě
*batch_normalization_4/moving_mean/biased:0/batch_normalization_4/moving_mean/biased/Assign/batch_normalization_4/moving_mean/biased/read:02<batch_normalization_4/moving_mean/biased/Initializer/zeros:0
Ü
.batch_normalization_4/moving_mean/local_step:03batch_normalization_4/moving_mean/local_step/Assign3batch_normalization_4/moving_mean/local_step/read:02@batch_normalization_4/moving_mean/local_step/Initializer/zeros:0
Ü
.batch_normalization_4/moving_variance/biased:03batch_normalization_4/moving_variance/biased/Assign3batch_normalization_4/moving_variance/biased/read:02@batch_normalization_4/moving_variance/biased/Initializer/zeros:0
ě
2batch_normalization_4/moving_variance/local_step:07batch_normalization_4/moving_variance/local_step/Assign7batch_normalization_4/moving_variance/local_step/read:02Dbatch_normalization_4/moving_variance/local_step/Initializer/zeros:0
`
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02conv2d_5/random_uniform:08
Q
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02conv2d_5/Const:08

batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign"batch_normalization_5/gamma/read:02batch_normalization_5/Const:08

batch_normalization_5/beta:0!batch_normalization_5/beta/Assign!batch_normalization_5/beta/read:02batch_normalization_5/Const_1:08

#batch_normalization_5/moving_mean:0(batch_normalization_5/moving_mean/Assign(batch_normalization_5/moving_mean/read:02batch_normalization_5/Const_2:08
¨
'batch_normalization_5/moving_variance:0,batch_normalization_5/moving_variance/Assign,batch_normalization_5/moving_variance/read:02batch_normalization_5/Const_3:08
Ě
*batch_normalization_5/moving_mean/biased:0/batch_normalization_5/moving_mean/biased/Assign/batch_normalization_5/moving_mean/biased/read:02<batch_normalization_5/moving_mean/biased/Initializer/zeros:0
Ü
.batch_normalization_5/moving_mean/local_step:03batch_normalization_5/moving_mean/local_step/Assign3batch_normalization_5/moving_mean/local_step/read:02@batch_normalization_5/moving_mean/local_step/Initializer/zeros:0
Ü
.batch_normalization_5/moving_variance/biased:03batch_normalization_5/moving_variance/biased/Assign3batch_normalization_5/moving_variance/biased/read:02@batch_normalization_5/moving_variance/biased/Initializer/zeros:0
ě
2batch_normalization_5/moving_variance/local_step:07batch_normalization_5/moving_variance/local_step/Assign7batch_normalization_5/moving_variance/local_step/read:02Dbatch_normalization_5/moving_variance/local_step/Initializer/zeros:0
`
conv2d_6/kernel:0conv2d_6/kernel/Assignconv2d_6/kernel/read:02conv2d_6/random_uniform:08
Q
conv2d_6/bias:0conv2d_6/bias/Assignconv2d_6/bias/read:02conv2d_6/Const:08

batch_normalization_6/gamma:0"batch_normalization_6/gamma/Assign"batch_normalization_6/gamma/read:02batch_normalization_6/Const:08

batch_normalization_6/beta:0!batch_normalization_6/beta/Assign!batch_normalization_6/beta/read:02batch_normalization_6/Const_1:08

#batch_normalization_6/moving_mean:0(batch_normalization_6/moving_mean/Assign(batch_normalization_6/moving_mean/read:02batch_normalization_6/Const_2:08
¨
'batch_normalization_6/moving_variance:0,batch_normalization_6/moving_variance/Assign,batch_normalization_6/moving_variance/read:02batch_normalization_6/Const_3:08
Ě
*batch_normalization_6/moving_mean/biased:0/batch_normalization_6/moving_mean/biased/Assign/batch_normalization_6/moving_mean/biased/read:02<batch_normalization_6/moving_mean/biased/Initializer/zeros:0
Ü
.batch_normalization_6/moving_mean/local_step:03batch_normalization_6/moving_mean/local_step/Assign3batch_normalization_6/moving_mean/local_step/read:02@batch_normalization_6/moving_mean/local_step/Initializer/zeros:0
Ü
.batch_normalization_6/moving_variance/biased:03batch_normalization_6/moving_variance/biased/Assign3batch_normalization_6/moving_variance/biased/read:02@batch_normalization_6/moving_variance/biased/Initializer/zeros:0
ě
2batch_normalization_6/moving_variance/local_step:07batch_normalization_6/moving_variance/local_step/Assign7batch_normalization_6/moving_variance/local_step/read:02Dbatch_normalization_6/moving_variance/local_step/Initializer/zeros:0
`
conv2d_7/kernel:0conv2d_7/kernel/Assignconv2d_7/kernel/read:02conv2d_7/random_uniform:08
Q
conv2d_7/bias:0conv2d_7/bias/Assignconv2d_7/bias/read:02conv2d_7/Const:08

batch_normalization_7/gamma:0"batch_normalization_7/gamma/Assign"batch_normalization_7/gamma/read:02batch_normalization_7/Const:08

batch_normalization_7/beta:0!batch_normalization_7/beta/Assign!batch_normalization_7/beta/read:02batch_normalization_7/Const_1:08

#batch_normalization_7/moving_mean:0(batch_normalization_7/moving_mean/Assign(batch_normalization_7/moving_mean/read:02batch_normalization_7/Const_2:08
¨
'batch_normalization_7/moving_variance:0,batch_normalization_7/moving_variance/Assign,batch_normalization_7/moving_variance/read:02batch_normalization_7/Const_3:08
Ě
*batch_normalization_7/moving_mean/biased:0/batch_normalization_7/moving_mean/biased/Assign/batch_normalization_7/moving_mean/biased/read:02<batch_normalization_7/moving_mean/biased/Initializer/zeros:0
Ü
.batch_normalization_7/moving_mean/local_step:03batch_normalization_7/moving_mean/local_step/Assign3batch_normalization_7/moving_mean/local_step/read:02@batch_normalization_7/moving_mean/local_step/Initializer/zeros:0
Ü
.batch_normalization_7/moving_variance/biased:03batch_normalization_7/moving_variance/biased/Assign3batch_normalization_7/moving_variance/biased/read:02@batch_normalization_7/moving_variance/biased/Initializer/zeros:0
ě
2batch_normalization_7/moving_variance/local_step:07batch_normalization_7/moving_variance/local_step/Assign7batch_normalization_7/moving_variance/local_step/read:02Dbatch_normalization_7/moving_variance/local_step/Initializer/zeros:0

time_distributed_1/kernel:0 time_distributed_1/kernel/Assign time_distributed_1/kernel/read:02#time_distributed_1/random_uniform:08
y
time_distributed_1/bias:0time_distributed_1/bias/Assigntime_distributed_1/bias/read:02time_distributed_1/Const:08
\
vad_fc2/kernel:0vad_fc2/kernel/Assignvad_fc2/kernel/read:02vad_fc2/random_uniform:08
M
vad_fc2/bias:0vad_fc2/bias/Assignvad_fc2/bias/read:02vad_fc2/Const:08
P
vad_bn2/gamma:0vad_bn2/gamma/Assignvad_bn2/gamma/read:02vad_bn2/Const:08
O
vad_bn2/beta:0vad_bn2/beta/Assignvad_bn2/beta/read:02vad_bn2/Const_1:08
d
vad_bn2/moving_mean:0vad_bn2/moving_mean/Assignvad_bn2/moving_mean/read:02vad_bn2/Const_2:08
p
vad_bn2/moving_variance:0vad_bn2/moving_variance/Assignvad_bn2/moving_variance/read:02vad_bn2/Const_3:08

vad_bn2/moving_mean/biased:0!vad_bn2/moving_mean/biased/Assign!vad_bn2/moving_mean/biased/read:02.vad_bn2/moving_mean/biased/Initializer/zeros:0
¤
 vad_bn2/moving_mean/local_step:0%vad_bn2/moving_mean/local_step/Assign%vad_bn2/moving_mean/local_step/read:022vad_bn2/moving_mean/local_step/Initializer/zeros:0
¤
 vad_bn2/moving_variance/biased:0%vad_bn2/moving_variance/biased/Assign%vad_bn2/moving_variance/biased/read:022vad_bn2/moving_variance/biased/Initializer/zeros:0
´
$vad_bn2/moving_variance/local_step:0)vad_bn2/moving_variance/local_step/Assign)vad_bn2/moving_variance/local_step/read:026vad_bn2/moving_variance/local_step/Initializer/zeros:0
\
vad_fc3/kernel:0vad_fc3/kernel/Assignvad_fc3/kernel/read:02vad_fc3/random_uniform:08
M
vad_fc3/bias:0vad_fc3/bias/Assignvad_fc3/bias/read:02vad_fc3/Const:08
P
vad_bn3/gamma:0vad_bn3/gamma/Assignvad_bn3/gamma/read:02vad_bn3/Const:08
O
vad_bn3/beta:0vad_bn3/beta/Assignvad_bn3/beta/read:02vad_bn3/Const_1:08
d
vad_bn3/moving_mean:0vad_bn3/moving_mean/Assignvad_bn3/moving_mean/read:02vad_bn3/Const_2:08
p
vad_bn3/moving_variance:0vad_bn3/moving_variance/Assignvad_bn3/moving_variance/read:02vad_bn3/Const_3:08

vad_bn3/moving_mean/biased:0!vad_bn3/moving_mean/biased/Assign!vad_bn3/moving_mean/biased/read:02.vad_bn3/moving_mean/biased/Initializer/zeros:0
¤
 vad_bn3/moving_mean/local_step:0%vad_bn3/moving_mean/local_step/Assign%vad_bn3/moving_mean/local_step/read:022vad_bn3/moving_mean/local_step/Initializer/zeros:0
¤
 vad_bn3/moving_variance/biased:0%vad_bn3/moving_variance/biased/Assign%vad_bn3/moving_variance/biased/read:022vad_bn3/moving_variance/biased/Initializer/zeros:0
´
$vad_bn3/moving_variance/local_step:0)vad_bn3/moving_variance/local_step/Assign)vad_bn3/moving_variance/local_step/read:026vad_bn3/moving_variance/local_step/Initializer/zeros:0

vad_prediction_layer/kernel:0"vad_prediction_layer/kernel/Assign"vad_prediction_layer/kernel/read:02%vad_prediction_layer/random_uniform:08

vad_prediction_layer/bias:0 vad_prediction_layer/bias/Assign vad_prediction_layer/bias/read:02vad_prediction_layer/Const:08
f
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:08
F
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:08
V
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:08
V
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:08
R
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:08
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:08
y
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:08
y
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:08
y
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:08
y
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:08
y
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:08
y
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:08
y
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:08
y
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:08
y
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:08
}
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:08
}
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:08
}
training/Adam/Variable_12:0 training/Adam/Variable_12/Assign training/Adam/Variable_12/read:02training/Adam/zeros_12:08
}
training/Adam/Variable_13:0 training/Adam/Variable_13/Assign training/Adam/Variable_13/read:02training/Adam/zeros_13:08
}
training/Adam/Variable_14:0 training/Adam/Variable_14/Assign training/Adam/Variable_14/read:02training/Adam/zeros_14:08
}
training/Adam/Variable_15:0 training/Adam/Variable_15/Assign training/Adam/Variable_15/read:02training/Adam/zeros_15:08
}
training/Adam/Variable_16:0 training/Adam/Variable_16/Assign training/Adam/Variable_16/read:02training/Adam/zeros_16:08
}
training/Adam/Variable_17:0 training/Adam/Variable_17/Assign training/Adam/Variable_17/read:02training/Adam/zeros_17:08
}
training/Adam/Variable_18:0 training/Adam/Variable_18/Assign training/Adam/Variable_18/read:02training/Adam/zeros_18:08
}
training/Adam/Variable_19:0 training/Adam/Variable_19/Assign training/Adam/Variable_19/read:02training/Adam/zeros_19:08
}
training/Adam/Variable_20:0 training/Adam/Variable_20/Assign training/Adam/Variable_20/read:02training/Adam/zeros_20:08
}
training/Adam/Variable_21:0 training/Adam/Variable_21/Assign training/Adam/Variable_21/read:02training/Adam/zeros_21:08
}
training/Adam/Variable_22:0 training/Adam/Variable_22/Assign training/Adam/Variable_22/read:02training/Adam/zeros_22:08
}
training/Adam/Variable_23:0 training/Adam/Variable_23/Assign training/Adam/Variable_23/read:02training/Adam/zeros_23:08
}
training/Adam/Variable_24:0 training/Adam/Variable_24/Assign training/Adam/Variable_24/read:02training/Adam/zeros_24:08
}
training/Adam/Variable_25:0 training/Adam/Variable_25/Assign training/Adam/Variable_25/read:02training/Adam/zeros_25:08
}
training/Adam/Variable_26:0 training/Adam/Variable_26/Assign training/Adam/Variable_26/read:02training/Adam/zeros_26:08
}
training/Adam/Variable_27:0 training/Adam/Variable_27/Assign training/Adam/Variable_27/read:02training/Adam/zeros_27:08
}
training/Adam/Variable_28:0 training/Adam/Variable_28/Assign training/Adam/Variable_28/read:02training/Adam/zeros_28:08
}
training/Adam/Variable_29:0 training/Adam/Variable_29/Assign training/Adam/Variable_29/read:02training/Adam/zeros_29:08
}
training/Adam/Variable_30:0 training/Adam/Variable_30/Assign training/Adam/Variable_30/read:02training/Adam/zeros_30:08
}
training/Adam/Variable_31:0 training/Adam/Variable_31/Assign training/Adam/Variable_31/read:02training/Adam/zeros_31:08
}
training/Adam/Variable_32:0 training/Adam/Variable_32/Assign training/Adam/Variable_32/read:02training/Adam/zeros_32:08
}
training/Adam/Variable_33:0 training/Adam/Variable_33/Assign training/Adam/Variable_33/read:02training/Adam/zeros_33:08
}
training/Adam/Variable_34:0 training/Adam/Variable_34/Assign training/Adam/Variable_34/read:02training/Adam/zeros_34:08
}
training/Adam/Variable_35:0 training/Adam/Variable_35/Assign training/Adam/Variable_35/read:02training/Adam/zeros_35:08
}
training/Adam/Variable_36:0 training/Adam/Variable_36/Assign training/Adam/Variable_36/read:02training/Adam/zeros_36:08
}
training/Adam/Variable_37:0 training/Adam/Variable_37/Assign training/Adam/Variable_37/read:02training/Adam/zeros_37:08
}
training/Adam/Variable_38:0 training/Adam/Variable_38/Assign training/Adam/Variable_38/read:02training/Adam/zeros_38:08
}
training/Adam/Variable_39:0 training/Adam/Variable_39/Assign training/Adam/Variable_39/read:02training/Adam/zeros_39:08
}
training/Adam/Variable_40:0 training/Adam/Variable_40/Assign training/Adam/Variable_40/read:02training/Adam/zeros_40:08
}
training/Adam/Variable_41:0 training/Adam/Variable_41/Assign training/Adam/Variable_41/read:02training/Adam/zeros_41:08
}
training/Adam/Variable_42:0 training/Adam/Variable_42/Assign training/Adam/Variable_42/read:02training/Adam/zeros_42:08
}
training/Adam/Variable_43:0 training/Adam/Variable_43/Assign training/Adam/Variable_43/read:02training/Adam/zeros_43:08
}
training/Adam/Variable_44:0 training/Adam/Variable_44/Assign training/Adam/Variable_44/read:02training/Adam/zeros_44:08
}
training/Adam/Variable_45:0 training/Adam/Variable_45/Assign training/Adam/Variable_45/read:02training/Adam/zeros_45:08
}
training/Adam/Variable_46:0 training/Adam/Variable_46/Assign training/Adam/Variable_46/read:02training/Adam/zeros_46:08
}
training/Adam/Variable_47:0 training/Adam/Variable_47/Assign training/Adam/Variable_47/read:02training/Adam/zeros_47:08
}
training/Adam/Variable_48:0 training/Adam/Variable_48/Assign training/Adam/Variable_48/read:02training/Adam/zeros_48:08
}
training/Adam/Variable_49:0 training/Adam/Variable_49/Assign training/Adam/Variable_49/read:02training/Adam/zeros_49:08
}
training/Adam/Variable_50:0 training/Adam/Variable_50/Assign training/Adam/Variable_50/read:02training/Adam/zeros_50:08
}
training/Adam/Variable_51:0 training/Adam/Variable_51/Assign training/Adam/Variable_51/read:02training/Adam/zeros_51:08
}
training/Adam/Variable_52:0 training/Adam/Variable_52/Assign training/Adam/Variable_52/read:02training/Adam/zeros_52:08
}
training/Adam/Variable_53:0 training/Adam/Variable_53/Assign training/Adam/Variable_53/read:02training/Adam/zeros_53:08
}
training/Adam/Variable_54:0 training/Adam/Variable_54/Assign training/Adam/Variable_54/read:02training/Adam/zeros_54:08
}
training/Adam/Variable_55:0 training/Adam/Variable_55/Assign training/Adam/Variable_55/read:02training/Adam/zeros_55:08
}
training/Adam/Variable_56:0 training/Adam/Variable_56/Assign training/Adam/Variable_56/read:02training/Adam/zeros_56:08
}
training/Adam/Variable_57:0 training/Adam/Variable_57/Assign training/Adam/Variable_57/read:02training/Adam/zeros_57:08
}
training/Adam/Variable_58:0 training/Adam/Variable_58/Assign training/Adam/Variable_58/read:02training/Adam/zeros_58:08
}
training/Adam/Variable_59:0 training/Adam/Variable_59/Assign training/Adam/Variable_59/read:02training/Adam/zeros_59:08
}
training/Adam/Variable_60:0 training/Adam/Variable_60/Assign training/Adam/Variable_60/read:02training/Adam/zeros_60:08
}
training/Adam/Variable_61:0 training/Adam/Variable_61/Assign training/Adam/Variable_61/read:02training/Adam/zeros_61:08
}
training/Adam/Variable_62:0 training/Adam/Variable_62/Assign training/Adam/Variable_62/read:02training/Adam/zeros_62:08
}
training/Adam/Variable_63:0 training/Adam/Variable_63/Assign training/Adam/Variable_63/read:02training/Adam/zeros_63:08
}
training/Adam/Variable_64:0 training/Adam/Variable_64/Assign training/Adam/Variable_64/read:02training/Adam/zeros_64:08
}
training/Adam/Variable_65:0 training/Adam/Variable_65/Assign training/Adam/Variable_65/read:02training/Adam/zeros_65:08
}
training/Adam/Variable_66:0 training/Adam/Variable_66/Assign training/Adam/Variable_66/read:02training/Adam/zeros_66:08
}
training/Adam/Variable_67:0 training/Adam/Variable_67/Assign training/Adam/Variable_67/read:02training/Adam/zeros_67:08
}
training/Adam/Variable_68:0 training/Adam/Variable_68/Assign training/Adam/Variable_68/read:02training/Adam/zeros_68:08
}
training/Adam/Variable_69:0 training/Adam/Variable_69/Assign training/Adam/Variable_69/read:02training/Adam/zeros_69:08
}
training/Adam/Variable_70:0 training/Adam/Variable_70/Assign training/Adam/Variable_70/read:02training/Adam/zeros_70:08
}
training/Adam/Variable_71:0 training/Adam/Variable_71/Assign training/Adam/Variable_71/read:02training/Adam/zeros_71:08
}
training/Adam/Variable_72:0 training/Adam/Variable_72/Assign training/Adam/Variable_72/read:02training/Adam/zeros_72:08
}
training/Adam/Variable_73:0 training/Adam/Variable_73/Assign training/Adam/Variable_73/read:02training/Adam/zeros_73:08
}
training/Adam/Variable_74:0 training/Adam/Variable_74/Assign training/Adam/Variable_74/read:02training/Adam/zeros_74:08
}
training/Adam/Variable_75:0 training/Adam/Variable_75/Assign training/Adam/Variable_75/read:02training/Adam/zeros_75:08
}
training/Adam/Variable_76:0 training/Adam/Variable_76/Assign training/Adam/Variable_76/read:02training/Adam/zeros_76:08
}
training/Adam/Variable_77:0 training/Adam/Variable_77/Assign training/Adam/Variable_77/read:02training/Adam/zeros_77:08
}
training/Adam/Variable_78:0 training/Adam/Variable_78/Assign training/Adam/Variable_78/read:02training/Adam/zeros_78:08
}
training/Adam/Variable_79:0 training/Adam/Variable_79/Assign training/Adam/Variable_79/read:02training/Adam/zeros_79:08
}
training/Adam/Variable_80:0 training/Adam/Variable_80/Assign training/Adam/Variable_80/read:02training/Adam/zeros_80:08
}
training/Adam/Variable_81:0 training/Adam/Variable_81/Assign training/Adam/Variable_81/read:02training/Adam/zeros_81:08
}
training/Adam/Variable_82:0 training/Adam/Variable_82/Assign training/Adam/Variable_82/read:02training/Adam/zeros_82:08
}
training/Adam/Variable_83:0 training/Adam/Variable_83/Assign training/Adam/Variable_83/read:02training/Adam/zeros_83:08
}
training/Adam/Variable_84:0 training/Adam/Variable_84/Assign training/Adam/Variable_84/read:02training/Adam/zeros_84:08
}
training/Adam/Variable_85:0 training/Adam/Variable_85/Assign training/Adam/Variable_85/read:02training/Adam/zeros_85:08
}
training/Adam/Variable_86:0 training/Adam/Variable_86/Assign training/Adam/Variable_86/read:02training/Adam/zeros_86:08
}
training/Adam/Variable_87:0 training/Adam/Variable_87/Assign training/Adam/Variable_87/read:02training/Adam/zeros_87:08
}
training/Adam/Variable_88:0 training/Adam/Variable_88/Assign training/Adam/Variable_88/read:02training/Adam/zeros_88:08
}
training/Adam/Variable_89:0 training/Adam/Variable_89/Assign training/Adam/Variable_89/read:02training/Adam/zeros_89:08
}
training/Adam/Variable_90:0 training/Adam/Variable_90/Assign training/Adam/Variable_90/read:02training/Adam/zeros_90:08
}
training/Adam/Variable_91:0 training/Adam/Variable_91/Assign training/Adam/Variable_91/read:02training/Adam/zeros_91:08
}
training/Adam/Variable_92:0 training/Adam/Variable_92/Assign training/Adam/Variable_92/read:02training/Adam/zeros_92:08
}
training/Adam/Variable_93:0 training/Adam/Variable_93/Assign training/Adam/Variable_93/read:02training/Adam/zeros_93:08
}
training/Adam/Variable_94:0 training/Adam/Variable_94/Assign training/Adam/Variable_94/read:02training/Adam/zeros_94:08
}
training/Adam/Variable_95:0 training/Adam/Variable_95/Assign training/Adam/Variable_95/read:02training/Adam/zeros_95:08
}
training/Adam/Variable_96:0 training/Adam/Variable_96/Assign training/Adam/Variable_96/read:02training/Adam/zeros_96:08
}
training/Adam/Variable_97:0 training/Adam/Variable_97/Assign training/Adam/Variable_97/read:02training/Adam/zeros_97:08
}
training/Adam/Variable_98:0 training/Adam/Variable_98/Assign training/Adam/Variable_98/read:02training/Adam/zeros_98:08
}
training/Adam/Variable_99:0 training/Adam/Variable_99/Assign training/Adam/Variable_99/read:02training/Adam/zeros_99:08

training/Adam/Variable_100:0!training/Adam/Variable_100/Assign!training/Adam/Variable_100/read:02training/Adam/zeros_100:08

training/Adam/Variable_101:0!training/Adam/Variable_101/Assign!training/Adam/Variable_101/read:02training/Adam/zeros_101:08

training/Adam/Variable_102:0!training/Adam/Variable_102/Assign!training/Adam/Variable_102/read:02training/Adam/zeros_102:08

training/Adam/Variable_103:0!training/Adam/Variable_103/Assign!training/Adam/Variable_103/read:02training/Adam/zeros_103:08

training/Adam/Variable_104:0!training/Adam/Variable_104/Assign!training/Adam/Variable_104/read:02training/Adam/zeros_104:08

training/Adam/Variable_105:0!training/Adam/Variable_105/Assign!training/Adam/Variable_105/read:02training/Adam/zeros_105:08

training/Adam/Variable_106:0!training/Adam/Variable_106/Assign!training/Adam/Variable_106/read:02training/Adam/zeros_106:08

training/Adam/Variable_107:0!training/Adam/Variable_107/Assign!training/Adam/Variable_107/read:02training/Adam/zeros_107:08

training/Adam/Variable_108:0!training/Adam/Variable_108/Assign!training/Adam/Variable_108/read:02training/Adam/zeros_108:08

training/Adam/Variable_109:0!training/Adam/Variable_109/Assign!training/Adam/Variable_109/read:02training/Adam/zeros_109:08

training/Adam/Variable_110:0!training/Adam/Variable_110/Assign!training/Adam/Variable_110/read:02training/Adam/zeros_110:08

training/Adam/Variable_111:0!training/Adam/Variable_111/Assign!training/Adam/Variable_111/read:02training/Adam/zeros_111:08

training/Adam/Variable_112:0!training/Adam/Variable_112/Assign!training/Adam/Variable_112/read:02training/Adam/zeros_112:08

training/Adam/Variable_113:0!training/Adam/Variable_113/Assign!training/Adam/Variable_113/read:02training/Adam/zeros_113:08

training/Adam/Variable_114:0!training/Adam/Variable_114/Assign!training/Adam/Variable_114/read:02training/Adam/zeros_114:08

training/Adam/Variable_115:0!training/Adam/Variable_115/Assign!training/Adam/Variable_115/read:02training/Adam/zeros_115:08

training/Adam/Variable_116:0!training/Adam/Variable_116/Assign!training/Adam/Variable_116/read:02training/Adam/zeros_116:08

training/Adam/Variable_117:0!training/Adam/Variable_117/Assign!training/Adam/Variable_117/read:02training/Adam/zeros_117:08

training/Adam/Variable_118:0!training/Adam/Variable_118/Assign!training/Adam/Variable_118/read:02training/Adam/zeros_118:08

training/Adam/Variable_119:0!training/Adam/Variable_119/Assign!training/Adam/Variable_119/read:02training/Adam/zeros_119:08*
serving_default
1
image(
	input_1:0˙˙˙˙˙˙˙˙˙@@2
scores(
softmax/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict