       �K"	  �则�Abrain.Event:2����      q� �	iM�则�A"��
~
PlaceholderPlaceholder*/
_output_shapes
:���������*$
shape:���������*
dtype0
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:���������
*
shape:���������

R
Placeholder_2Placeholder*
dtype0
*
_output_shapes
:*
shape:
�
.conv2d/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:* 
_class
loc:@conv2d/kernel*%
valueB"            *
dtype0
�
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
valueB
 *����*
dtype0*
_output_shapes
: 
�
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0* 
_class
loc:@conv2d/kernel
�
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
�
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0* 
_class
loc:@conv2d/kernel
�
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0* 
_class
loc:@conv2d/kernel
�
conv2d/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape:
�
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0
�
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
e
conv2d/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
�
conv2d/Conv2DConv2DPlaceholderconv2d/kernel/read*
paddingSAME*/
_output_shapes
:���������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
U
ReluReluconv2d/Conv2D*/
_output_shapes
:���������*
T0
�
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *�[q�*
dtype0*
_output_shapes
: 
�
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *�[q>*
dtype0*
_output_shapes
: 
�
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_1/kernel
�
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
�
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
T0
�
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
�
conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape:
�
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
conv2d_1/kernel/readIdentityconv2d_1/kernel*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_1/kernel
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_2/Conv2DConv2DReluconv2d_1/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
Y
Relu_1Reluconv2d_2/Conv2D*
T0*/
_output_shapes
:���������
�
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel*
valueB
 *��:�
�
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *��:>*
dtype0*
_output_shapes
: 
�
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_2/kernel
�
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_2/kernel
�
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
�
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_2/kernel
�
conv2d_2/kernel
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container 
�
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel
�
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_3/Conv2DConv2DRelu_1conv2d_2/kernel/read*/
_output_shapes
:���������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Y
Relu_2Reluconv2d_3/Conv2D*
T0*/
_output_shapes
:���������
�
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *��*
dtype0*
_output_shapes
: 
�
.conv2d_3/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *�>*
dtype0*
_output_shapes
: 
�
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 *
dtype0*&
_output_shapes
:
�
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
�
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_3/kernel
�
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
�
conv2d_3/kernel
VariableV2*"
_class
loc:@conv2d_3/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
�
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0
�
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_4/Conv2DConv2DRelu_2conv2d_3/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
Y
Relu_3Reluconv2d_4/Conv2D*/
_output_shapes
:���������*
T0
�
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
.conv2d_4/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_4/kernel*
valueB
 *HY�*
dtype0*
_output_shapes
: 
�
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_4/kernel*
valueB
 *HY>
�
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_4/kernel
�
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_4/kernel
�
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
�
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
�
conv2d_4/kernel
VariableV2*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape:*
dtype0
�
conv2d_4/kernel/AssignAssignconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:
�
conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_5/Conv2DConv2DRelu_3conv2d_4/kernel/read*/
_output_shapes
:���������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Y
Relu_4Reluconv2d_5/Conv2D*
T0*/
_output_shapes
:���������
^
Reshape/shapeConst*
valueB"����P  *
dtype0*
_output_shapes
:
j
ReshapeReshapeRelu_4Reshape/shape*
Tshape0*(
_output_shapes
:����������*
T0
�
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"P  d   *
dtype0*
_output_shapes
:
�
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *>�*
dtype0*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *>=
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0*
_output_shapes
:	�d
�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	�d
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	�d
�
dense/kernel
VariableV2*
dtype0*
_output_shapes
:	�d*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	�d
�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	�d
v
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
_output_shapes
:	�d*
T0
�
dense/MatMulMatMulReshapedense/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( 
N
Relu_5Reludense/MatMul*'
_output_shapes
:���������d*
T0
�
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"d   
   *
dtype0*
_output_shapes
:
�
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *�'o�*
dtype0*
_output_shapes
: 
�
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *�'o>*
dtype0*
_output_shapes
: 
�
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d
*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
�
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
T0
�
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:d
*
T0*!
_class
loc:@dense_1/kernel
�
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d

�
dense_1/kernel
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
	container *
shape
:d
*
dtype0*
_output_shapes

:d

�
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:d

{
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d

�
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB
*    *
dtype0*
_output_shapes
:

�
dense_1/bias
VariableV2*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:
*
dtype0*
_output_shapes
:

�
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:

q
dense_1/bias/readIdentitydense_1/bias*
_output_shapes
:
*
T0*
_class
loc:@dense_1/bias
�
dense_2/MatMulMatMulRelu_5dense_1/kernel/read*'
_output_shapes
:���������
*
transpose_a( *
transpose_b( *
T0
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������

h
logistic_loss/zeros_like	ZerosLikedense_2/BiasAdd*
T0*'
_output_shapes
:���������

�
logistic_loss/GreaterEqualGreaterEqualdense_2/BiasAddlogistic_loss/zeros_like*'
_output_shapes
:���������
*
T0
�
logistic_loss/SelectSelectlogistic_loss/GreaterEqualdense_2/BiasAddlogistic_loss/zeros_like*'
_output_shapes
:���������
*
T0
[
logistic_loss/NegNegdense_2/BiasAdd*'
_output_shapes
:���������
*
T0
�
logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/Negdense_2/BiasAdd*
T0*'
_output_shapes
:���������

j
logistic_loss/mulMuldense_2/BiasAddPlaceholder_1*
T0*'
_output_shapes
:���������

s
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*
T0*'
_output_shapes
:���������

b
logistic_loss/ExpExplogistic_loss/Select_1*
T0*'
_output_shapes
:���������

a
logistic_loss/Log1pLog1plogistic_loss/Exp*
T0*'
_output_shapes
:���������

n
logistic_lossAddlogistic_loss/sublogistic_loss/Log1p*
T0*'
_output_shapes
:���������

V
ConstConst*
valueB"       *
dtype0*
_output_shapes
:
`
MeanMeanlogistic_lossConst*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
X
conv_loss/tagsConst*
_output_shapes
: *
valueB B	conv_loss*
dtype0
Q
	conv_lossScalarSummaryconv_loss/tagsMean*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
T
gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
r
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes

:*
T0
f
gradients/Mean_grad/ShapeShapelogistic_loss*
T0*
out_type0*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*'
_output_shapes
:���������

h
gradients/Mean_grad/Shape_1Shapelogistic_loss*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/ConstConst*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: 
�
gradients/Mean_grad/Const_1Const*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0*
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: 
�
gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
value	B :*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: 
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*'
_output_shapes
:���������
*
T0
s
"gradients/logistic_loss_grad/ShapeShapelogistic_loss/sub*
_output_shapes
:*
T0*
out_type0
w
$gradients/logistic_loss_grad/Shape_1Shapelogistic_loss/Log1p*
T0*
out_type0*
_output_shapes
:
�
2gradients/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/logistic_loss_grad/Shape$gradients/logistic_loss_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
 gradients/logistic_loss_grad/SumSumgradients/Mean_grad/truediv2gradients/logistic_loss_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
$gradients/logistic_loss_grad/ReshapeReshape gradients/logistic_loss_grad/Sum"gradients/logistic_loss_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
"gradients/logistic_loss_grad/Sum_1Sumgradients/Mean_grad/truediv4gradients/logistic_loss_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
&gradients/logistic_loss_grad/Reshape_1Reshape"gradients/logistic_loss_grad/Sum_1$gradients/logistic_loss_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������

�
-gradients/logistic_loss_grad/tuple/group_depsNoOp%^gradients/logistic_loss_grad/Reshape'^gradients/logistic_loss_grad/Reshape_1
�
5gradients/logistic_loss_grad/tuple/control_dependencyIdentity$gradients/logistic_loss_grad/Reshape.^gradients/logistic_loss_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/logistic_loss_grad/Reshape*'
_output_shapes
:���������

�
7gradients/logistic_loss_grad/tuple/control_dependency_1Identity&gradients/logistic_loss_grad/Reshape_1.^gradients/logistic_loss_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/logistic_loss_grad/Reshape_1*'
_output_shapes
:���������

z
&gradients/logistic_loss/sub_grad/ShapeShapelogistic_loss/Select*
T0*
out_type0*
_output_shapes
:
y
(gradients/logistic_loss/sub_grad/Shape_1Shapelogistic_loss/mul*
_output_shapes
:*
T0*
out_type0
�
6gradients/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/logistic_loss/sub_grad/Shape(gradients/logistic_loss/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$gradients/logistic_loss/sub_grad/SumSum5gradients/logistic_loss_grad/tuple/control_dependency6gradients/logistic_loss/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
(gradients/logistic_loss/sub_grad/ReshapeReshape$gradients/logistic_loss/sub_grad/Sum&gradients/logistic_loss/sub_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
&gradients/logistic_loss/sub_grad/Sum_1Sum5gradients/logistic_loss_grad/tuple/control_dependency8gradients/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
v
$gradients/logistic_loss/sub_grad/NegNeg&gradients/logistic_loss/sub_grad/Sum_1*
T0*
_output_shapes
:
�
*gradients/logistic_loss/sub_grad/Reshape_1Reshape$gradients/logistic_loss/sub_grad/Neg(gradients/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������

�
1gradients/logistic_loss/sub_grad/tuple/group_depsNoOp)^gradients/logistic_loss/sub_grad/Reshape+^gradients/logistic_loss/sub_grad/Reshape_1
�
9gradients/logistic_loss/sub_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/sub_grad/Reshape2^gradients/logistic_loss/sub_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*;
_class1
/-loc:@gradients/logistic_loss/sub_grad/Reshape
�
;gradients/logistic_loss/sub_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/sub_grad/Reshape_12^gradients/logistic_loss/sub_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/sub_grad/Reshape_1*'
_output_shapes
:���������

�
(gradients/logistic_loss/Log1p_grad/add/xConst8^gradients/logistic_loss_grad/tuple/control_dependency_1*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
&gradients/logistic_loss/Log1p_grad/addAdd(gradients/logistic_loss/Log1p_grad/add/xlogistic_loss/Exp*'
_output_shapes
:���������
*
T0
�
-gradients/logistic_loss/Log1p_grad/Reciprocal
Reciprocal&gradients/logistic_loss/Log1p_grad/add*
T0*'
_output_shapes
:���������

�
&gradients/logistic_loss/Log1p_grad/mulMul7gradients/logistic_loss_grad/tuple/control_dependency_1-gradients/logistic_loss/Log1p_grad/Reciprocal*
T0*'
_output_shapes
:���������

~
.gradients/logistic_loss/Select_grad/zeros_like	ZerosLikedense_2/BiasAdd*
T0*'
_output_shapes
:���������

�
*gradients/logistic_loss/Select_grad/SelectSelectlogistic_loss/GreaterEqual9gradients/logistic_loss/sub_grad/tuple/control_dependency.gradients/logistic_loss/Select_grad/zeros_like*
T0*'
_output_shapes
:���������

�
,gradients/logistic_loss/Select_grad/Select_1Selectlogistic_loss/GreaterEqual.gradients/logistic_loss/Select_grad/zeros_like9gradients/logistic_loss/sub_grad/tuple/control_dependency*'
_output_shapes
:���������
*
T0
�
4gradients/logistic_loss/Select_grad/tuple/group_depsNoOp+^gradients/logistic_loss/Select_grad/Select-^gradients/logistic_loss/Select_grad/Select_1
�
<gradients/logistic_loss/Select_grad/tuple/control_dependencyIdentity*gradients/logistic_loss/Select_grad/Select5^gradients/logistic_loss/Select_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select
�
>gradients/logistic_loss/Select_grad/tuple/control_dependency_1Identity,gradients/logistic_loss/Select_grad/Select_15^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_grad/Select_1*'
_output_shapes
:���������

u
&gradients/logistic_loss/mul_grad/ShapeShapedense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
u
(gradients/logistic_loss/mul_grad/Shape_1ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
�
6gradients/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/logistic_loss/mul_grad/Shape(gradients/logistic_loss/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
$gradients/logistic_loss/mul_grad/mulMul;gradients/logistic_loss/sub_grad/tuple/control_dependency_1Placeholder_1*
T0*'
_output_shapes
:���������

�
$gradients/logistic_loss/mul_grad/SumSum$gradients/logistic_loss/mul_grad/mul6gradients/logistic_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
(gradients/logistic_loss/mul_grad/ReshapeReshape$gradients/logistic_loss/mul_grad/Sum&gradients/logistic_loss/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
&gradients/logistic_loss/mul_grad/mul_1Muldense_2/BiasAdd;gradients/logistic_loss/sub_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������

�
&gradients/logistic_loss/mul_grad/Sum_1Sum&gradients/logistic_loss/mul_grad/mul_18gradients/logistic_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
*gradients/logistic_loss/mul_grad/Reshape_1Reshape&gradients/logistic_loss/mul_grad/Sum_1(gradients/logistic_loss/mul_grad/Shape_1*'
_output_shapes
:���������
*
T0*
Tshape0
�
1gradients/logistic_loss/mul_grad/tuple/group_depsNoOp)^gradients/logistic_loss/mul_grad/Reshape+^gradients/logistic_loss/mul_grad/Reshape_1
�
9gradients/logistic_loss/mul_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/mul_grad/Reshape2^gradients/logistic_loss/mul_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*;
_class1
/-loc:@gradients/logistic_loss/mul_grad/Reshape
�
;gradients/logistic_loss/mul_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/mul_grad/Reshape_12^gradients/logistic_loss/mul_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*=
_class3
1/loc:@gradients/logistic_loss/mul_grad/Reshape_1
�
$gradients/logistic_loss/Exp_grad/mulMul&gradients/logistic_loss/Log1p_grad/mullogistic_loss/Exp*
T0*'
_output_shapes
:���������

�
0gradients/logistic_loss/Select_1_grad/zeros_like	ZerosLikelogistic_loss/Neg*'
_output_shapes
:���������
*
T0
�
,gradients/logistic_loss/Select_1_grad/SelectSelectlogistic_loss/GreaterEqual$gradients/logistic_loss/Exp_grad/mul0gradients/logistic_loss/Select_1_grad/zeros_like*
T0*'
_output_shapes
:���������

�
.gradients/logistic_loss/Select_1_grad/Select_1Selectlogistic_loss/GreaterEqual0gradients/logistic_loss/Select_1_grad/zeros_like$gradients/logistic_loss/Exp_grad/mul*'
_output_shapes
:���������
*
T0
�
6gradients/logistic_loss/Select_1_grad/tuple/group_depsNoOp-^gradients/logistic_loss/Select_1_grad/Select/^gradients/logistic_loss/Select_1_grad/Select_1
�
>gradients/logistic_loss/Select_1_grad/tuple/control_dependencyIdentity,gradients/logistic_loss/Select_1_grad/Select7^gradients/logistic_loss/Select_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_1_grad/Select*'
_output_shapes
:���������

�
@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1Identity.gradients/logistic_loss/Select_1_grad/Select_17^gradients/logistic_loss/Select_1_grad/tuple/group_deps*A
_class7
53loc:@gradients/logistic_loss/Select_1_grad/Select_1*'
_output_shapes
:���������
*
T0
�
$gradients/logistic_loss/Neg_grad/NegNeg>gradients/logistic_loss/Select_1_grad/tuple/control_dependency*'
_output_shapes
:���������
*
T0
�
gradients/AddNAddN<gradients/logistic_loss/Select_grad/tuple/control_dependency9gradients/logistic_loss/mul_grad/tuple/control_dependency@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1$gradients/logistic_loss/Neg_grad/Neg*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*
N*'
_output_shapes
:���������

�
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN*
T0*
data_formatNHWC*
_output_shapes
:

u
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
�
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*'
_output_shapes
:���������

�
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
�
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(
�
&gradients/dense_2/MatMul_grad/MatMul_1MatMulRelu_57gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:d
*
transpose_a(*
transpose_b( *
T0
�
.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
�
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:d
*
T0
�
gradients/Relu_5_grad/ReluGradReluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependencyRelu_5*
T0*'
_output_shapes
:���������d
�
"gradients/dense/MatMul_grad/MatMulMatMulgradients/Relu_5_grad/ReluGraddense/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
$gradients/dense/MatMul_grad/MatMul_1MatMulReshapegradients/Relu_5_grad/ReluGrad*
_output_shapes
:	�d*
transpose_a(*
transpose_b( *
T0
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*(
_output_shapes
:����������
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	�d
b
gradients/Reshape_grad/ShapeShapeRelu_4*
_output_shapes
:*
T0*
out_type0
�
gradients/Reshape_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
�
gradients/Relu_4_grad/ReluGradReluGradgradients/Reshape_grad/ReshapeRelu_4*
T0*/
_output_shapes
:���������
�
%gradients/conv2d_5/Conv2D_grad/ShapeNShapeNRelu_3conv2d_4/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
�
2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_4/kernel/readgradients/Relu_4_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0
�
3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_3'gradients/conv2d_5/Conv2D_grad/ShapeN:1gradients/Relu_4_grad/ReluGrad*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
/gradients/conv2d_5/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������*
T0
�
9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/Relu_3_grad/ReluGradReluGrad7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyRelu_3*
T0*/
_output_shapes
:���������
�
%gradients/conv2d_4/Conv2D_grad/ShapeNShapeNRelu_2conv2d_3/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
�
2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_3/kernel/readgradients/Relu_3_grad/ReluGrad*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_2'gradients/conv2d_4/Conv2D_grad/ShapeN:1gradients/Relu_3_grad/ReluGrad*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
/gradients/conv2d_4/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*F
_class<
:8loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
�
gradients/Relu_2_grad/ReluGradReluGrad7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyRelu_2*
T0*/
_output_shapes
:���������
�
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeNRelu_1conv2d_2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
�
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_2/kernel/readgradients/Relu_2_grad/ReluGrad*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_1'gradients/conv2d_3/Conv2D_grad/ShapeN:1gradients/Relu_2_grad/ReluGrad*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/Relu_1_grad/ReluGradReluGrad7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyRelu_1*
T0*/
_output_shapes
:���������
�
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeNReluconv2d_1/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
�
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_1/kernel/readgradients/Relu_1_grad/ReluGrad*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu'gradients/conv2d_2/Conv2D_grad/ShapeN:1gradients/Relu_1_grad/ReluGrad*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC
�
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/Relu_grad/ReluGradReluGrad7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyRelu*
T0*/
_output_shapes
:���������
�
#gradients/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderconv2d/kernel/read*
out_type0*
N* 
_output_shapes
::*
T0
�
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/readgradients/Relu_grad/ReluGrad*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0
�
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder%gradients/conv2d/Conv2D_grad/ShapeN:1gradients/Relu_grad/ReluGrad*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput2^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter
�
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
b
GradientDescent/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o;
�
9GradientDescent/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelGradientDescent/learning_rate7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
:*
use_locking( *
T0* 
_class
loc:@conv2d/kernel
�
;GradientDescent/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelGradientDescent/learning_rate9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
�
;GradientDescent/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelGradientDescent/learning_rate9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
use_locking( 
�
;GradientDescent/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelGradientDescent/learning_rate9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
use_locking( *
T0
�
;GradientDescent/update_conv2d_4/kernel/ApplyGradientDescentApplyGradientDescentconv2d_4/kernelGradientDescent/learning_rate9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
�
8GradientDescent/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelGradientDescent/learning_rate6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
_output_shapes
:	�d
�
:GradientDescent/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelGradientDescent/learning_rate8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:d
*
use_locking( *
T0*!
_class
loc:@dense_1/kernel
�
8GradientDescent/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasGradientDescent/learning_rate9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
*
use_locking( 
�
GradientDescentNoOp:^GradientDescent/update_conv2d/kernel/ApplyGradientDescent<^GradientDescent/update_conv2d_1/kernel/ApplyGradientDescent<^GradientDescent/update_conv2d_2/kernel/ApplyGradientDescent<^GradientDescent/update_conv2d_3/kernel/ApplyGradientDescent<^GradientDescent/update_conv2d_4/kernel/ApplyGradientDescent9^GradientDescent/update_dense/kernel/ApplyGradientDescent;^GradientDescent/update_dense_1/kernel/ApplyGradientDescent9^GradientDescent/update_dense_1/bias/ApplyGradientDescent
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
ArgMaxArgMaxdense_2/BiasAddArgMax/dimension*#
_output_shapes
:���������*

Tidx0*
T0*
output_type0	
T
ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:���������
P
CastCastEqual*#
_output_shapes
:���������*

DstT0*

SrcT0

Q
Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
[
Mean_1MeanCastConst_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
N
Merge/MergeSummaryMergeSummary	conv_loss*
N*
_output_shapes
: "5h�/+�      ���	ݷ则�AJ��
��
9
Add
x"T
y"T
z"T"
Ttype:
2	
T
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	��
�
ApplyGradientDescent
var"T�

alpha"T

delta"T
out"T�"
Ttype:
2	"
use_lockingbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
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
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
A
Equal
x"T
y"T
z
"
Ttype:
2	
�
+
Exp
x"T
y"T"
Ttype:	
2
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
-
Log1p
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
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
9
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
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
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.4.12v1.4.0-19-ga52c8d9��
~
PlaceholderPlaceholder*$
shape:���������*
dtype0*/
_output_shapes
:���������
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:���������
*
shape:���������

R
Placeholder_2Placeholder*
dtype0
*
_output_shapes
:*
shape:
�
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
valueB
 *����*
dtype0*
_output_shapes
: 
�
,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0* 
_class
loc:@conv2d/kernel*
seed2 
�
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
�
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
�
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
�
conv2d/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape:
�
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
conv2d/kernel/readIdentityconv2d/kernel*&
_output_shapes
:*
T0* 
_class
loc:@conv2d/kernel
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d/Conv2DConv2DPlaceholderconv2d/kernel/read*/
_output_shapes
:���������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
U
ReluReluconv2d/Conv2D*
T0*/
_output_shapes
:���������
�
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *�[q�*
dtype0*
_output_shapes
: 
�
.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *�[q>*
dtype0*
_output_shapes
: 
�
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
�
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
�
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
�
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
T0
�
conv2d_1/kernel
VariableV2*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
�
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
�
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_2/Conv2DConv2DReluconv2d_1/kernel/read*/
_output_shapes
:���������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Y
Relu_1Reluconv2d_2/Conv2D*
T0*/
_output_shapes
:���������
�
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *��:�*
dtype0*
_output_shapes
: 
�
.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *��:>*
dtype0*
_output_shapes
: 
�
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_2/kernel*
seed2 
�
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
�
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_2/kernel
�
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_2/kernel
�
conv2d_2/kernel
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_2/kernel
�
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel
�
conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
T0
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_3/Conv2DConv2DRelu_1conv2d_2/kernel/read*
paddingSAME*/
_output_shapes
:���������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Y
Relu_2Reluconv2d_3/Conv2D*
T0*/
_output_shapes
:���������
�
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*"
_class
loc:@conv2d_3/kernel*%
valueB"            *
dtype0
�
.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *��*
dtype0*
_output_shapes
: 
�
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *"
_class
loc:@conv2d_3/kernel*
valueB
 *�>*
dtype0
�
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 
�
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
�
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_3/kernel
�
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
�
conv2d_3/kernel
VariableV2*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:*
dtype0
�
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*&
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(
�
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_4/Conv2DConv2DRelu_2conv2d_3/kernel/read*
paddingSAME*/
_output_shapes
:���������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Y
Relu_3Reluconv2d_4/Conv2D*/
_output_shapes
:���������*
T0
�
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_4/kernel*%
valueB"            
�
.conv2d_4/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_4/kernel*
valueB
 *HY�*
dtype0*
_output_shapes
: 
�
.conv2d_4/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_4/kernel*
valueB
 *HY>*
dtype0*
_output_shapes
: 
�
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 *
dtype0
�
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
�
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_4/kernel
�
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
�
conv2d_4/kernel
VariableV2*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape:*
dtype0
�
conv2d_4/kernel/AssignAssignconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*"
_class
loc:@conv2d_4/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0
�
conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_5/Conv2DConv2DRelu_3conv2d_4/kernel/read*/
_output_shapes
:���������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Y
Relu_4Reluconv2d_5/Conv2D*
T0*/
_output_shapes
:���������
^
Reshape/shapeConst*
valueB"����P  *
dtype0*
_output_shapes
:
j
ReshapeReshapeRelu_4Reshape/shape*
Tshape0*(
_output_shapes
:����������*
T0
�
-dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
_class
loc:@dense/kernel*
valueB"P  d   *
dtype0
�
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *>�*
dtype0*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *>=*
dtype0*
_output_shapes
: 
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�d*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	�d*
T0*
_class
loc:@dense/kernel
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	�d
�
dense/kernel
VariableV2*
dtype0*
_output_shapes
:	�d*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	�d
�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	�d
v
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	�d
�
dense/MatMulMatMulReshapedense/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( 
N
Relu_5Reludense/MatMul*
T0*'
_output_shapes
:���������d
�
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"d   
   *
dtype0*
_output_shapes
:
�
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *�'o�*
dtype0*
_output_shapes
: 
�
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *�'o>*
dtype0*
_output_shapes
: 
�
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0*
_output_shapes

:d

�
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
�
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d

�
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d

�
dense_1/kernel
VariableV2*
dtype0*
_output_shapes

:d
*
shared_name *!
_class
loc:@dense_1/kernel*
	container *
shape
:d

�
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:d
*
use_locking(
{
dense_1/kernel/readIdentitydense_1/kernel*
_output_shapes

:d
*
T0*!
_class
loc:@dense_1/kernel
�
dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB
*    *
dtype0*
_output_shapes
:

�
dense_1/bias
VariableV2*
_class
loc:@dense_1/bias*
	container *
shape:
*
dtype0*
_output_shapes
:
*
shared_name 
�
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@dense_1/bias
q
dense_1/bias/readIdentitydense_1/bias*
_output_shapes
:
*
T0*
_class
loc:@dense_1/bias
�
dense_2/MatMulMatMulRelu_5dense_1/kernel/read*'
_output_shapes
:���������
*
transpose_a( *
transpose_b( *
T0
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
data_formatNHWC*'
_output_shapes
:���������
*
T0
h
logistic_loss/zeros_like	ZerosLikedense_2/BiasAdd*'
_output_shapes
:���������
*
T0
�
logistic_loss/GreaterEqualGreaterEqualdense_2/BiasAddlogistic_loss/zeros_like*
T0*'
_output_shapes
:���������

�
logistic_loss/SelectSelectlogistic_loss/GreaterEqualdense_2/BiasAddlogistic_loss/zeros_like*
T0*'
_output_shapes
:���������

[
logistic_loss/NegNegdense_2/BiasAdd*
T0*'
_output_shapes
:���������

�
logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/Negdense_2/BiasAdd*
T0*'
_output_shapes
:���������

j
logistic_loss/mulMuldense_2/BiasAddPlaceholder_1*'
_output_shapes
:���������
*
T0
s
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*
T0*'
_output_shapes
:���������

b
logistic_loss/ExpExplogistic_loss/Select_1*
T0*'
_output_shapes
:���������

a
logistic_loss/Log1pLog1plogistic_loss/Exp*
T0*'
_output_shapes
:���������

n
logistic_lossAddlogistic_loss/sublogistic_loss/Log1p*'
_output_shapes
:���������
*
T0
V
ConstConst*
valueB"       *
dtype0*
_output_shapes
:
`
MeanMeanlogistic_lossConst*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
X
conv_loss/tagsConst*
_output_shapes
: *
valueB B	conv_loss*
dtype0
Q
	conv_lossScalarSummaryconv_loss/tagsMean*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
T
gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
r
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
f
gradients/Mean_grad/ShapeShapelogistic_loss*
T0*
out_type0*
_output_shapes
:
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*'
_output_shapes
:���������
*

Tmultiples0*
T0
h
gradients/Mean_grad/Shape_1Shapelogistic_loss*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
�
gradients/Mean_grad/ConstConst*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0*
_output_shapes
:
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
gradients/Mean_grad/Const_1Const*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0*
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: 
�
gradients/Mean_grad/Maximum/yConst*
value	B :*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*'
_output_shapes
:���������
*
T0
s
"gradients/logistic_loss_grad/ShapeShapelogistic_loss/sub*
T0*
out_type0*
_output_shapes
:
w
$gradients/logistic_loss_grad/Shape_1Shapelogistic_loss/Log1p*
out_type0*
_output_shapes
:*
T0
�
2gradients/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/logistic_loss_grad/Shape$gradients/logistic_loss_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
 gradients/logistic_loss_grad/SumSumgradients/Mean_grad/truediv2gradients/logistic_loss_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
$gradients/logistic_loss_grad/ReshapeReshape gradients/logistic_loss_grad/Sum"gradients/logistic_loss_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
"gradients/logistic_loss_grad/Sum_1Sumgradients/Mean_grad/truediv4gradients/logistic_loss_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
&gradients/logistic_loss_grad/Reshape_1Reshape"gradients/logistic_loss_grad/Sum_1$gradients/logistic_loss_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������

�
-gradients/logistic_loss_grad/tuple/group_depsNoOp%^gradients/logistic_loss_grad/Reshape'^gradients/logistic_loss_grad/Reshape_1
�
5gradients/logistic_loss_grad/tuple/control_dependencyIdentity$gradients/logistic_loss_grad/Reshape.^gradients/logistic_loss_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/logistic_loss_grad/Reshape*'
_output_shapes
:���������

�
7gradients/logistic_loss_grad/tuple/control_dependency_1Identity&gradients/logistic_loss_grad/Reshape_1.^gradients/logistic_loss_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*9
_class/
-+loc:@gradients/logistic_loss_grad/Reshape_1
z
&gradients/logistic_loss/sub_grad/ShapeShapelogistic_loss/Select*
_output_shapes
:*
T0*
out_type0
y
(gradients/logistic_loss/sub_grad/Shape_1Shapelogistic_loss/mul*
out_type0*
_output_shapes
:*
T0
�
6gradients/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/logistic_loss/sub_grad/Shape(gradients/logistic_loss/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$gradients/logistic_loss/sub_grad/SumSum5gradients/logistic_loss_grad/tuple/control_dependency6gradients/logistic_loss/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
(gradients/logistic_loss/sub_grad/ReshapeReshape$gradients/logistic_loss/sub_grad/Sum&gradients/logistic_loss/sub_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
&gradients/logistic_loss/sub_grad/Sum_1Sum5gradients/logistic_loss_grad/tuple/control_dependency8gradients/logistic_loss/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
v
$gradients/logistic_loss/sub_grad/NegNeg&gradients/logistic_loss/sub_grad/Sum_1*
T0*
_output_shapes
:
�
*gradients/logistic_loss/sub_grad/Reshape_1Reshape$gradients/logistic_loss/sub_grad/Neg(gradients/logistic_loss/sub_grad/Shape_1*'
_output_shapes
:���������
*
T0*
Tshape0
�
1gradients/logistic_loss/sub_grad/tuple/group_depsNoOp)^gradients/logistic_loss/sub_grad/Reshape+^gradients/logistic_loss/sub_grad/Reshape_1
�
9gradients/logistic_loss/sub_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/sub_grad/Reshape2^gradients/logistic_loss/sub_grad/tuple/group_deps*;
_class1
/-loc:@gradients/logistic_loss/sub_grad/Reshape*'
_output_shapes
:���������
*
T0
�
;gradients/logistic_loss/sub_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/sub_grad/Reshape_12^gradients/logistic_loss/sub_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*=
_class3
1/loc:@gradients/logistic_loss/sub_grad/Reshape_1
�
(gradients/logistic_loss/Log1p_grad/add/xConst8^gradients/logistic_loss_grad/tuple/control_dependency_1*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
&gradients/logistic_loss/Log1p_grad/addAdd(gradients/logistic_loss/Log1p_grad/add/xlogistic_loss/Exp*'
_output_shapes
:���������
*
T0
�
-gradients/logistic_loss/Log1p_grad/Reciprocal
Reciprocal&gradients/logistic_loss/Log1p_grad/add*
T0*'
_output_shapes
:���������

�
&gradients/logistic_loss/Log1p_grad/mulMul7gradients/logistic_loss_grad/tuple/control_dependency_1-gradients/logistic_loss/Log1p_grad/Reciprocal*
T0*'
_output_shapes
:���������

~
.gradients/logistic_loss/Select_grad/zeros_like	ZerosLikedense_2/BiasAdd*'
_output_shapes
:���������
*
T0
�
*gradients/logistic_loss/Select_grad/SelectSelectlogistic_loss/GreaterEqual9gradients/logistic_loss/sub_grad/tuple/control_dependency.gradients/logistic_loss/Select_grad/zeros_like*
T0*'
_output_shapes
:���������

�
,gradients/logistic_loss/Select_grad/Select_1Selectlogistic_loss/GreaterEqual.gradients/logistic_loss/Select_grad/zeros_like9gradients/logistic_loss/sub_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������

�
4gradients/logistic_loss/Select_grad/tuple/group_depsNoOp+^gradients/logistic_loss/Select_grad/Select-^gradients/logistic_loss/Select_grad/Select_1
�
<gradients/logistic_loss/Select_grad/tuple/control_dependencyIdentity*gradients/logistic_loss/Select_grad/Select5^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*'
_output_shapes
:���������

�
>gradients/logistic_loss/Select_grad/tuple/control_dependency_1Identity,gradients/logistic_loss/Select_grad/Select_15^gradients/logistic_loss/Select_grad/tuple/group_deps*?
_class5
31loc:@gradients/logistic_loss/Select_grad/Select_1*'
_output_shapes
:���������
*
T0
u
&gradients/logistic_loss/mul_grad/ShapeShapedense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
u
(gradients/logistic_loss/mul_grad/Shape_1ShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
�
6gradients/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/logistic_loss/mul_grad/Shape(gradients/logistic_loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
$gradients/logistic_loss/mul_grad/mulMul;gradients/logistic_loss/sub_grad/tuple/control_dependency_1Placeholder_1*
T0*'
_output_shapes
:���������

�
$gradients/logistic_loss/mul_grad/SumSum$gradients/logistic_loss/mul_grad/mul6gradients/logistic_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
(gradients/logistic_loss/mul_grad/ReshapeReshape$gradients/logistic_loss/mul_grad/Sum&gradients/logistic_loss/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
&gradients/logistic_loss/mul_grad/mul_1Muldense_2/BiasAdd;gradients/logistic_loss/sub_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������

�
&gradients/logistic_loss/mul_grad/Sum_1Sum&gradients/logistic_loss/mul_grad/mul_18gradients/logistic_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
*gradients/logistic_loss/mul_grad/Reshape_1Reshape&gradients/logistic_loss/mul_grad/Sum_1(gradients/logistic_loss/mul_grad/Shape_1*'
_output_shapes
:���������
*
T0*
Tshape0
�
1gradients/logistic_loss/mul_grad/tuple/group_depsNoOp)^gradients/logistic_loss/mul_grad/Reshape+^gradients/logistic_loss/mul_grad/Reshape_1
�
9gradients/logistic_loss/mul_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/mul_grad/Reshape2^gradients/logistic_loss/mul_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*;
_class1
/-loc:@gradients/logistic_loss/mul_grad/Reshape
�
;gradients/logistic_loss/mul_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/mul_grad/Reshape_12^gradients/logistic_loss/mul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/mul_grad/Reshape_1*'
_output_shapes
:���������

�
$gradients/logistic_loss/Exp_grad/mulMul&gradients/logistic_loss/Log1p_grad/mullogistic_loss/Exp*'
_output_shapes
:���������
*
T0
�
0gradients/logistic_loss/Select_1_grad/zeros_like	ZerosLikelogistic_loss/Neg*'
_output_shapes
:���������
*
T0
�
,gradients/logistic_loss/Select_1_grad/SelectSelectlogistic_loss/GreaterEqual$gradients/logistic_loss/Exp_grad/mul0gradients/logistic_loss/Select_1_grad/zeros_like*
T0*'
_output_shapes
:���������

�
.gradients/logistic_loss/Select_1_grad/Select_1Selectlogistic_loss/GreaterEqual0gradients/logistic_loss/Select_1_grad/zeros_like$gradients/logistic_loss/Exp_grad/mul*'
_output_shapes
:���������
*
T0
�
6gradients/logistic_loss/Select_1_grad/tuple/group_depsNoOp-^gradients/logistic_loss/Select_1_grad/Select/^gradients/logistic_loss/Select_1_grad/Select_1
�
>gradients/logistic_loss/Select_1_grad/tuple/control_dependencyIdentity,gradients/logistic_loss/Select_1_grad/Select7^gradients/logistic_loss/Select_1_grad/tuple/group_deps*?
_class5
31loc:@gradients/logistic_loss/Select_1_grad/Select*'
_output_shapes
:���������
*
T0
�
@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1Identity.gradients/logistic_loss/Select_1_grad/Select_17^gradients/logistic_loss/Select_1_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*A
_class7
53loc:@gradients/logistic_loss/Select_1_grad/Select_1
�
$gradients/logistic_loss/Neg_grad/NegNeg>gradients/logistic_loss/Select_1_grad/tuple/control_dependency*'
_output_shapes
:���������
*
T0
�
gradients/AddNAddN<gradients/logistic_loss/Select_grad/tuple/control_dependency9gradients/logistic_loss/mul_grad/tuple/control_dependency@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1$gradients/logistic_loss/Neg_grad/Neg*'
_output_shapes
:���������
*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*
N
�
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN*
T0*
data_formatNHWC*
_output_shapes
:

u
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
�
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*'
_output_shapes
:���������

�
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:
*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad
�
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(*
T0
�
&gradients/dense_2/MatMul_grad/MatMul_1MatMulRelu_57gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:d
*
transpose_a(
�
.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
�
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:d
*
T0
�
gradients/Relu_5_grad/ReluGradReluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependencyRelu_5*
T0*'
_output_shapes
:���������d
�
"gradients/dense/MatMul_grad/MatMulMatMulgradients/Relu_5_grad/ReluGraddense/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
$gradients/dense/MatMul_grad/MatMul_1MatMulReshapegradients/Relu_5_grad/ReluGrad*
T0*
_output_shapes
:	�d*
transpose_a(*
transpose_b( 
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*(
_output_shapes
:����������
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	�d
b
gradients/Reshape_grad/ShapeShapeRelu_4*
_output_shapes
:*
T0*
out_type0
�
gradients/Reshape_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
Tshape0*/
_output_shapes
:���������*
T0
�
gradients/Relu_4_grad/ReluGradReluGradgradients/Reshape_grad/ReshapeRelu_4*
T0*/
_output_shapes
:���������
�
%gradients/conv2d_5/Conv2D_grad/ShapeNShapeNRelu_3conv2d_4/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
�
2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_4/kernel/readgradients/Relu_4_grad/ReluGrad*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_3'gradients/conv2d_5/Conv2D_grad/ShapeN:1gradients/Relu_4_grad/ReluGrad*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
/gradients/conv2d_5/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/Relu_3_grad/ReluGradReluGrad7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyRelu_3*/
_output_shapes
:���������*
T0
�
%gradients/conv2d_4/Conv2D_grad/ShapeNShapeNRelu_2conv2d_3/kernel/read* 
_output_shapes
::*
T0*
out_type0*
N
�
2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_3/kernel/readgradients/Relu_3_grad/ReluGrad*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC
�
3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_2'gradients/conv2d_4/Conv2D_grad/ShapeN:1gradients/Relu_3_grad/ReluGrad*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
/gradients/conv2d_4/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*F
_class<
:8loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
�
gradients/Relu_2_grad/ReluGradReluGrad7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyRelu_2*
T0*/
_output_shapes
:���������
�
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeNRelu_1conv2d_2/kernel/read*
N* 
_output_shapes
::*
T0*
out_type0
�
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_2/kernel/readgradients/Relu_2_grad/ReluGrad*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_1'gradients/conv2d_3/Conv2D_grad/ShapeN:1gradients/Relu_2_grad/ReluGrad*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������*
T0
�
9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*F
_class<
:8loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
�
gradients/Relu_1_grad/ReluGradReluGrad7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyRelu_1*/
_output_shapes
:���������*
T0
�
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeNReluconv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
�
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_1/kernel/readgradients/Relu_1_grad/ReluGrad*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu'gradients/conv2d_2/Conv2D_grad/ShapeN:1gradients/Relu_1_grad/ReluGrad*J
_output_shapes8
6:4������������������������������������*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp3^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/Relu_grad/ReluGradReluGrad7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyRelu*
T0*/
_output_shapes
:���������
�
#gradients/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderconv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
�
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/readgradients/Relu_grad/ReluGrad*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder%gradients/conv2d/Conv2D_grad/ShapeN:1gradients/Relu_grad/ReluGrad*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput2^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter
�
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput
�
7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
b
GradientDescent/learning_rateConst*
valueB
 *o;*
dtype0*
_output_shapes
: 
�
9GradientDescent/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelGradientDescent/learning_rate7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
:*
use_locking( *
T0* 
_class
loc:@conv2d/kernel
�
;GradientDescent/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelGradientDescent/learning_rate9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
�
;GradientDescent/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelGradientDescent/learning_rate9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
use_locking( 
�
;GradientDescent/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelGradientDescent/learning_rate9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
�
;GradientDescent/update_conv2d_4/kernel/ApplyGradientDescentApplyGradientDescentconv2d_4/kernelGradientDescent/learning_rate9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
�
8GradientDescent/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelGradientDescent/learning_rate6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
_output_shapes
:	�d
�
:GradientDescent/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelGradientDescent/learning_rate8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:d
*
use_locking( *
T0*!
_class
loc:@dense_1/kernel
�
8GradientDescent/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasGradientDescent/learning_rate9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

�
GradientDescentNoOp:^GradientDescent/update_conv2d/kernel/ApplyGradientDescent<^GradientDescent/update_conv2d_1/kernel/ApplyGradientDescent<^GradientDescent/update_conv2d_2/kernel/ApplyGradientDescent<^GradientDescent/update_conv2d_3/kernel/ApplyGradientDescent<^GradientDescent/update_conv2d_4/kernel/ApplyGradientDescent9^GradientDescent/update_dense/kernel/ApplyGradientDescent;^GradientDescent/update_dense_1/kernel/ApplyGradientDescent9^GradientDescent/update_dense_1/bias/ApplyGradientDescent
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
ArgMaxArgMaxdense_2/BiasAddArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
T
ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
�
ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:���������*
T0	
P
CastCastEqual*

SrcT0
*#
_output_shapes
:���������*

DstT0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_1MeanCastConst_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
N
Merge/MergeSummaryMergeSummary	conv_loss*
_output_shapes
: *
N""
train_op

GradientDescent"�
	variables��
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0"�
trainable_variables��
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0"
	summaries

conv_loss:0mL�       `/�#	-s�则�A*

	conv_loss�X1?�^d�       QKD	P��则�A*

	conv_loss��1?~k��       QKD	��则�A*

	conv_lossջ1?d��       QKD	8B�则�A*

	conv_loss�r1?<��|       QKD	;p�则�A*

	conv_loss�21?Jy       QKD	\��则�A*

	conv_loss@U1?��i       QKD	���则�A*

	conv_loss�c1?1k��       QKD	��则�A*

	conv_loss1C1?�iy"       QKD	�-�则�A*

	conv_loss�v1?�2p!       QKD	X_�则�A	*

	conv_loss�<1?�_2�       QKD	ˍ�则�A
*

	conv_lossWr1?5�U       QKD	/��则�A*

	conv_loss8 1?���       QKD	���则�A*

	conv_loss�U1?�f�(       QKD	8�则�A*

	conv_loss�@1?0�       QKD	WW�则�A*

	conv_lossn1?z�
<       QKD	���则�A*

	conv_loss��0?�P�I       QKD	L��则�A*

	conv_loss�1?�!��       QKD	���则�A*

	conv_lossa1?x[�8       QKD	��则�A*

	conv_loss�1?�k       QKD	|9�则�A*

	conv_loss01?��       QKD	�d�则�A*

	conv_loss~�0?�Z�J       QKD	2��则�A*

	conv_loss��0?��       QKD	c��则�A*

	conv_lossK�0?? w�       QKD	���则�A*

	conv_loss��0?8?�'       QKD	��则�A*

	conv_loss�0?z�       QKD	�W�则�A*

	conv_lossz�0?�jV�       QKD	
��则�A*

	conv_loss1?ԁ�`       QKD	ӳ�则�A*

	conv_lossf�0?��       QKD	���则�A*

	conv_loss'�0?̱r       QKD	n�则�A*

	conv_loss|�0?���       QKD	C:�则�A*

	conv_loss�0?m�U�       QKD	 f�则�A*

	conv_loss/�0? �-�       QKD	��则�A *

	conv_lossa|0?�&#�       QKD	a��则�A!*

	conv_loss��0?壪�       QKD	���则�A"*

	conv_loss�f0?��q5       QKD	�则�A#*

	conv_loss6�0?��)       QKD	�E�则�A$*

	conv_lossN+0?'[       QKD	�o�则�A%*

	conv_lossX:0?���       QKD	���则�A&*

	conv_lossQQ0?xU
�       QKD	���则�A'*

	conv_lossn0?�#Y�       QKD	��则�A(*

	conv_lossRu0?MF�       QKD	�则�A)*

	conv_lossH�/?Z�K}       QKD	OG�则�A**

	conv_loss�/?�jl�       QKD	Jq�则�A+*

	conv_losst%0?1��       QKD	��则�A,*

	conv_lossQ0?܎�T       QKD	h��则�A-*

	conv_lossmG0?_�'�       QKD	r��则�A.*

	conv_loss90?�Ɔ       QKD	�#�则�A/*

	conv_loss�0?�ʋ�       QKD	$T�则�A0*

	conv_loss/0?m�&m       QKD	��则�A1*

	conv_loss�/?y��9       QKD	7��则�A2*

	conv_loss�0?2�-G       QKD	���则�A3*

	conv_loss��/?3�N{       QKD	��则�A4*

	conv_lossX�/?i�+\       QKD	=�则�A5*

	conv_loss�\/?�Xn       QKD	:j�则�A6*

	conv_loss��/?ܱ#J       QKD	К�则�A7*

	conv_loss��/?k��F       QKD	7��则�A8*

	conv_loss��/?m/�4       QKD	���则�A9*

	conv_loss�~/?�C$�       QKD	S�则�A:*

	conv_loss�|/?�W       QKD	�J�则�A;*

	conv_loss�/?���       QKD	�v�则�A<*

	conv_loss�]/?�j�       QKD	���则�A=*

	conv_loss��/?u�9�       QKD	��则�A>*

	conv_loss��/?����       QKD	v�则�A?*

	conv_losse/?��5       QKD	H3�则�A@*

	conv_lossH</?��
4       QKD	__�则�AA*

	conv_loss�3/?��       QKD	k��则�AB*

	conv_loss��.?��	       QKD	���则�AC*

	conv_loss��.? �
T       QKD	^��则�AD*

	conv_loss�/?�&e       QKD	��则�AE*

	conv_loss�2/?��!�       QKD	�L�则�AF*

	conv_loss=�.?%f�       QKD	=��则�AG*

	conv_loss��.?����       QKD	Ĭ�则�AH*

	conv_loss�/?z��       QKD	���则�AI*

	conv_loss��.?׽�       QKD	���则�AJ*

	conv_loss��.?s U�       QKD	g+�则�AK*

	conv_loss��.?�A��       QKD	)T�则�AL*

	conv_lossR�.?�u�       QKD	�}�则�AM*

	conv_loss]�.?�2�R       QKD	���则�AN*

	conv_loss��.?ȡu�       QKD	��则�AO*

	conv_lossE�.?V���       QKD	���则�AP*

	conv_loss�.?s�#       QKD	i&�则�AQ*

	conv_lossS�.?9�       QKD	�P�则�AR*

	conv_loss��.?�k�       QKD	�z�则�AS*

	conv_lossB�.?���M       QKD	���则�AT*

	conv_loss
�.?g$�}       QKD	��则�AU*

	conv_loss"�.?D�̴       QKD	���则�AV*

	conv_loss��.?�]��       QKD	�&�则�AW*

	conv_loss�.?��z]       QKD	�Q�则�AX*

	conv_loss��.?T�Q       QKD	X|�则�AY*

	conv_loss5r.?L__�       QKD	��则�AZ*

	conv_loss`].?��'�       QKD	���则�A[*

	conv_lossmH.?��`�       QKD	1��则�A\*

	conv_loss�;.?P�       QKD	�%�则�A]*

	conv_loss�j.?�t�       QKD	LN�则�A^*

	conv_lossk.?O�R       QKD	�x�则�A_*

	conv_loss�.?�ia       QKD	'��则�A`*

	conv_loss.�-?�n�2       QKD	=��则�Aa*

	conv_lossC.?ݥ�
       QKD	���则�Ab*

	conv_loss�(.?~O'       QKD	��则�Ac*

	conv_loss7�-?ͨ1�       QKD	HI�则�Ad*

	conv_lossڼ-?�@��       QKD	j��则�Ae*

	conv_loss#.?MJ�       QKD	���则�Af*

	conv_loss��-?�*��       QKD	���则�Ag*

	conv_loss`�-?��@       QKD	���则�Ah*

	conv_loss~-?2˜�       QKD	((�则�Ai*

	conv_loss��-?g���       QKD	�P�则�Aj*

	conv_lossx�-?����       QKD	w}�则�Ak*

	conv_lossTt-?��nF       QKD	��则�Al*

	conv_loss�z-?8�@$       QKD	���则�Am*

	conv_loss�P-?�\�m       QKD	$ �则�An*

	conv_loss"�-?m���       QKD	�-�则�Ao*

	conv_loss.�-?N�&       QKD	�X�则�Ap*

	conv_lossD[-?����       QKD	���则�Aq*

	conv_lossJ-?
�a       QKD	ϯ�则�Ar*

	conv_loss�-?���       QKD	A��则�As*

	conv_lossC$-?�>>A       QKD	��则�At*

	conv_lossH%-?v���       QKD	�D�则�Au*

	conv_lossj.-?H�Y�       QKD	lo�则�Av*

	conv_loss�3-?��       QKD	1��则�Aw*

	conv_loss�-?*�2�       QKD	t��则�Ax*

	conv_loss5�,?d�R�       QKD	N��则�Ay*

	conv_lossR�,?���       QKD	��则�Az*

	conv_loss��,?I���       QKD	�C�则�A{*

	conv_loss��,?��n       QKD	�m�则�A|*

	conv_loss��,?�P��       QKD	��则�A}*

	conv_lossw�,?AL��       QKD	/��则�A~*

	conv_lossz�,?�T�       QKD	���则�A*

	conv_loss�,?XTU�        )��P	[�则�A�*

	conv_loss[�,?ʻy�        )��P	�;�则�A�*

	conv_loss��,?֤ȷ        )��P	if�则�A�*

	conv_loss�1,??bw9        )��P	z��则�A�*

	conv_loss�+,?'t�Z        )��P	���则�A�*

	conv_loss*,?���        )��P	���则�A�*

	conv_loss�@,?���        )��P	��则�A�*

	conv_loss/],?�,$�        )��P	3<�则�A�*

	conv_lossp,?�O        )��P	�c�则�A�*

	conv_lossi�+?�?        )��P	��则�A�*

	conv_loss��+?!Ra        )��P	���则�A�*

	conv_loss�,?Q��        )��P	���则�A�*

	conv_lossU�+?�v 
        )��P	��则�A�*

	conv_lossV�+?1P&        )��P	�4�则�A�*

	conv_loss��+?��]        )��P	�_�则�A�*

	conv_lossu�+?G��        )��P	���则�A�*

	conv_loss��+?���        )��P	ض�则�A�*

	conv_lossI�+?n�.        )��P	���则�A�*

	conv_loss�,?�t�3        )��P	�* 戙�A�*

	conv_loss��+?xU$        )��P	�W 戙�A�*

	conv_loss��+?ԥ�        )��P	�� 戙�A�*

	conv_loss�+?eq2Z        )��P	y� 戙�A�*

	conv_loss��+?'���        )��P	�� 戙�A�*

	conv_lossPU+?�$W        )��P	S戙�A�*

	conv_lossSV+?��,        )��P	�<戙�A�*

	conv_lossZ!+?�ӻ        )��P	�e戙�A�*

	conv_loss�)+?e��G        )��P	�戙�A�*

	conv_lossj+?'�!        )��P	��戙�A�*

	conv_loss��*?�r,        )��P	��戙�A�*

	conv_loss=3+?ʖp        )��P	 !戙�A�*

	conv_loss�*?�[v        )��P	M戙�A�*

	conv_lossF�*?77E        )��P	R{戙�A�*

	conv_loss��*?��=�        )��P	ݳ戙�A�*

	conv_loss$�*?��5        )��P	��戙�A�*

	conv_loss�+?[��        )��P	w/戙�A�*

	conv_lossr�*?�"�        )��P	!Z戙�A�*

	conv_loss�=*?�!H�        )��P	�戙�A�*

	conv_loss(�*?�S�        )��P	԰戙�A�*

	conv_loss�t*?���        )��P	��戙�A�*

	conv_loss�*?/�>�        )��P	p戙�A�*

	conv_loss�:*?K^]�        )��P	�,戙�A�*

	conv_loss��*?���        )��P	�W戙�A�*

	conv_loss�H*?����        )��P	��戙�A�*

	conv_lossed*?�6��        )��P	��戙�A�*

	conv_loss1Q*?���        )��P	��戙�A�*

	conv_loss�R*?��#t        )��P	�戙�A�*

	conv_loss�*?r        )��P	@0戙�A�*

	conv_loss7)*?�e�        )��P	]戙�A�*

	conv_lossc�)?��^�        )��P	&�戙�A�*

	conv_lossj*?I��        )��P	Ȳ戙�A�*

	conv_lossy�)?K���        )��P	N�戙�A�*

	conv_lossJ�)?{���        )��P	�戙�A�*

	conv_loss��)?]�Ђ        )��P	�1戙�A�*

	conv_loss}�)?��L        )��P	d[戙�A�*

	conv_loss�`)?Y���        )��P	��戙�A�*

	conv_loss��)?#��        )��P	��戙�A�*

	conv_lossbV)?]n��        )��P	-�戙�A�*

	conv_loss�5)?���D        )��P	�戙�A�*

	conv_loss�)?^	�        )��P	�.戙�A�*

	conv_loss�])?��W        )��P	�Z戙�A�*

	conv_loss�j)?�`��        )��P	l�戙�A�*

	conv_loss�&)?��д        )��P	��戙�A�*

	conv_loss��)?ҿ!�        )��P	=�戙�A�*

	conv_loss��(?�Am�        )��P	<戙�A�*

	conv_loss޷(?��փ        )��P	�-戙�A�*

	conv_loss$w(?�4�        )��P	`V戙�A�*

	conv_lossY�(?C"��        )��P	-戙�A�*

	conv_loss��(?��1        )��P	�戙�A�*

	conv_loss��(?�A�V        )��P	��戙�A�*

	conv_loss��(?��%        )��P	��戙�A�*

	conv_loss=y(?j.�        )��P	�'	戙�A�*

	conv_loss�h(?�骈        )��P	�R	戙�A�*

	conv_loss2(?.�         )��P	�	戙�A�*

	conv_loss�'?��N        )��P	��
戙�A�*

	conv_lossq�'?i�        )��P	k戙�A�*

	conv_loss+J(?�pe        )��P	(?戙�A�*

	conv_loss�(?��%�        )��P	&l戙�A�*

	conv_loss¥'?�_��        )��P	��戙�A�*

	conv_lossc�'?3���        )��P	l�戙�A�*

	conv_loss0�'?�C��        )��P	e�戙�A�*

	conv_loss��'?B���        )��P	�戙�A�*

	conv_loss;�'?t'1        )��P	�F戙�A�*

	conv_loss�p'?	t�        )��P	i�戙�A�*

	conv_loss�?'?3���        )��P	��戙�A�*

	conv_lossN'?%70�        )��P	�戙�A�*

	conv_loss�'?��"        )��P	�戙�A�*

	conv_loss�A'?�i5�        )��P	jH戙�A�*

	conv_lossN�&?/�:        )��P	�}戙�A�*

	conv_lossO�&?--�;        )��P	��戙�A�*

	conv_loss/�&?��*        )��P	s�戙�A�*

	conv_lossu�&?m��        )��P	z�戙�A�*

	conv_loss@-&?�5�&        )��P	)戙�A�*

	conv_loss��&?�\m>        )��P	>T戙�A�*

	conv_loss�Y&?K���        )��P	V}戙�A�*

	conv_loss��%?U9I        )��P	4�戙�A�*

	conv_loss�n&?��        )��P	!�戙�A�*

	conv_lossU�%?WP~�        )��P	��戙�A�*

	conv_losshb&?ÒZE        )��P	�.戙�A�*

	conv_loss�:&?�a        )��P	�a戙�A�*

	conv_loss�%?<S��        )��P	n�戙�A�*

	conv_loss�%?u��        )��P	�戙�A�*

	conv_lossϏ%?�6�r        )��P	��戙�A�*

	conv_loss��%?#1�        )��P	^戙�A�*

	conv_loss��$?8�\        )��P	�9戙�A�*

	conv_lossZ�%?���        )��P	�e戙�A�*

	conv_loss��$?!��        )��P	��戙�A�*

	conv_lossJ=%?�m        )��P	�戙�A�*

	conv_loss#$%?�~�        )��P	�戙�A�*

	conv_loss��$?X:�~        )��P	戙�A�*

	conv_losseZ$?]sx        )��P	�=戙�A�*

	conv_loss@�$?��1�        )��P	�h戙�A�*

	conv_loss�$?�{[b        )��P	B�戙�A�*

	conv_loss��$?��Z        )��P	�戙�A�*

	conv_loss�%$?@��
        )��P	Z�戙�A�*

	conv_lossXR#?��)4        )��P	w戙�A�*

	conv_loss#$?�)r        )��P	_=戙�A�*

	conv_lossi;$?~Ƙs        )��P	�g戙�A�*

	conv_loss�$?'#        )��P	�戙�A�*

	conv_loss��#? 3��        )��P	��戙�A�*

	conv_loss�$?(�:�        )��P	��戙�A�*

	conv_loss^�#?V-Z�        )��P	b戙�A�*

	conv_loss'#?�O�        )��P	+=戙�A�*

	conv_loss܆#?3��        )��P	�i戙�A�*

	conv_loss1�"?L�h�        )��P	!�戙�A�*

	conv_loss�f#?!
        )��P	��戙�A�*

	conv_loss��"?�Q�1        )��P	��戙�A�*

	conv_lossc�"?Aԁ�        )��P	�)戙�A�*

	conv_loss�	"?�I��        )��P	B]戙�A�*

	conv_loss�%"?���        )��P	��戙�A�*

	conv_loss[�"?�ƻ�        )��P	��戙�A�*

	conv_loss�>"?�H�        )��P	��戙�A�*

	conv_loss�`"?��h�        )��P	�戙�A�*

	conv_loss�R"?S4        )��P	�@戙�A�*

	conv_loss�� ?���        )��P	?q戙�A�*

	conv_lossI"?E���        )��P	�戙�A�*

	conv_lossM�!?���-        )��P	��戙�A�*

	conv_loss��!?ƌ��        )��P	戙�A�*

	conv_loss�� ?X�S�        )��P	�+戙�A�*

	conv_loss�V!?<�U�        )��P	�W戙�A�*

	conv_losse5!?�9�I        )��P	V�戙�A�*

	conv_loss@)!?l�/        )��P	#�戙�A�*

	conv_lossMj ?Vݑ        )��P	��戙�A�*

	conv_lossZ� ?�f�J        )��P	G戙�A�*

	conv_loss�  ?��"x        )��P	S>戙�A�*

	conv_loss�� ?l�f        )��P	i戙�A�*

	conv_loss|� ?�pp        )��P	Ò戙�A�*

	conv_loss=�?SE�v        )��P	l�戙�A�*

	conv_loss��?�-a�        )��P	N�戙�A�*

	conv_loss��?9���        )��P	1戙�A�*

	conv_loss�<?�5~O        )��P	:?戙�A�*

	conv_loss�R?����        )��P	i戙�A�*

	conv_loss-1?=Op�        )��P	a�戙�A�*

	conv_loss�?�B�!        )��P	f�戙�A�*

	conv_loss$�?8T�        )��P	'�戙�A�*

	conv_lossb#?���        )��P	)戙�A�*

	conv_loss�s?L-�        )��P	SA戙�A�*

	conv_lossU�?t�        )��P	&m戙�A�*

	conv_loss�E?M�        )��P	F�戙�A�*

	conv_lossF?�l�        )��P	��戙�A�*

	conv_loss5?����        )��P	N�戙�A�*

	conv_lossX�?��Y        )��P	t戙�A�*

	conv_loss�<?l�mE        )��P	�B戙�A�*

	conv_loss2�?��*'        )��P	@m戙�A�*

	conv_loss�d?Ĥ,        )��P	h�戙�A�*

	conv_loss�1?�/1�        )��P	5�戙�A�*

	conv_loss�?DE�        )��P	��戙�A�*

	conv_loss��?��{t        )��P	�戙�A�*

	conv_loss�?G�;�        )��P	??戙�A�*

	conv_loss�?m��@        )��P	�j戙�A�*

	conv_loss�=?{1        )��P	B�戙�A�*

	conv_loss�\?E���        )��P	g�戙�A�*

	conv_loss®?����        )��P	W�戙�A�*

	conv_lossU�?��ٲ        )��P	�戙�A�*

	conv_losss�?\P��        )��P	�I戙�A�*

	conv_loss��?�!31        )��P	�q戙�A�*

	conv_loss�?�u�        )��P	戙�A�*

	conv_loss$�?�;�        )��P	��戙�A�*

	conv_lossX;?�9�        )��P	��戙�A�*

	conv_loss��?�.	        )��P	�戙�A�*

	conv_loss��?hzb        )��P	.K戙�A�*

	conv_losso�?��QB        )��P	�v戙�A�*

	conv_loss�?0��        )��P	M�戙�A�*

	conv_loss>?zc'�        )��P	��戙�A�*

	conv_lossV�? =%        )��P	�	戙�A�*

	conv_loss]�?�E͞        )��P	�?戙�A�*

	conv_loss*0?&�_        )��P	�o戙�A�*

	conv_loss�?iR�9        )��P	��戙�A�*

	conv_loss*�?��        )��P	B�戙�A�*

	conv_loss?�6S�        )��P	<戙�A�*

	conv_loss�?�.}        )��P	H1戙�A�*

	conv_loss�?�h8        )��P	_戙�A�*

	conv_loss��?��W�        )��P	�戙�A�*

	conv_loss�?�α.        )��P	*�戙�A�*

	conv_loss��?��&        )��P	%�戙�A�*

	conv_lossł?�g��        )��P	
 戙�A�*

	conv_loss@�?R�        )��P	&8 戙�A�*

	conv_loss�?���o        )��P	�b 戙�A�*

	conv_lossh2?�Z��        )��P	ӌ 戙�A�*

	conv_loss*?pCE        )��P	"� 戙�A�*

	conv_loss��?Z ή        )��P	�� 戙�A�*

	conv_loss�0?r��        )��P	Y!戙�A�*

	conv_loss�?�@�        )��P	�L!戙�A�*

	conv_loss�9?�9�;        )��P	ty!戙�A�*

	conv_lossY�?�]�{        )��P	أ!戙�A�*

	conv_loss¥?+�h�        )��P	�!戙�A�*

	conv_lossۧ?��J�        )��P	��!戙�A�*

	conv_loss��?'ƹ�        )��P	>'"戙�A�*

	conv_loss�9?�"T        )��P	�R"戙�A�*

	conv_loss�?�M�<        )��P	�{"戙�A�*

	conv_loss�x?Q�qy        )��P	ǧ"戙�A�*

	conv_loss��?�dh*        )��P	��"戙�A�*

	conv_lossI�?3        )��P	 #戙�A�*

	conv_loss6$?6"��        )��P	r-#戙�A�*

	conv_lossD?%��        )��P	�Y#戙�A�*

	conv_loss-u?���        )��P	��#戙�A�*

	conv_loss��?��!�        )��P	g�#戙�A�*

	conv_loss��?6���        )��P	N�#戙�A�*

	conv_loss��?���        )��P	m$戙�A�*

	conv_loss"�?�|VG        )��P	�3$戙�A�*

	conv_losstB?���q        )��P	B^$戙�A�*

	conv_lossg?�|y        )��P	k�$戙�A�*

	conv_lossdM?L�>        )��P	3�$戙�A�*

	conv_loss�y?�         )��P	��$戙�A�*

	conv_loss�&?K��        )��P	�%戙�A�*

	conv_loss��? 3�8        )��P	 I%戙�A�*

	conv_loss��
?�E73        )��P	'u%戙�A�*

	conv_lossq
?+�b�        )��P	<�%戙�A�*

	conv_loss�w
?���        )��P	��%戙�A�*

	conv_loss��
?�
B�        )��P	��%戙�A�*

	conv_loss��	?j���        )��P	�*&戙�A�*

	conv_loss��?��(s        )��P	']&戙�A�*

	conv_lossM�?�{�        )��P	Պ&戙�A�*

	conv_loss�	?�к         )��P	��&戙�A�*

	conv_loss�V?&O�        )��P	��&戙�A�*

	conv_losshe?e�#0        )��P	'戙�A�*

	conv_loss#?��        )��P	H'戙�A�*

	conv_loss�?���        )��P	�u'戙�A�*

	conv_loss�m?�%(        )��P	W�'戙�A�*

	conv_loss�?���(        )��P	5�'戙�A�*

	conv_loss�6?X��        )��P	[�'戙�A�*

	conv_loss�)?���9        )��P	�"(戙�A�*

	conv_lossw�?��        )��P	�T(戙�A�*

	conv_loss�?�㿽        )��P	Z�(戙�A�*

	conv_loss�?4�<:        )��P	%�(戙�A�*

	conv_loss|�?X{y        )��P	��(戙�A�*

	conv_loss��? )��        )��P	
)戙�A�*

	conv_loss�b?%3k>        )��P	5)戙�A�*

	conv_loss'f?��!�        )��P	S^)戙�A�*

	conv_losse6?/x        )��P	��)戙�A�*

	conv_loss(�?Z)��        )��P	��)戙�A�*

	conv_loss���>`�&        )��P	��)戙�A�*

	conv_loss�?F��q        )��P	�*戙�A�*

	conv_loss�n ?���        )��P	T8*戙�A�*

	conv_loss?~ ?eKP|        )��P	�d*戙�A�*

	conv_lossf��>�]        )��P	��*戙�A�*

	conv_loss�k�>��        )��P	p�*戙�A�*

	conv_lossG@�>%��X        )��P	��*戙�A�*

	conv_loss;�>�7L�        )��P	X+戙�A�*

	conv_lossj��>�虫        )��P	Y;+戙�A�*

	conv_loss�(�>d�G        )��P	�f+戙�A�*

	conv_loss]��>h03(        )��P	��+戙�A�*

	conv_loss�L�>
��        )��P	g�+戙�A�*

	conv_losse��>��C        )��P	?�+戙�A�*

	conv_loss=��>Z'��        )��P	�,戙�A�*

	conv_losse�>�.��        )��P	�?,戙�A�*

	conv_loss���>v,�        )��P	�k,戙�A�*

	conv_loss���>��0        )��P	�,戙�A�*

	conv_lossP4�>ڃ��        )��P	��,戙�A�*

	conv_loss�_�>-���        )��P	�,戙�A�*

	conv_loss�d�>��{j        )��P	�-戙�A�*

	conv_loss���>+^_�        )��P	�J-戙�A�*

	conv_loss���>��;�        )��P	�u-戙�A�*

	conv_loss���>�J�        )��P	�-戙�A�*

	conv_loss�~�>}C�        )��P	�/戙�A�*

	conv_loss���>�A�        )��P	�7/戙�A�*

	conv_loss�!�>��ެ        )��P	�_/戙�A�*

	conv_loss���>�i��        )��P	�/戙�A�*

	conv_loss���>�=�'        )��P		�/戙�A�*

	conv_lossc$�>�՗        )��P	"�/戙�A�*

	conv_loss��>�o�l        )��P	�0戙�A�*

	conv_lossC�>c�A�        )��P	�80戙�A�*

	conv_loss���>���        )��P		d0戙�A�*

	conv_lossJ�>���A        )��P	G�0戙�A�*

	conv_loss��>�=,5        )��P	��0戙�A�*

	conv_loss�Q�>�q�        )��P	��0戙�A�*

	conv_loss�e�>u�b�        )��P	G$1戙�A�*

	conv_loss�@�>�G4        )��P	]M1戙�A�*

	conv_loss��>g
�        )��P	�v1戙�A�*

	conv_loss��>>�e�        )��P	j�1戙�A�*

	conv_lossi��>ݷi        )��P	C�1戙�A�*

	conv_lossVW�>W��        )��P	^2戙�A�*

	conv_loss�#�>��        )��P	f,2戙�A�*

	conv_loss+��>	��8        )��P	/\2戙�A�*

	conv_loss�P�><�s^        )��P	*�2戙�A�*

	conv_loss��>+�%W        )��P	2�2戙�A�*

	conv_loss���>�&��        )��P	��2戙�A�*

	conv_loss�;�>�w4�        )��P	�3戙�A�*

	conv_loss��>����        )��P	<3戙�A�*

	conv_loss0��>����        )��P	�d3戙�A�*

	conv_loss
��>��I�        )��P	2�3戙�A�*

	conv_lossi%�>
��        )��P	)�3戙�A�*

	conv_loss���>���2        )��P	��3戙�A�*

	conv_loss/"�>{�j�        )��P		4戙�A�*

	conv_loss�C�>�.��        )��P	�<4戙�A�*

	conv_loss�-�>�Or�        )��P	Pj4戙�A�*

	conv_loss�F�>[T�        )��P	v�4戙�A�*

	conv_losse��>T�        )��P	��4戙�A�*

	conv_loss���>�X�        )��P	B�4戙�A�*

	conv_loss�W�>Dj        )��P	�5戙�A�*

	conv_loss9D�>M��        )��P	
B5戙�A�*

	conv_loss�z�>U��y        )��P	n5戙�A�*

	conv_lossE��>����        )��P	�5戙�A�*

	conv_loss:��>7�V        )��P	��5戙�A�*

	conv_loss��>3^vE        )��P	�5戙�A�*

	conv_loss���>��W�        )��P	�6戙�A�*

	conv_loss�X�>��hZ        )��P	�>6戙�A�*

	conv_loss)��>E�G�        )��P	wj6戙�A�*

	conv_lossɲ�>G/5         )��P	N�6戙�A�*

	conv_loss���>��8�        )��P	\�6戙�A�*

	conv_lossA�>Զ0�        )��P	��6戙�A�*

	conv_loss}��>Wy`        )��P	�7戙�A�*

	conv_loss]�>��x        )��P	n:7戙�A�*

	conv_loss��>�.�        )��P	�c7戙�A�*

	conv_loss���>�џK        )��P	��7戙�A�*

	conv_loss���>�L        )��P	��7戙�A�*

	conv_lossH�>�ÀD        )��P	l�7戙�A�*

	conv_loss�Ҿ>�ċ�        )��P	18戙�A�*

	conv_loss���>k�&�        )��P	�J8戙�A�*

	conv_lossM��>gvF�        )��P	�u8戙�A�*

	conv_loss�׻>�`�        )��P	�8戙�A�*

	conv_loss��>�9        )��P	�8戙�A�*

	conv_loss�O�>�PJy        )��P	��8戙�A�*

	conv_loss���>��h5        )��P	�)9戙�A�*

	conv_loss�E�>Y$��        )��P	:T9戙�A�*

	conv_loss1O�>J�{P        )��P	�9戙�A�*

	conv_lossbּ>�ƅ        )��P	�9戙�A�*

	conv_loss5��>�        )��P	��9戙�A�*

	conv_loss4��>yGC�        )��P	�:戙�A�*

	conv_loss���>�<��        )��P	�N:戙�A�*

	conv_lossu}�>|��        )��P	|:戙�A�*

	conv_loss�>hI,�        )��P	s�:戙�A�*

	conv_lossBP�>�G�X        )��P	�:戙�A�*

	conv_loss�{�>�5�L        )��P	��:戙�A�*

	conv_loss���>���        )��P	S);戙�A�*

	conv_loss�0�>��        )��P	6U;戙�A�*

	conv_lossz^�>+v;�        )��P	�;戙�A�*

	conv_loss!�>�U�        )��P	��;戙�A�*

	conv_loss빴>\)H        )��P	6�;戙�A�*

	conv_lossv%�>�2x         )��P	#�;戙�A�*

	conv_loss!3�>��@        )��P	�*<戙�A�*

	conv_loss;��>���        )��P	�U<戙�A�*

	conv_loss�x�>!wF        )��P	_�<戙�A�*

	conv_loss�B�>��!        )��P	2�<戙�A�*

	conv_loss6:�>/،�        )��P	��<戙�A�*

	conv_loss�a�>Sb�t        )��P	\=戙�A�*

	conv_loss�(�>]�        )��P	t1=戙�A�*

	conv_lossX&�>5�|�        )��P	B^=戙�A�*

	conv_loss"��>|�h        )��P	��=戙�A�*

	conv_loss*��>�3S        )��P	�=戙�A�*

	conv_loss�9�>���        )��P	q�=戙�A�*

	conv_loss,[�>C��9        )��P	c
>戙�A�*

	conv_loss���>�cx�        )��P	�4>戙�A�*

	conv_losstw�>�8D        )��P	�a>戙�A�*

	conv_lossE�>�q
        )��P	O�>戙�A�*

	conv_loss�	�>;b�        )��P	��>戙�A�*

	conv_lossXc�>k��_        )��P	��>戙�A�*

	conv_loss�>�F�        )��P	=?戙�A�*

	conv_loss�ȶ>r+�        )��P	D8?戙�A�*

	conv_losstj�>,Mhy        )��P	�b?戙�A�*

	conv_loss�'�>$$         )��P	ǌ?戙�A�*

	conv_loss�q�>�S�]        )��P	!�?戙�A�*

	conv_loss��>���-        )��P	��?戙�A�*

	conv_loss���>o)"�        )��P	��D戙�A�*

	conv_loss&F�>��9<        )��P	��D戙�A�*

	conv_loss	�>�Q�'        )��P	@�D戙�A�*

	conv_loss�q�>���        )��P	�#E戙�A�*

	conv_loss:��>�
#�        )��P	NE戙�A�*

	conv_loss�C�>�!�        )��P	DzE戙�A�*

	conv_lossEJ�>I��)        )��P	9�E戙�A�*

	conv_lossK(�>����        )��P	�E戙�A�*

	conv_loss�t�>0A�        )��P	��E戙�A�*

	conv_lossrӭ> ��        )��P	&,F戙�A�*

	conv_lossm��>S��        )��P	�TF戙�A�*

	conv_lossa�>���        )��P	�F戙�A�*

	conv_loss��>���'        )��P	��F戙�A�*

	conv_lossw��>s�6b        )��P	x�F戙�A�*

	conv_loss�Ȭ>��nS        )��P	1G戙�A�*

	conv_loss���>҆/D        )��P	�CG戙�A�*

	conv_loss��>+�r        )��P	�kG戙�A�*

	conv_loss���>7�κ        )��P	��G戙�A�*

	conv_loss���>��(�        )��P	�G戙�A�*

	conv_loss��>�_        )��P	��G戙�A�*

	conv_loss��>ҭA         )��P	�H戙�A�*

	conv_lossK��>�*��        )��P	�5H戙�A�*

	conv_loss�b�>=�u�        )��P	�^H戙�A�*

	conv_loss��>D��m        )��P	ԅH戙�A�*

	conv_loss���>@^�        )��P	�H戙�A�*

	conv_loss9�>J{�        )��P	��H戙�A�*

	conv_lossL�>�i�w        )��P	I戙�A�*

	conv_loss,D�>�"��        )��P	"/I戙�A�*

	conv_loss��>�C =        )��P	@`I戙�A�*

	conv_lossWC�>�L+�        )��P	��I戙�A�*

	conv_lossgS�>��0�        )��P	&�I戙�A�*

	conv_loss�ȭ>PW�         )��P	/�I戙�A�*

	conv_losse�>x`��        )��P	]J戙�A�*

	conv_lossX��>	IT�        )��P	'2J戙�A�*

	conv_loss��>$�1*        )��P	�ZJ戙�A�*

	conv_loss9��>(=�        )��P	��J戙�A�*

	conv_loss���>��ۀ        )��P	��J戙�A�*

	conv_loss��>���?        )��P	<�J戙�A�*

	conv_loss�Y�>��h�        )��P	f�J戙�A�*

	conv_loss�k�>A�l        )��P	�&K戙�A�*

	conv_loss��>,s�        )��P	*PK戙�A�*

	conv_loss=��>*eS�        )��P	*yK戙�A�*

	conv_lossC��>8�%e        )��P	��K戙�A�*

	conv_loss�L�>�0        )��P	��K戙�A�*

	conv_loss猫>0��        )��P	��K戙�A�*

	conv_loss�Z�>� �        )��P	]$L戙�A�*

	conv_loss�ɩ>�e��        )��P	�XL戙�A�*

	conv_lossv��>r>�        )��P	��L戙�A�*

	conv_loss/��>�N�s        )��P	��L戙�A�*

	conv_loss28�>//        )��P	��L戙�A�*

	conv_lossq�>�$�        )��P	��L戙�A�*

	conv_lossv��>HNE�        )��P	A6M戙�A�*

	conv_loss��>�/        )��P	�`M戙�A�*

	conv_loss�ժ>�h��        )��P	�M戙�A�*

	conv_loss�j�>�
�F        )��P	D�M戙�A�*

	conv_loss��>��a�        )��P	G�M戙�A�*

	conv_loss�ʬ>y�&�        )��P	�N戙�A�*

	conv_loss- �>*��        )��P	�SN戙�A�*

	conv_loss���>2�F�        )��P	 �N戙�A�*

	conv_loss�>m{��        )��P	ΫN戙�A�*

	conv_loss��>�         )��P	\�N戙�A�*

	conv_loss6��>vV!L        )��P	�	O戙�A�*

	conv_lossA̫>���        )��P	�2O戙�A�*

	conv_loss�ڪ>-~\        )��P	�[O戙�A�*

	conv_loss���>g��        )��P	�O戙�A�*

	conv_loss�5�>�M        )��P	�O戙�A�*

	conv_losss`�>�~��        )��P	&�O戙�A�*

	conv_loss>��>�㹖        )��P	�P戙�A�*

	conv_loss_��>��        )��P	4P戙�A�*

	conv_lossCW�>{2s        )��P	\P戙�A�*

	conv_loss���>����        )��P	w�P戙�A�*

	conv_loss�>�>���        )��P	�P戙�A�*

	conv_loss�(�>d6��        )��P	��P戙�A�*

	conv_loss{�>��d        )��P	Q戙�A�*

	conv_loss�X�>+ �+        )��P	�3Q戙�A�*

	conv_lossnf�>H���        )��P	]Q戙�A�*

	conv_loss�֪>�#\�        )��P	ՄQ戙�A�*

	conv_loss��>2���        )��P	.�Q戙�A�*

	conv_loss1D�>2�!�        )��P	#�Q戙�A�*

	conv_loss�"�>q#@�        )��P	�R戙�A�*

	conv_loss'�>�/�        )��P	�)R戙�A�*

	conv_lossk�>�1f}        )��P	8RR戙�A�*

	conv_loss���>�R��        )��P	�zR戙�A�*

	conv_loss޼�>���        )��P	��R戙�A�*

	conv_lossg$�>'���        )��P	|�R戙�A�*

	conv_loss��>Dv
        )��P	��R戙�A�*

	conv_lossH��>���        )��P	NS戙�A�*

	conv_lossc�>��U        )��P	�IS戙�A�*

	conv_loss�ԫ>^ɜ�        )��P	�sS戙�A�*

	conv_loss���>c���        )��P	ŝS戙�A�*

	conv_lossw��>�.j        )��P	��S戙�A�*

	conv_loss���>�	�        )��P	e�S戙�A�*

	conv_loss	8�>��P        )��P	�T戙�A�*

	conv_loss�x�>ܼ�8        )��P	vAT戙�A�*

	conv_loss�S�>HIU�        )��P	�lT戙�A�*

	conv_lossJܨ>dk��        )��P	r�T戙�A�*

	conv_lossJ��>t[��        )��P	��T戙�A�*

	conv_loss�Q�>a�        )��P	��T戙�A�*

	conv_loss���>��L�        )��P	�U戙�A�*

	conv_loss��>1���        )��P	�=U戙�A�*

	conv_lossT�>w>j�        )��P	*hU戙�A�*

	conv_loss��>T��        )��P	��V戙�A�*

	conv_loss^��>e���        )��P	��V戙�A�*

	conv_loss���>�4�        )��P	W戙�A�*

	conv_loss< �>@��        )��P	_HW戙�A�*

	conv_loss��>[B�        )��P	HqW戙�A�*

	conv_loss˪>��        )��P	��W戙�A�*

	conv_loss��>E?dZ        )��P	|�W戙�A�*

	conv_lossz��>w�;        )��P	��W戙�A�*

	conv_loss���>�1 �        )��P	
#X戙�A�*

	conv_lossC��>[2(�        )��P		PX戙�A�*

	conv_loss��>��-        )��P	��X戙�A�*

	conv_lossϭ�>ovN        )��P	S�X戙�A�*

	conv_lossJȨ>�G.        )��P	�X戙�A�*

	conv_loss�.�>�=v�        )��P	CY戙�A�*

	conv_lossè>��J        )��P	5Y戙�A�*

	conv_lossS�>��-        )��P	�`Y戙�A�*

	conv_loss �>ȼ:        )��P	Q�Y戙�A�*

	conv_lossP�>��:�        )��P	��Y戙�A�*

	conv_loss.�>z��        )��P	��Y戙�A�*

	conv_loss:�>g��        )��P	\Z戙�A�*

	conv_lossvգ>ܩ�        )��P	�+Z戙�A�*

	conv_loss�D�>r�!�        )��P	XZ戙�A�*

	conv_loss�:�>&��%        )��P	փZ戙�A�*

	conv_loss���>����        )��P	�Z戙�A�*

	conv_loss���>�8�&        )��P	M�Z戙�A�*

	conv_loss$_�>$ͣ?        )��P	V[戙�A�*

	conv_loss�0�>7��:        )��P	k/[戙�A�*

	conv_loss�ת>���        )��P	�V[戙�A�*

	conv_losswҦ>+�Q        )��P	'�[戙�A�*

	conv_loss�D�>8�Q�        )��P	˧[戙�A�*

	conv_loss�&�>�m�        )��P	6�[戙�A�*

	conv_lossFf�>��G3        )��P	V�[戙�A�*

	conv_loss�1�>�        )��P		#\戙�A�*

	conv_loss_�>��        )��P	L\戙�A�*

	conv_loss�;�>|��?        )��P	�u\戙�A�*

	conv_loss9�>^ɠ�        )��P	��\戙�A�*

	conv_loss�>y&��        )��P	
�\戙�A�*

	conv_loss��>��U        )��P	��\戙�A�*

	conv_loss0C�>a�A�        )��P	(]戙�A�*

	conv_loss//�>�؂        )��P	NE]戙�A�*

	conv_loss_�>��s�        )��P	dq]戙�A�*

	conv_loss�T�>pW/J        )��P	<�]戙�A�*

	conv_loss��>^2�         )��P	(�]戙�A�*

	conv_loss�0�>��w>        )��P	��]戙�A�*

	conv_loss}�>���        )��P	�^戙�A�*

	conv_loss�@�>���        )��P	yB^戙�A�*

	conv_lossrۧ>�(��        )��P	�l^戙�A�*

	conv_loss��>��7�        )��P	�^戙�A�*

	conv_loss��>o?O�        )��P	U�^戙�A�*

	conv_loss�S�>����        )��P	`�^戙�A�*

	conv_loss�`�>�dZB        )��P	�%_戙�A�*

	conv_loss#M�>��C�        )��P	dP_戙�A�*

	conv_lossQ{�>�KU�        )��P	�x_戙�A�*

	conv_loss�;�>�b        )��P	5�_戙�A�*

	conv_loss6"�>v΢V        )��P	��_戙�A�*

	conv_loss}8�>P��b        )��P	&`戙�A�*

	conv_loss�4�>A��E        )��P	�1`戙�A�*

	conv_loss=�>S��        )��P	�\`戙�A�*

	conv_loss͝�>�7X8        )��P	G�`戙�A�*

	conv_loss/��>����        )��P	��`戙�A�*

	conv_lossҤ�>�AcH        )��P	|�`戙�A�*

	conv_lossJ��>K�t�        )��P	�a戙�A�*

	conv_lossP��>��l        )��P	e6a戙�A�*

	conv_loss=�>0��/        )��P	�`a戙�A�*

	conv_lossQJ�>;wl        )��P	�a戙�A�*

	conv_lossæ�>).�        )��P	T�a戙�A�*

	conv_loss���>�s        )��P		�a戙�A�*

	conv_lossTu�>���        )��P	<b戙�A�*

	conv_loss�I�>��z�        )��P	6Db戙�A�*

	conv_lossK��>���^        )��P	�ub戙�A�*

	conv_loss���>��        )��P	?�b戙�A�*

	conv_loss� �>�j��        )��P	P�b戙�A�*

	conv_loss��>���s        )��P	S�b戙�A�*

	conv_loss/�>���|        )��P	� c戙�A�*

	conv_loss$�>���"        )��P	�Ic戙�A�*

	conv_loss��>��p�        )��P	Drc戙�A�*

	conv_loss)9�>��S4        )��P	��c戙�A�*

	conv_loss��>��b        )��P	*�c戙�A�*

	conv_loss���>P��        )��P	+�c戙�A�*

	conv_lossܮ�>;�        )��P	�d戙�A�*

	conv_loss�r�>���c        )��P	
Hd戙�A�*

	conv_lossXΦ>%�o�        )��P	�rd戙�A�*

	conv_lossw�>RYp�        )��P	�d戙�A�*

	conv_loss�>e��        )��P	
�d戙�A�*

	conv_lossd�>;i��        )��P	��d戙�A�*

	conv_loss�3�>SUփ        )��P	 e戙�A�*

	conv_loss���>^�V�        )��P	�Je戙�A�*

	conv_loss=&�>��7        )��P	`ue戙�A�*

	conv_loss�.�>�߮        )��P	q�e戙�A�*

	conv_lossAd�>��        )��P	W�e戙�A�*

	conv_loss��>���        )��P	/�e戙�A�*

	conv_lossP�>�j|e        )��P	#f戙�A�*

	conv_loss �>	:s         )��P	2Ef戙�A�*

	conv_loss-�>mz�        )��P	uof戙�A�*

	conv_loss�y�>��ڙ        )��P	]�f戙�A�*

	conv_loss���>6}`�        )��P	��f戙�A�*

	conv_loss��>�ނ�        )��P	0�f戙�A�*

	conv_loss�դ>���        )��P	kg戙�A�*

	conv_loss8�>%��        )��P	�@g戙�A�*

	conv_loss��>�A�;        )��P	�lg戙�A�*

	conv_loss=�>�5u)        )��P	��g戙�A�*

	conv_loss_�>�a        )��P	��g戙�A�*

	conv_loss���>��?w        )��P	�h戙�A�*

	conv_loss��>�a��        )��P	=Ah戙�A�*

	conv_lossK�>�p�        )��P	�oh戙�A�*

	conv_lossv�>q(MZ        )��P	��h戙�A�*

	conv_loss���>���        )��P	w�h戙�A�*

	conv_lossU�>8X��        )��P	��h戙�A�*

	conv_loss\��>;ȭ        )��P	(i戙�A�*

	conv_lossڡ>�U��        )��P	�Pi戙�A�*

	conv_loss腤>@�6        )��P	�i戙�A�*

	conv_loss�1�>�#�        )��P	Z�i戙�A�*

	conv_lossϟ�>��h�        )��P	��i戙�A�*

	conv_lossim�>�o�.        )��P	4j戙�A�*

	conv_loss���>əq        )��P	�Ij戙�A�*

	conv_loss�`�>��        )��P	�yj戙�A�*

	conv_loss��>k~�        )��P	�j戙�A�*

	conv_loss���>c�W        )��P	��j戙�A�*

	conv_loss�h�>���\        )��P	ik戙�A�*

	conv_loss���>\���        )��P	1-k戙�A�*

	conv_lossEE�>�{��        )��P	�Xk戙�A�*

	conv_loss���>r�2�        )��P	��k戙�A�*

	conv_loss��>&��t        )��P	m�k戙�A�*

	conv_lossCw�>��I        )��P	��k戙�A�*

	conv_lossO��>�b��        )��P	*l戙�A�*

	conv_lossv��>��0        )��P	q=l戙�A�*

	conv_loss�ȡ>����        )��P	�jl戙�A�*

	conv_loss���> ��        )��P	g�l戙�A�*

	conv_loss��>T�        )��P	��l戙�A�*

	conv_loss�d�>����        )��P	��l戙�A�*

	conv_lossKݤ>�-�        )��P	
m戙�A�*

	conv_loss�E�>�,XM        )��P	�Im戙�A�*

	conv_loss���>�6�        )��P	�xm戙�A�*

	conv_loss)ݡ>Y�g        )��P	}�m戙�A�*

	conv_loss"Z�>�W�M        )��P	��m戙�A�*

	conv_loss'١>q�l�        )��P	��m戙�A�*

	conv_loss�ɡ>8.A        )��P	�)n戙�A�*

	conv_loss.�>dN4`        )��P	^Un戙�A�*

	conv_loss÷�>�5"        )��P	��n戙�A�*

	conv_loss\`�>0�_G        )��P	b�n戙�A�*

	conv_loss4`�>��q        )��P	�n戙�A�*

	conv_loss�ߣ>,P��        )��P	�o戙�A�*

	conv_loss�Ǣ>=�-�        )��P	�5o戙�A�*

	conv_loss�F�>��7        )��P	�bo戙�A�*

	conv_lossǸ�>mz��        )��P	�o戙�A�*

	conv_lossW�>8��A        )��P	�o戙�A�*

	conv_loss���>n�o        )��P	�o戙�A�*

	conv_lossV6�>S�t�        )��P	]p戙�A�*

	conv_loss���>�dZ�        )��P	�Ep戙�A�*

	conv_loss`p�>�7�        )��P	�qp戙�A�*

	conv_lossߤ�>d��        )��P	��p戙�A�*

	conv_loss��>�F�T        )��P	��p戙�A�*

	conv_lossIr�>��        )��P	d	q戙�A�*

	conv_loss��>����        )��P	�5q戙�A�*

	conv_loss���>�0?        )��P	�fq戙�A�*

	conv_loss)��>�eȿ        )��P	�q戙�A�*

	conv_loss���>�z         )��P	��q戙�A�*

	conv_loss�\�>F4
Z        )��P	J�q戙�A�*

	conv_lossT�>\���        )��P	`r戙�A�*

	conv_loss���>�
ێ        )��P	�Rr戙�A�*

	conv_loss}�>�n�k        )��P	$�r戙�A�*

	conv_loss��>)�I        )��P	̳r戙�A�*

	conv_losssޠ>Um�        )��P	��r戙�A�*

	conv_loss�o�>�8�m        )��P	�s戙�A�*

	conv_loss��>��K        )��P	&7s戙�A�*

	conv_loss��>�gU�        )��P	�as戙�A�*

	conv_loss���>͇��        )��P	A�s戙�A�*

	conv_loss�2�>���        )��P	�s戙�A�*

	conv_loss=ɢ>���        )��P	�s戙�A�*

	conv_lossk�>:iؼ        )��P	�#t戙�A�*

	conv_loss?�>MddS        )��P	�Ut戙�A�*

	conv_loss��>��        )��P	�t戙�A�*

	conv_loss��>�        )��P	�t戙�A�*

	conv_loss:d�>C�\        )��P	{�t戙�A�*

	conv_loss�4�>:��]        )��P	Eu戙�A�*

	conv_loss�j�>���        )��P	�;u戙�A�*

	conv_loss}��>��Ѻ        )��P	�hu戙�A�*

	conv_loss<:�>"�`        )��P	��u戙�A�*

	conv_loss4[�>���        )��P	��u戙�A�*

	conv_loss�5�>�j�]        )��P	D�u戙�A�*

	conv_loss\y�>��g        )��P	Mv戙�A�*

	conv_loss�W�>H�Z0        )��P	UKv戙�A�*

	conv_lossD?�>��0!        )��P	�|v戙�A�*

	conv_losscd�>	*h        )��P	ɦv戙�A�*

	conv_loss��>��H�        )��P	��v戙�A�*

	conv_loss��>T{�L        )��P	��v戙�A�*

	conv_lossz�>$��        )��P	�.w戙�A�*

	conv_lossQ��>��        )��P	o[w戙�A�*

	conv_loss�֢>���3        )��P	Շw戙�A�*

	conv_lossց�>����        )��P	��w戙�A�*

	conv_loss���>D��        )��P	��w戙�A�*

	conv_loss���>��h�        )��P	0x戙�A�*

	conv_losst�>���B        )��P	)<x戙�A�*

	conv_loss���>oD�w        )��P	�gx戙�A�*

	conv_loss2d�>��G        )��P	�x戙�A�*

	conv_loss��>���        )��P	�x戙�A�*

	conv_loss�m�>�
M�        )��P	��x戙�A�*

	conv_loss帜>�4!        )��P	�y戙�A�*

	conv_loss=��>����        )��P	SGy戙�A�*

	conv_loss$��>��        )��P	ty戙�A�*

	conv_loss���>P���        )��P	��z戙�A�*

	conv_loss��>�0�8        )��P	�	{戙�A�*

	conv_loss�t�>��'        )��P	�4{戙�A�*

	conv_loss>w�>nt*        )��P	�_{戙�A�*

	conv_losss(�>�pz        )��P	��{戙�A�*

	conv_lossy�>Y0�        )��P	��{戙�A�*

	conv_lossz��>E��^        )��P	��{戙�A�*

	conv_loss�۠>e9(�        )��P	&#|戙�A�*

	conv_lossA��>����        )��P	�M|戙�A�*

	conv_lossԐ�>?�ӆ        )��P	H~|戙�A�*

	conv_lossS�>��        )��P	C�|戙�A�*

	conv_losss}�>�9        )��P	�|戙�A�*

	conv_loss̲�>�0        )��P	}戙�A�*

	conv_loss"�>�ÁF        )��P	6}戙�A�*

	conv_loss��>pTa�        )��P	u`}戙�A�*

	conv_loss4�>�<��        )��P	ǋ}戙�A�*

	conv_loss�E�>�O�        )��P	ȶ}戙�A�*

	conv_loss���>�l$�        )��P	;�}戙�A�*

	conv_lossa��>�1��        )��P	"~戙�A�*

	conv_lossr�>�:��        )��P	�B~戙�A�*

	conv_loss�s�>�MZ�        )��P	Po~戙�A�*

	conv_loss-�>�ѕ�        )��P	ٜ~戙�A�*

	conv_loss(֟>�!8�        )��P	E�~戙�A�*

	conv_lossn��>��        )��P	��~戙�A�*

	conv_loss�ѣ>��x        )��P	�戙�A�*

	conv_loss�ڡ>R�a        )��P	�G戙�A�*

	conv_loss�~�>{��        )��P	dr戙�A�*

	conv_loss���>R1�A        )��P	��戙�A�*

	conv_lossj��>��.        )��P	��戙�A�*

	conv_loss밟>��s�        )��P	}�戙�A�*

	conv_loss�Л>D�0�        )��P	�#�戙�A�*

	conv_loss�l�>6��5        )��P	�O�戙�A�*

	conv_loss�%�>�=�        )��P	�z�戙�A�*

	conv_loss�p�>d�cf        )��P	���戙�A�*

	conv_loss��>�lO        )��P	Ҁ戙�A�*

	conv_lossTO�>����        )��P	���戙�A�*

	conv_losspM�>w��        )��P	�+�戙�A�*

	conv_loss�>�Z�        )��P	V�戙�A�*

	conv_loss*S�>���c        )��P	戙�A�*

	conv_loss��>*R�y        )��P	l��戙�A�*

	conv_loss���>-�N�        )��P	x؁戙�A�*

	conv_lossUӜ>�H��        )��P	O�戙�A�*

	conv_loss���>ٺH�        )��P	=0�戙�A�*

	conv_loss��>��&�        )��P	�[�戙�A�*

	conv_loss���>���        )��P	��戙�A�*

	conv_lossf^�>��$c        )��P	J��戙�A�*

	conv_loss��>���        )��P	�ނ戙�A�*

	conv_lossI�>�(��        )��P	�
�戙�A�*

	conv_loss-F�>�U��        )��P	�6�戙�A�*

	conv_lossbܝ>|c�        )��P	�`�戙�A�*

	conv_lossx`�>���c        )��P	z��戙�A�*

	conv_loss���>��g        )��P	�Ƀ戙�A�*

	conv_loss4��>M���        )��P	��戙�A�*

	conv_lossV\�>Z�j"        )��P	� �戙�A�*

	conv_loss�w�>�4�        )��P	 N�戙�A�*

	conv_loss�_�>>w6�        )��P	-y�戙�A�*

	conv_loss�>���m        )��P	���戙�A�*

	conv_loss}��>qǤ�        )��P	&ф戙�A�*

	conv_loss��>؆         )��P	Q��戙�A�*

	conv_loss�4�>�а        )��P	)�戙�A�*

	conv_loss(�>�H�        )��P	Rf�戙�A�*

	conv_lossRz�>ʹ�g        )��P	a��戙�A�*

	conv_loss��>���        )��P	�Ѕ戙�A�*

	conv_loss-�>�6�        )��P	D �戙�A�*

	conv_lossYW�>�MJ�        )��P	�+�戙�A�*

	conv_lossO�>c�FI        )��P	`�戙�A�*

	conv_loss��>���        )��P	c��戙�A�*

	conv_loss6��>��RM        )��P	w��戙�A�*

	conv_loss�|�>���        )��P	��戙�A�*

	conv_loss�Ӡ>w��        )��P	<�戙�A�*

	conv_loss��>M��        )��P	�9�戙�A�*

	conv_loss��>�#�        )��P	Qf�戙�A�*

	conv_loss	��>d��m        )��P	'��戙�A�*

	conv_loss�Ԡ>���        )��P	߻�戙�A�*

	conv_loss	F�>���i        )��P	��戙�A�*

	conv_loss��>�a��        )��P	P�戙�A�*

	conv_loss��>/��;        )��P	;E�戙�A�*

	conv_loss���>����        )��P	�r�戙�A�*

	conv_lossԧ�>��%i        )��P	6��戙�A�*

	conv_loss���>�6�        )��P	�ʈ戙�A�*

	conv_loss�4�>챳�        )��P	*��戙�A�*

	conv_loss�@�>k��        )��P	$�戙�A�*

	conv_loss�Ǡ>�v�W        )��P	�N�戙�A�*

	conv_loss%�>Lr*�        )��P	�x�戙�A�*

	conv_loss)��>*-Y�        )��P	ޥ�戙�A�*

	conv_lossuX�>x�         )��P	�Љ戙�A�*

	conv_lossYޝ>��7        )��P	"��戙�A�*

	conv_lossl`�>	q         )��P	�*�戙�A�*

	conv_loss���>;���        )��P	yT�戙�A�*

	conv_loss|^�>��	        )��P	9��戙�A�*

	conv_lossu�>�yH�        )��P	ޭ�戙�A�*

	conv_lossy��>y6�        )��P	�ي戙�A�*

	conv_loss�N�>8�        )��P	!�戙�A�*

	conv_loss6��>uf�F        )��P	�.�戙�A�*

	conv_lossu��>8wV�        )��P	~X�戙�A�*

	conv_lossB��>���^        )��P	}��戙�A�*

	conv_loss �>��>        )��P	X��戙�A�*

	conv_loss���>��|        )��P	ۋ戙�A�*

	conv_lossŞ>�1�        )��P	i�戙�A�*

	conv_lossљ�>���        )��P	a0�戙�A�*

	conv_loss���>�Ď�        )��P	�j�戙�A�*

	conv_loss4ݠ>F�,L        )��P	��戙�A�*

	conv_loss)�>���        )��P	Lƌ戙�A�*

	conv_loss���>��	�        )��P	���戙�A�*

	conv_loss��>�ċ        )��P	�"�戙�A�*

	conv_loss���>�8$        )��P	�N�戙�A�*

	conv_loss�Ĝ>�D��        )��P	vz�戙�A�*

	conv_loss��>*۠g        )��P	筍戙�A�*

	conv_loss�M�>�L��        )��P	M؍戙�A�*

	conv_loss�5�>�)�A        )��P	�戙�A�*

	conv_loss��>����        )��P	K:�戙�A�*

	conv_loss���>�52'        )��P	{f�戙�A�*

	conv_loss���>)1�        )��P	s��戙�A�*

	conv_loss�>��        )��P	3戙�A�*

	conv_loss/
�>ϸ�        )��P	��戙�A�*

	conv_loss�r�>�|�        )��P	 �戙�A�*

	conv_loss�Y�>�ʒ        )��P	)F�戙�A�*

	conv_loss7O�>j�        )��P	�q�戙�A�*

	conv_loss}��>��DS        )��P	d��戙�A�*

	conv_lossJ��>ʓl�        )��P	�ԏ戙�A�*

	conv_lossS��>z�h�        )��P	��戙�A�*

	conv_loss��>{p4�        )��P	�.�戙�A�*

	conv_loss�l�>����        )��P	;Z�戙�A�*

	conv_loss���>�O��        )��P	���戙�A�*

	conv_lossJ�>��vy        )��P	{��戙�A�*

	conv_loss�ܜ>g|x�        )��P	#ڐ戙�A�*

	conv_losss͡>�B�0        )��P	��戙�A�*

	conv_loss��>��e�        )��P	3�戙�A�*

	conv_loss��>+\�        )��P	�]�戙�A�*

	conv_loss��>g��        )��P	���戙�A�*

	conv_loss�Ҝ>̭K�        )��P	+��戙�A�*

	conv_loss���>p���        )��P	�ۑ戙�A�*

	conv_lossKX�>;B        )��P	��戙�A�*

	conv_loss�%�>
f��        )��P	�4�戙�A�*

	conv_loss+p�>P�r"        )��P	�_�戙�A�*

	conv_loss˟�>��|�        )��P	���戙�A�*

	conv_loss>��>_�*�        )��P	���戙�A�*

	conv_lossjx�>��#G        )��P	]��戙�A�*

	conv_loss ��>��8�        )��P	?�戙�A�*

	conv_loss_��>T�-�        )��P	8�戙�A�*

	conv_loss�Ԙ>�=,�        )��P	hd�戙�A�*

	conv_loss�қ>^��        )��P	���戙�A�*

	conv_loss�қ>����        )��P	Y��戙�A�*

	conv_loss �>jhƞ        )��P	�戙�A�*

	conv_loss���>ʀ�4        )��P	=�戙�A�*

	conv_lossS��>�MZ�        )��P	"<�戙�A�*

	conv_loss;$�>8�v        )��P	g�戙�A�*

	conv_loss�>ZR��        )��P	���戙�A�*

	conv_loss/"�>�ȅ        )��P	���戙�A�*

	conv_loss��>ܹ�        )��P	/�戙�A�*

	conv_loss�I�>x3�9        )��P	'�戙�A�*

	conv_loss��>{��9        )��P	#Q�戙�A�*

	conv_loss�М>"G�        )��P	�{�戙�A�*

	conv_lossϾ�>R�R�        )��P	���戙�A�*

	conv_loss�n�>�4^        )��P	�ҕ戙�A�*

	conv_loss���>S��&        )��P	U��戙�A�*

	conv_loss*��>x�x        )��P	p*�戙�A�*

	conv_loss7o�>��        )��P	�T�戙�A�*

	conv_lossҜ>n��        )��P	�戙�A�*

	conv_loss�#�>lX7C        )��P	Ӭ�戙�A�*

	conv_loss/�>�T s        )��P	��戙�A�*

	conv_loss���>~��        )��P	$�戙�A�*

	conv_lossTݜ>���R        )��P	1A�戙�A�*

	conv_loss�Ŝ>��V        )��P	�n�戙�A�*

	conv_loss�ݛ>�`��        )��P	���戙�A�*

	conv_loss@ �>\�        )��P	cƗ戙�A�*

	conv_loss�K�>�c��        )��P	���戙�A�*

	conv_loss�r�>5q2        )��P	�)�戙�A�*

	conv_losse��>���        )��P	�S�戙�A�*

	conv_loss��>���#        )��P	���戙�A�*

	conv_loss�W�>�p        )��P	ʬ�戙�A�*

	conv_loss{�>*ɔ6        )��P	ܘ戙�A�*

	conv_loss�ߚ>
��        )��P	V�戙�A�*

	conv_loss5ٜ>u��        )��P	�9�戙�A�*

	conv_lossn1�>�{��        )��P	+f�戙�A�*

	conv_lossp��>�ζ        )��P	i��戙�A�*

	conv_loss��>7B�D        )��P	�Ù戙�A�*

	conv_lossew�>��Y        )��P	��戙�A�*

	conv_loss�>��p8        )��P	2!�戙�A�*

	conv_loss�N�>f        )��P	�L�戙�A�*

	conv_loss�Q�> �YI        )��P	v�戙�A�*

	conv_loss�؛>|�͆        )��P	��戙�A�*

	conv_lossy��>k�4�        )��P	�њ戙�A�*

	conv_loss��>�d'        )��P	W��戙�A�*

	conv_loss��>K�=N        )��P	�(�戙�A�*

	conv_loss˛>���        )��P	�S�戙�A�*

	conv_loss�>�s��        )��P	6�戙�A�*

	conv_loss�>�>�        )��P	E��戙�A�*

	conv_loss\��>l��Y        )��P	�֛戙�A�*

	conv_lossP��>�z�!        )��P	 �戙�A�*

	conv_loss��>�`s�        )��P	�)�戙�A�*

	conv_loss��>ۿ��        )��P	T�戙�A�*

	conv_loss�t�>��H�        )��P	�}�戙�A�*

	conv_loss�>�O        )��P	S��戙�A�*

	conv_loss�ݙ>�P�*        )��P	�Ӝ戙�A�*

	conv_loss�֜>'7n;        )��P	���戙�A�*

	conv_loss�G�>R�J�        )��P	�(�戙�A�*

	conv_lossO��>-!�j        )��P	W�戙�A�*

	conv_loss0�>.�Կ        )��P	u��戙�A�*

	conv_lossH%�>q�a�        )��P	��戙�A�*

	conv_loss��>j+��        )��P	�|�戙�A�*

	conv_loss1�>�c�j        )��P	���戙�A�*

	conv_loss�h�>��        )��P	Ỵ戙�A�*

	conv_loss_��>����        )��P	���戙�A�*

	conv_loss�Қ>]ɀ�        )��P	�!�戙�A�*

	conv_loss쐕>ZS�T        )��P	6V�戙�A�*

	conv_loss�V�>֔ߠ        )��P	u}�戙�A�*

	conv_loss/C�>Y�s�        )��P	̥�戙�A�*

	conv_loss[��>�-�k        )��P	 Ϥ戙�A�*

	conv_loss�t�>�";        )��P	0��戙�A�*

	conv_loss��>U��        )��P	7)�戙�A�*

	conv_lossh�>f0��        )��P	�\�戙�A�*

	conv_loss�&�>�ͭ�        )��P	��戙�A�*

	conv_lossJ�>s�)        )��P	9��戙�A�*

	conv_loss��>8$�b        )��P	Sץ戙�A�*

	conv_loss�q�>����        )��P	���戙�A�*

	conv_loss�Ӛ>�xo        )��P	�(�戙�A�*

	conv_loss���>��         )��P	�W�戙�A�*

	conv_loss�:�>bv+�        )��P	v��戙�A�*

	conv_loss�A�>{ff�        )��P	���戙�A�*

	conv_loss^z�>���f        )��P	�٦戙�A�*

	conv_loss[Ϝ>���        )��P	��戙�A�*

	conv_loss��>�D�        )��P	E*�戙�A�*

	conv_loss~͚>Y>��        )��P	,T�戙�A�*

	conv_loss�H�>앪�        )��P	�{�戙�A�*

	conv_losso�>%�+        )��P	���戙�A�*

	conv_lossA�>U�        )��P	ḑ戙�A�*

	conv_loss��>*�`�        )��P	���戙�A�*

	conv_loss�g�>mpL�        )��P	:�戙�A�*

	conv_lossk�>�_ �        )��P	�H�戙�A�*

	conv_loss�ԝ>�`F�        )��P	v�戙�A�*

	conv_loss:��>m��X        )��P	H��戙�A�*

	conv_loss���>�9p�        )��P	�ʨ戙�A�*

	conv_lossYʚ>�l�        )��P	n�戙�A�*

	conv_loss��>��.i        )��P	��戙�A�*

	conv_loss=V�>��Qd        )��P	�F�戙�A�*

	conv_loss��>���X        )��P	o�戙�A�*

	conv_loss���>�M�.        )��P	▩戙�A�*

	conv_loss�!�>�n�        )��P	��戙�A�*

	conv_loss�ە>�>��        )��P	��戙�A�*

	conv_lossǷ�>}���        )��P	
�戙�A�*

	conv_loss���>�ۼ        )��P	�5�戙�A�*

	conv_loss�>:eX�        )��P	g]�戙�A�*

	conv_loss젘>�i�{        )��P	%��戙�A�*

	conv_loss�}�>�k�        )��P	@��戙�A�*

	conv_loss��>n��V        )��P	�ת戙�A�*

	conv_loss�x�>��8        )��P	���戙�A�*

	conv_loss��>�Fh        )��P	�(�戙�A�*

	conv_loss��>~��        )��P	�Q�戙�A�*

	conv_lossҋ�>���}        )��P	�{�戙�A�*

	conv_lossʠ�>��        )��P	c��戙�A�*

	conv_lossw�>�|!�        )��P	ܫ戙�A�*

	conv_lossʘ>\        )��P	�戙�A�*

	conv_loss�@�>����        )��P	�-�戙�A�*

	conv_loss�e�>���        )��P	�Y�戙�A�*

	conv_loss�ۗ>����        )��P	���戙�A�*

	conv_loss�z�>��{�        )��P	���戙�A�*

	conv_lossEl�>�hά        )��P	�戙�A�*

	conv_loss�?�>I�+b        )��P	�
�戙�A�*

	conv_loss�J�>1C�y        )��P	�3�戙�A�*

	conv_loss��><%Ǹ        )��P	`�戙�A�*

	conv_loss4+�>�'��        )��P	���戙�A�*

	conv_loss=�>�glq        )��P	���戙�A�*

	conv_loss|�>�,��        )��P	C�戙�A�*

	conv_loss��>]\�        )��P	��戙�A�*

	conv_lossi��>L�]~        )��P	*D�戙�A�*

	conv_loss6,�>����        )��P	�n�戙�A�*

	conv_loss�q�>�M�        )��P	�戙�A�*

	conv_loss3՘>u�        )��P	�ή戙�A�*

	conv_loss��>̩�        )��P	���戙�A�*

	conv_loss�&�>=��        )��P	�$�戙�A�*

	conv_loss9c�>	P�a        )��P	�N�戙�A�*

	conv_loss�@�>0��        )��P	)y�戙�A�*

	conv_loss�ŗ>s�        )��P	��戙�A�*

	conv_loss?�>r`Y        )��P	[ί戙�A�*

	conv_loss�5�>��p�        )��P	���戙�A�*

	conv_loss�ї>��A�        )��P	�"�戙�A�*

	conv_loss�Օ>��        )��P	�M�戙�A�*

	conv_loss0��>%p        )��P	@w�戙�A�*

	conv_losszӚ>��Z�        )��P	H��戙�A�*

	conv_loss���>[�6        )��P	ɰ戙�A�*

	conv_lossF��>ߐsa        )��P	q�戙�A�*

	conv_loss �>V<�        )��P	��戙�A�*

	conv_loss1�>�fL�        )��P	G�戙�A�*

	conv_loss�˕>'/�8        )��P	Op�戙�A�*

	conv_loss#x�>���h        )��P	��戙�A�*

	conv_loss���>�qh        )��P	Rñ戙�A�*

	conv_lossNZ�>��'D        )��P	��戙�A�*

	conv_lossԔ>�        )��P	L�戙�A�*

	conv_lossĄ�>�w�        )��P	@�戙�A�*

	conv_lossZ0�>��SS        )��P	�j�戙�A�*

	conv_loss���>�        )��P	���戙�A�*

	conv_lossD8�>S�ٯ        )��P	8��戙�A�*

	conv_loss��>L�i        )��P	x�戙�A�*

	conv_lossuE�>�7�        )��P	��戙�A�*

	conv_loss�S�>T��@        )��P	�;�戙�A�*

	conv_lossWF�>Q�        )��P	<f�戙�A�*

	conv_loss��>��P        )��P	_��戙�A�*

	conv_loss��>�r��        )��P	׼�戙�A�*

	conv_lossXf�>Q�2        )��P	{�戙�A�*

	conv_loss�l�>&��        )��P	"�戙�A�*

	conv_loss��>�{�        )��P	tL�戙�A�*

	conv_loss�>/��p        )��P	v�戙�A�*

	conv_loss�v�>�9��        )��P	t��戙�A�*

	conv_loss�D�>W�+�        )��P	�ʹ戙�A�*

	conv_loss�>�2{�        )��P	o��戙�A�*

	conv_lossU�>%�͹        )��P	� �戙�A�*

	conv_loss��>u���        )��P	=\�戙�A�*

	conv_loss�ƕ>�kI�        )��P	���戙�A�*

	conv_loss�<�>�n�d        )��P	�ĵ戙�A�*

	conv_lossތ�>V��        )��P	���戙�A�*

	conv_loss��>ޕz*        )��P	��戙�A�*

	conv_loss���>(���        )��P	�J�戙�A�*

	conv_loss&��>��        )��P	ku�戙�A�*

	conv_loss���>9��Y        )��P	̞�戙�A�*

	conv_loss�
�>�t{�        )��P	�Ѷ戙�A�*

	conv_lossw�>���        )��P	S��戙�A�*

	conv_lossL;�>B��5        )��P	�$�戙�A�*

	conv_losssc�>R��A        )��P	�R�戙�A�*

	conv_loss�j�>�i3W        )��P	D}�戙�A�*

	conv_loss;��>���        )��P	���戙�A�*

	conv_loss�q�>��-�        )��P	�ӷ戙�A�*

	conv_lossn��>�o��        )��P	6�戙�A�*

	conv_loss+��>:�k        )��P	�4�戙�A�*

	conv_loss��>;�S�        )��P	e�戙�A�*

	conv_lossqҔ>OH�W        )��P	C��戙�A�*

	conv_loss=q�>�C��        )��P	ɻ�戙�A�*

	conv_loss
X�>Xfx        )��P	��戙�A�*

	conv_loss�u�>��k        )��P	!�戙�A�*

	conv_lossEm�>���        )��P	u?�戙�A�*

	conv_lossCu�>���        )��P	�i�戙�A�*

	conv_loss��>1ŭ.        )��P	X��戙�A�*

	conv_loss�o�>}Si        )��P	���戙�A�*

	conv_loss7F�>	4�        )��P	s�戙�A�*

	conv_loss9��>.��        )��P	��戙�A�*

	conv_loss2;�>���        )��P	�:�戙�A�*

	conv_loss>��>A��0        )��P	4g�戙�A�*

	conv_loss�V�>1\�        )��P	I��戙�A�*

	conv_loss��>�E�        )��P	,��戙�A�*

	conv_loss��>��i�        )��P	�戙�A�*

	conv_loss�p�>V��        )��P	��戙�A�*

	conv_loss~ؒ>����        )��P	�?�戙�A�*

	conv_loss�"�>j�R�        )��P	5l�戙�A�*

	conv_loss;ۑ>|u�,        )��P	�戙�A�*

	conv_loss��>{�B�        )��P	�»戙�A�*

	conv_loss�#�>�Z�s        )��P	��戙�A�*

	conv_loss�/�>���=        )��P	;�戙�A�*

	conv_lossL�>�+��        )��P	MD�戙�A�*

	conv_loss�W�>7��        )��P	�q�戙�A�*

	conv_loss5��>0-        )��P	���戙�A�*

	conv_lossޖ�>V�\        )��P	G׼戙�A�*

	conv_loss���>���        )��P	 �戙�A�	*

	conv_lossU�>��        )��P	�)�戙�A�	*

	conv_loss���>����        )��P	�U�戙�A�	*

	conv_loss��>wz�        )��P	���戙�A�	*

	conv_loss�>ʘo        )��P	E��戙�A�	*

	conv_loss.�>�'�        )��P	_ս戙�A�	*

	conv_lossh�>�6�        )��P	��戙�A�	*

	conv_loss>��>��I        )��P	86�戙�A�	*

	conv_loss��>�3}�        )��P	Ta�戙�A�	*

	conv_lossu7�>h�V        )��P	q��戙�A�	*

	conv_loss��>�
��        )��P	׻�戙�A�	*

	conv_loss4Ԕ>��T        )��P	j�戙�A�	*

	conv_loss5T�>�jA        )��P	K�戙�A�	*

	conv_lossgn�>T{.        )��P	?F�戙�A�	*

	conv_loss벖>�>N        )��P	�q�戙�A�	*

	conv_lossH̏>mWYp        )��P	R��戙�A�	*

	conv_loss�ٔ>��S        )��P	X̿戙�A�	*

	conv_loss=�>���^        )��P	���戙�A�	*

	conv_loss=��>���        )��P	t#�戙�A�	*

	conv_loss�P�>_,e        )��P	1M�戙�A�	*

	conv_loss�0�>��}        )��P	�x�戙�A�	*

	conv_loss��>�OvG        )��P	I��戙�A�	*

	conv_loss�>!��        )��P	R��戙�A�	*

	conv_loss
��>���        )��P	���戙�A�	*

	conv_loss%��>L*��        )��P	�(�戙�A�	*

	conv_lossm�>J��M        )��P	T�戙�A�	*

	conv_losst�>?-�        )��P	B~�戙�A�	*

	conv_loss�]�>V)'        )��P	���戙�A�	*

	conv_loss�H�>��G        )��P	��戙�A�	*

	conv_lossZ5�>t�        )��P	��戙�A�	*

	conv_loss�<�>�N        )��P	�3�戙�A�	*

	conv_lossk�>J�        )��P	"e�戙�A�	*

	conv_loss��>i�F         )��P	���戙�A�	*

	conv_loss�ؑ>�w��        )��P	���戙�A�	*

	conv_loss�Ĕ>k ��        )��P	���戙�A�	*

	conv_loss���>�9��        )��P	��戙�A�	*

	conv_loss�{�>�Ce~        )��P	�>�戙�A�	*

	conv_lossU��>�衬        )��P	�h�戙�A�	*

	conv_loss�]�>�-�j        )��P	���戙�A�	*

	conv_lossu��>fժ        )��P	k��戙�A�	*

	conv_loss�Ò>��kd        )��P	���戙�A�	*

	conv_losspf�>=־        )��P	]�戙�A�	*

	conv_lossb�>���        )��P	3;�戙�A�	*

	conv_lossT�>d7�w        )��P	�g�戙�A�	*

	conv_loss襒>z�n�        )��P	đ�戙�A�	*

	conv_loss���>M3�O        )��P	n��戙�A�	*

	conv_loss��>�6=        )��P	���戙�A�	*

	conv_loss�Ϗ>(�8        )��P	��戙�A�	*

	conv_lossܓ�>����        )��P	9�戙�A�	*

	conv_loss"!�>ԷH�        )��P	���戙�A�	*

	conv_loss��>rC        )��P	R��戙�A�	*

	conv_loss%.�>:�x$        )��P	���戙�A�	*

	conv_loss�j�>���        )��P	�"�戙�A�	*

	conv_loss_`�>�I��        )��P	�N�戙�A�	*

	conv_loss�v�>��#-        )��P	�y�戙�A�	*

	conv_lossk8�>��0�        )��P	i��戙�A�	*

	conv_loss2B�>�S��        )��P	���戙�A�	*

	conv_loss�>�;�        )��P	`��戙�A�	*

	conv_loss?��>K�6�        )��P	�(�戙�A�	*

	conv_loss5c�>��]        )��P	Nd�戙�A�	*

	conv_loss���>��'        )��P	Z��戙�A�	*

	conv_loss'̐>!���        )��P	���戙�A�	*

	conv_loss��>��-        )��P	���戙�A�	*

	conv_loss�>�ԟ�        )��P	��戙�A�	*

	conv_loss���>n!Pp        )��P	�7�戙�A�	*

	conv_lossx�>^���        )��P	Xj�戙�A�	*

	conv_loss���>��c        )��P	 ��戙�A�	*

	conv_loss6�>�fe�        )��P	h��戙�A�	*

	conv_loss�+�>SaB�        )��P	#��戙�A�	*

	conv_loss�>�U        )��P	� �戙�A�	*

	conv_loss>ޒ>Q���        )��P	YL�戙�A�	*

	conv_lossp�>NG�        )��P	hv�戙�A�	*

	conv_lossX*�>����        )��P	���戙�A�	*

	conv_loss���>b^��        )��P	F��戙�A�	*

	conv_loss�Ԕ>:�T�        )��P	x	�戙�A�	*

	conv_lossw��>M�;        )��P	i6�戙�A�	*

	conv_loss*k�>CN�f        )��P	�b�戙�A�	*

	conv_loss�>�c�        )��P	���戙�A�	*

	conv_lossN��>�Jp]        )��P	��戙�A�	*

	conv_loss>��:�        )��P	���戙�A�	*

	conv_loss�`�>�N��        )��P	��戙�A�	*

	conv_loss�V�>-Mlm        )��P	>�戙�A�	*

	conv_loss 0�>��_�        )��P	�k�戙�A�	*

	conv_loss�T�> ��        )��P	��戙�A�	*

	conv_loss9p�>��        )��P	���戙�A�	*

	conv_lossѤ�>܉�(        )��P	���戙�A�	*

	conv_lossp��>A��        )��P	W�戙�A�	*

	conv_loss"�>`E[        )��P	�B�戙�A�	*

	conv_loss���>�G�x        )��P	�m�戙�A�	*

	conv_loss��>��U        )��P	@��戙�A�	*

	conv_loss�܋>9g�g        )��P	���戙�A�	*

	conv_loss���>	;N        )��P	6��戙�A�	*

	conv_loss�)�>'X        )��P	m�戙�A�	*

	conv_loss�y�>\ʒX        )��P	@D�戙�A�	*

	conv_loss�\�>Fc�        )��P	!o�戙�A�	*

	conv_losseE�>p�i�        )��P	���戙�A�	*

	conv_lossa}�>���        )��P	���戙�A�	*

	conv_lossqn�>��~        )��P	=��戙�A�	*

	conv_loss�F�>XHr        )��P	��戙�A�	*

	conv_loss�Ǎ>q�-        )��P	�X�戙�A�	*

	conv_lossh��>���        )��P	��戙�A�	*

	conv_loss�"�>:��Q        )��P	��戙�A�	*

	conv_loss1S�>�$�        )��P	���戙�A�	*

	conv_loss%�>^��        )��P	��戙�A�	*

	conv_lossw��>`�        )��P	aB�戙�A�	*

	conv_loss���>ke�        )��P	�o�戙�A�	*

	conv_loss���>��W�        )��P	���戙�A�	*

	conv_loss���>����        )��P	��戙�A�	*

	conv_loss��>���        )��P	T �戙�A�	*

	conv_loss���>?�X�        )��P	y0�戙�A�	*

	conv_loss܊�>%�A�        )��P	d�戙�A�	*

	conv_loss*�>1�s�        )��P	��戙�A�	*

	conv_loss��>d�ƾ        )��P	���戙�A�	*

	conv_loss��>�X        )��P	$��戙�A�	*

	conv_loss`g�>��1N        )��P	��戙�A�	*

	conv_loss�>�Bu�        )��P	�J�戙�A�	*

	conv_loss�D�>^��        )��P	;s�戙�A�	*

	conv_loss�T�>��Z�        )��P	���戙�A�	*

	conv_lossOQ�>>���        )��P	$��戙�A�	*

	conv_loss�r�>���        )��P	���戙�A�	*

	conv_loss���>�\�-        )��P	T�戙�A�	*

	conv_loss5�>���        )��P	�H�戙�A�	*

	conv_loss�{�>`�d        )��P	�s�戙�A�	*

	conv_loss=��>�<d        )��P	̝�戙�A�	*

	conv_loss�׆> �        )��P	���戙�A�	*

	conv_loss��>�N/        )��P	{��戙�A�	*

	conv_lossoA�>��6        )��P	�*�戙�A�	*

	conv_loss��>�}	n        )��P	WT�戙�A�	*

	conv_loss|1�>�r;�        )��P	3~�戙�A�
*

	conv_lossh=�>N�        )��P	��戙�A�
*

	conv_lossV��>UD�        )��P	!��戙�A�
*

	conv_losssb�>�/b{        )��P	. �戙�A�
*

	conv_loss��>���^        )��P	�*�戙�A�
*

	conv_loss���>�i��        )��P	OT�戙�A�
*

	conv_loss���>ȭ=�        )��P	H�戙�A�
*

	conv_loss�g�>I�K-        )��P	P��戙�A�
*

	conv_lossh��>q�&        )��P	���戙�A�
*

	conv_lossӈ�>A��        )��P	�戙�A�
*

	conv_loss�>��]e        )��P	6.�戙�A�
*

	conv_lossэ�>�Ķ�        )��P	�[�戙�A�
*

	conv_loss�L�>���        )��P	��戙�A�
*

	conv_loss���>|��J        )��P	z��戙�A�
*

	conv_loss>ɉ>�^�        )��P	d��戙�A�
*

	conv_loss�m�>kX~'        )��P	��戙�A�
*

	conv_lossOU�>�]6y        )��P	�0�戙�A�
*

	conv_loss 8�>z��        )��P	�Y�戙�A�
*

	conv_loss��>#!�D        )��P	���戙�A�
*

	conv_loss/ي>�@        )��P	ʮ�戙�A�
*

	conv_loss�>�a �        )��P	���戙�A�
*

	conv_lossd1�>��        )��P	c�戙�A�
*

	conv_loss��>���        )��P	�>�戙�A�
*

	conv_loss��>#�e�        )��P	�i�戙�A�
*

	conv_lossw�>:%0        )��P	���戙�A�
*

	conv_loss���>����        )��P	���戙�A�
*

	conv_loss[͋>����        )��P	���戙�A�
*

	conv_lossvъ>��H�        )��P	x�戙�A�
*

	conv_loss�݇>�e��        )��P	�>�戙�A�
*

	conv_loss���>ӛ��        )��P	jl�戙�A�
*

	conv_loss:b�>��C        )��P	{��戙�A�
*

	conv_loss���>?���        )��P	���戙�A�
*

	conv_loss	ĉ>wm�k        )��P	���戙�A�
*

	conv_loss�_�>��E        )��P	�#�戙�A�
*

	conv_lossiM�>�.�        )��P	-M�戙�A�
*

	conv_lossː�>j�'!        )��P	�z�戙�A�
*

	conv_loss�>��        )��P	���戙�A�
*

	conv_loss��>�9�E        )��P	V��戙�A�
*

	conv_lossK�>���        )��P	i�戙�A�
*

	conv_loss�m�>6��#        )��P	,9�戙�A�
*

	conv_loss��>	 �        )��P	Th�戙�A�
*

	conv_loss=b�>���        )��P	Z��戙�A�
*

	conv_lossvI�>�sTb        )��P	0��戙�A�
*

	conv_loss��>@��        )��P	���戙�A�
*

	conv_loss��>%��E        )��P	��戙�A�
*

	conv_loss���>�۠�        )��P	B�戙�A�
*

	conv_lossyK�>��        )��P	�j�戙�A�
*

	conv_loss2�>����        )��P	0��戙�A�
*

	conv_loss��>��i�        )��P	N��戙�A�
*

	conv_lossn�>���        )��P	,��戙�A�
*

	conv_loss�h�>�SdC        )��P	��戙�A�
*

	conv_loss��>1�A        )��P	o=�戙�A�
*

	conv_loss�3�>���]        )��P	�h�戙�A�
*

	conv_loss���>���        )��P	���戙�A�
*

	conv_loss�6�>A�,�        )��P	ƾ�戙�A�
*

	conv_loss?��>��z�        )��P	0��戙�A�
*

	conv_loss��>�rf�        )��P	N�戙�A�
*

	conv_lossW��>SB�o        )��P	�?�戙�A�
*

	conv_lossM�>E�-�        )��P	�l�戙�A�
*

	conv_loss(�>4�Qo        )��P	B��戙�A�
*

	conv_loss�t�>{�        )��P	���戙�A�
*

	conv_loss���>3A��        )��P	D��戙�A�
*

	conv_lossp�>�O@        )��P	��戙�A�
*

	conv_loss�m�>0L��        )��P	�C�戙�A�
*

	conv_loss��>�O�*        )��P	�l�戙�A�
*

	conv_lossu�>G��Z        )��P	���戙�A�
*

	conv_loss��>2�        )��P	���戙�A�
*

	conv_loss՚�>JgD        )��P	,��戙�A�
*

	conv_loss'�>��zn        )��P	<�戙�A�
*

	conv_loss �>f���        )��P	�D�戙�A�
*

	conv_loss�w�>b�r        )��P	?p�戙�A�
*

	conv_loss���> V�e        )��P	��戙�A�
*

	conv_lossP��>wqLR        )��P	���戙�A�
*

	conv_loss=1�>���        )��P	��戙�A�
*

	conv_loss�p�>o�N�        )��P	M-�戙�A�
*

	conv_lossT.�>�Y~)        )��P	�X�戙�A�
*

	conv_loss���>C�        )��P	���戙�A�
*

	conv_loss#d�>��!�        )��P	g��戙�A�
*

	conv_loss=��>��(�        )��P	���戙�A�
*

	conv_lossfҋ>%5n�        )��P	[�戙�A�
*

	conv_losss[�>����        )��P	!9�戙�A�
*

	conv_lossF"�>��i        )��P	�g�戙�A�
*

	conv_lossR4�>��@        )��P	���戙�A�
*

	conv_loss���>or4�        )��P	��戙�A�
*

	conv_lossc҈>��        )��P	"��戙�A�
*

	conv_loss2L�>LPF�        )��P	�-�戙�A�
*

	conv_loss�>�қ�        )��P	�X�戙�A�
*

	conv_loss��>�31�        )��P	���戙�A�
*

	conv_loss.�>��ic        )��P	���戙�A�
*

	conv_lossi҄>f�        )��P	q��戙�A�
*

	conv_loss�7�>2P-�        )��P	 �戙�A�
*

	conv_loss�y�>�q�J        )��P	F.�戙�A�
*

	conv_loss\Ј>uy�        )��P	�Y�戙�A�
*

	conv_loss�U�>I��$        )��P	y��戙�A�
*

	conv_lossM�>�6��        )��P	���戙�A�
*

	conv_lossW��>�%+L        )��P	��戙�A�
*

	conv_loss�J�>wH�        )��P	�戙�A�
*

	conv_loss$�>�u��        )��P	�1�戙�A�
*

	conv_loss_ފ>��	        )��P	l[�戙�A�
*

	conv_loss�}�>=�        )��P	��戙�A�
*

	conv_loss4�>�	�%        )��P	}��戙�A�
*

	conv_loss�0�>	|��        )��P	��戙�A�
*

	conv_loss���>'�g�        )��P	��戙�A�
*

	conv_loss�ky>��        )��P	8=�戙�A�
*

	conv_lossV��>�5�        )��P	l�戙�A�
*

	conv_loss3��>�+�        )��P	���戙�A�
*

	conv_loss�p�>�-��        )��P	���戙�A�
*

	conv_loss�]�>��}M        )��P	���戙�A�
*

	conv_lossї�>)&x[        )��P	��戙�A�
*

	conv_loss���>��h        )��P	�F�戙�A�
*

	conv_loss���>�_t        )��P	�s�戙�A�
*

	conv_loss�܄>���        )��P	���戙�A�
*

	conv_loss"|�>���        )��P	0��戙�A�
*

	conv_loss1 �>GeQ+        )��P	���戙�A�
*

	conv_loss-2�>OjE:        )��P	.3�戙�A�
*

	conv_loss�ʆ>��V�        )��P	�_�戙�A�
*

	conv_losss�>|0�         )��P	���戙�A�
*

	conv_loss���>�w�        )��P	���戙�A�
*

	conv_loss�r�>i��G        )��P	���戙�A�
*

	conv_loss��>Ϩ�        )��P	&�戙�A�
*

	conv_lossF�>��S�        )��P	�8�戙�A�
*

	conv_loss�>Ϩ��        )��P	m��戙�A�
*

	conv_loss�0�>�`��        )��P	���戙�A�
*

	conv_loss��>d��        )��P	$��戙�A�
*

	conv_loss1i�>��        )��P	%!�戙�A�
*

	conv_loss�>區        )��P	T�戙�A�
*

	conv_loss���>}N�x        )��P	�~�戙�A�
*

	conv_loss��>;�#�        )��P	3��戙�A�
*

	conv_loss7!�>�gm�        )��P	A��戙�A�*

	conv_loss<��>V�A�        )��P	���戙�A�*

	conv_loss��>���%        )��P	�'�戙�A�*

	conv_loss�ց>�.��        )��P	�]�戙�A�*

	conv_loss���>��        )��P	W��戙�A�*

	conv_loss�u�>��:�        )��P	��戙�A�*

	conv_loss+�>��        )��P	���戙�A�*

	conv_loss�>hU �        )��P	��戙�A�*

	conv_lossߺ�>�N��        )��P	*;�戙�A�*

	conv_loss�,�>b&?        )��P	�n�戙�A�*

	conv_loss*G�>�b�        )��P	f��戙�A�*

	conv_lossJ��>���        )��P	���戙�A�*

	conv_lossRǁ>����        )��P	���戙�A�*

	conv_loss.x�>;~@        )��P	��戙�A�*

	conv_loss���>�G        )��P	�E�戙�A�*

	conv_loss�7�>��H�        )��P	�n�戙�A�*

	conv_loss�d�>-�	�        )��P	���戙�A�*

	conv_lossۅ�>���        )��P	��戙�A�*

	conv_loss��>�q�t        )��P	���戙�A�*

	conv_loss��>0�G�        )��P	�戙�A�*

	conv_loss͈>d���        )��P	�H�戙�A�*

	conv_loss��>��-        )��P	�p�戙�A�*

	conv_lossۄ>��6        )��P	���戙�A�*

	conv_loss��>ic�{        )��P	8��戙�A�*

	conv_lossw��>a��>        )��P	B��戙�A�*

	conv_loss���>���        )��P	��戙�A�*

	conv_loss�'�>�$�t        )��P	�E�戙�A�*

	conv_lossG,�>dTj�        )��P	�p�戙�A�*

	conv_loss�>�u��        )��P	3��戙�A�*

	conv_loss�}>[`{�        )��P	���戙�A�*

	conv_loss�(�>E
        )��P	���戙�A�*

	conv_lossD�}>�.H        )��P	��戙�A�*

	conv_loss���>��O�        )��P	GF�戙�A�*

	conv_loss�h}>��/w        )��P	)p�戙�A�*

	conv_loss�~�>?
�N        )��P	��戙�A�*

	conv_loss�k>U���        )��P	1��戙�A�*

	conv_lossmԁ>/>�t        )��P	!��戙�A�*

	conv_loss�a�>�,��        )��P	�戙�A�*

	conv_lossi��>��ګ        )��P	�B�戙�A�*

	conv_loss��>�^�        )��P	"m�戙�A�*

	conv_lossϋ�>��{�        )��P	��戙�A�*

	conv_loss��>k�t&        )��P	���戙�A�*

	conv_loss���>$��        )��P	���戙�A�*

	conv_lossrW�>�)ؾ        )��P	�&�戙�A�*

	conv_loss>7�> ��N        )��P	�R�戙�A�*

	conv_loss띁>p���        )��P	~}�戙�A�*

	conv_lossX��>A,�        )��P	;��戙�A�*

	conv_loss��z>>��"        )��P	A��戙�A�*

	conv_loss���>���        )��P	��戙�A�*

	conv_loss�)}>k�۟        )��P	�+�戙�A�*

	conv_loss(7y>ۈ,�        )��P	�V�戙�A�*

	conv_loss!��>��$}        )��P	M��戙�A�*

	conv_loss��|>k�ߪ        )��P	���戙�A�*

	conv_losso��>bz"        )��P	} �戙�A�*

	conv_loss �>=e)A        )��P	�+�戙�A�*

	conv_loss���>'�`�        )��P	 V�戙�A�*

	conv_loss��>J��        )��P	U��戙�A�*

	conv_loss�G}>29��        )��P	h��戙�A�*

	conv_loss
��>��        )��P	���戙�A�*

	conv_lossrÁ>�*�f        )��P	�
�戙�A�*

	conv_loss��{>��        )��P	�4�戙�A�*

	conv_losse!�>���y        )��P	_�戙�A�*

	conv_loss���>�?��        )��P	���戙�A�*

	conv_loss���>��        )��P	E��戙�A�*

	conv_loss|q~>\�Ƅ        )��P	���戙�A�*

	conv_loss��>�h�        )��P	��戙�A�*

	conv_lossӁ>��ш        )��P	�C�戙�A�*

	conv_loss�N�>�        )��P	Mp�戙�A�*

	conv_loss�Tz>Q��(        )��P	���戙�A�*

	conv_loss���>����        )��P	��戙�A�*

	conv_loss��}>���        )��P	O��戙�A�*

	conv_loss]�>
uH�        )��P	�戙�A�*

	conv_loss��>�*�        )��P	�G�戙�A�*

	conv_loss
y>�t�        )��P	q�戙�A�*

	conv_loss
�y>�~��        )��P	ܛ�戙�A�*

	conv_loss���>1�8        )��P	���戙�A�*

	conv_loss�T�>E��n        )��P	���戙�A�*

	conv_loss)�>� �I        )��P	X�戙�A�*

	conv_loss�݅>)d�%        )��P	UB�戙�A�*

	conv_loss�ہ>�$-        )��P	�k�戙�A�*

	conv_loss���>�̗        )��P	��戙�A�*

	conv_loss!yt>~L��        )��P	z��戙�A�*

	conv_loss��|>p�n�        )��P	��戙�A�*

	conv_lossvI|>5�9�        )��P	��戙�A�*

	conv_loss�:�>lG        )��P	GA�戙�A�*

	conv_lossڞx>3�!�        )��P	�k�戙�A�*

	conv_loss/*�>U2$�        )��P	 ��戙�A�*

	conv_loss�;|>�I�Z        )��P	���戙�A�*

	conv_loss�ar>㉞�        )��P	���戙�A�*

	conv_loss^�~>�A<v        )��P	��戙�A�*

	conv_loss�4y>SGÒ        )��P	bB�戙�A�*

	conv_loss`�>"�)�        )��P	�l�戙�A�*

	conv_lossr��>�〈        )��P	u��戙�A�*

	conv_loss�x>W���        )��P	�* 爙�A�*

	conv_loss2>�js&        )��P	�S 爙�A�*

	conv_loss*T�>��        )��P	�~ 爙�A�*

	conv_loss�&r>�!��        )��P	� 爙�A�*

	conv_loss�/�>'�        )��P	�� 爙�A�*

	conv_loss��~>	�        )��P	�	爙�A�*

	conv_loss��v>W!�        )��P	+8爙�A�*

	conv_lossln�>Y���        )��P	 h爙�A�*

	conv_loss	L�>��M�        )��P	��爙�A�*

	conv_loss(>[�d�        )��P	:�爙�A�*

	conv_loss�"x>�{�        )��P	
�爙�A�*

	conv_loss:�>Ԇ2�        )��P	1爙�A�*

	conv_lossH�z>��        )��P	a;爙�A�*

	conv_lossu~>b-��        )��P	ce爙�A�*

	conv_loss�z>        )��P	�爙�A�*

	conv_loss|>��2�        )��P	��爙�A�*

	conv_loss�^x>ԗMW        )��P	��爙�A�*

	conv_lossM=s>=\��        )��P	爙�A�*

	conv_lossw>O�(�        )��P	?>爙�A�*

	conv_loss� �>rkn�        )��P	�e爙�A�*

	conv_lossыu>b7'�        )��P	��爙�A�*

	conv_lossҝ�>�K�x        )��P	�爙�A�*

	conv_loss^܀>Y�׵        )��P	��爙�A�*

	conv_lossA�q>^V�        )��P	^爙�A�*

	conv_loss��}>��1        )��P	uC爙�A�*

	conv_loss>5}>��        )��P	�j爙�A�*

	conv_loss���>փA*        )��P	��爙�A�*

	conv_loss�4~>ӎXR        )��P	i�爙�A�*

	conv_lossh�y>��*m        )��P	 �爙�A�*

	conv_lossbq>�B�i        )��P	�爙�A�*

	conv_loss,kx>r�$L        )��P	�6爙�A�*

	conv_losshv>�۸{        )��P	�^爙�A�*

	conv_loss�(v>R'�!        )��P	��爙�A�*

	conv_loss#�x>�e<%        )��P	��爙�A�*

	conv_loss�&y>)�0        )��P	��爙�A�*

	conv_loss��>��Ij        )��P	*爙�A�*

	conv_lossZw>���|        )��P	+爙�A�*

	conv_lossbx>�:OT        )��P	�S爙�A�*

	conv_loss6�s>�F4l        )��P	�|爙�A�*

	conv_loss t>V�8�        )��P	�爙�A�*

	conv_loss�{>nǫ�        )��P	Y�爙�A�*

	conv_loss.�x>L_        )��P	��爙�A�*

	conv_loss�u>���A        )��P	�爙�A�*

	conv_loss��u>t;��        )��P	�F爙�A�*

	conv_loss>�~>��h�        )��P	^o爙�A�*

	conv_lossZ�}>�lh        )��P	^�爙�A�*

	conv_loss��{>�[�        )��P	��爙�A�*

	conv_loss��u>3�S�        )��P	0�爙�A�*

	conv_loss�1s>E�        )��P	爙�A�*

	conv_lossHk�>�j�        )��P	B爙�A�*

	conv_loss_�q>L�f        )��P	z爙�A�*

	conv_lossrm>�k�m        )��P	P�爙�A�*

	conv_loss��m>����        )��P	��爙�A�*

	conv_loss�l>��N        )��P	�爙�A�*

	conv_loss�m>�X�        )��P	�	爙�A�*

	conv_loss�Lv>�:�        )��P	�H	爙�A�*

	conv_lossVZ|>�o0�        )��P	%q	爙�A�*

	conv_lossM_m>{#]�        )��P	F�	爙�A�*

	conv_loss�xk>��B        )��P	��	爙�A�*

	conv_lossz�p>��        )��P	m�	爙�A�*

	conv_loss�Rm>�:^        )��P	�
爙�A�*

	conv_lossU�l>Z]�C        )��P	�G
爙�A�*

	conv_loss���>Hc�T        )��P	9q
爙�A�*

	conv_loss�~>�VP�        )��P	ؚ
爙�A�*

	conv_loss��p>�ۿ        )��P	<�
爙�A�*

	conv_loss��p>��\        )��P	>�
爙�A�*

	conv_lossi7y>G�?�        )��P	+爙�A�*

	conv_loss�7y>Y�        )��P	�P爙�A�*

	conv_loss��{>�t�9        )��P	�~爙�A�*

	conv_lossU�q>�X��        )��P	Ԫ爙�A�*

	conv_loss�Jv>�X6�        )��P	�爙�A�*

	conv_loss��r>���$        )��P	��爙�A�*

	conv_loss��r>f��        )��P	<*爙�A�*

	conv_loss��{>��G�        )��P	�Z爙�A�*

	conv_loss�j>���        )��P	́爙�A�*

	conv_loss�Bs>]�h�        )��P	!�爙�A�*

	conv_lossd�e>[#�>        )��P	��爙�A�*

	conv_loss�vq>�c	�        )��P	��爙�A�*

	conv_lossprk>���        )��P	�'爙�A�*

	conv_loss�k>�\        )��P	�S爙�A�*

	conv_loss&v>*$W;        )��P	
~爙�A�*

	conv_loss�:w>���        )��P	s�爙�A�*

	conv_lossh0t>�JNu        )��P	5�爙�A�*

	conv_lossÞu>I�I        )��P	�爙�A�*

	conv_loss�x>&���        )��P	95爙�A�*

	conv_loss�(l>���"        )��P	�`爙�A�*

	conv_loss�Mr>��6        )��P	i�爙�A�*

	conv_loss Ah>I�Z        )��P	r�爙�A�*

	conv_lossW!}>,˛#        )��P	-�爙�A�*

	conv_loss=[i>Θ        )��P	�爙�A�*

	conv_loss^Ch>>j�J        )��P	W-爙�A�*

	conv_loss/�z>#�        )��P	�U爙�A�*

	conv_loss��r>����        )��P	,~爙�A�*

	conv_loss%"~>�[<�        )��P	��爙�A�*

	conv_loss=^k>��;        )��P	e�爙�A�*

	conv_loss��{>�{�        )��P	��爙�A�*

	conv_lossb�i>��E�        )��P	�!爙�A�*

	conv_loss�j>�U|9        )��P	�J爙�A�*

	conv_lossa�n>2.�        )��P	us爙�A�*

	conv_lossWs>���P        )��P	��爙�A�*

	conv_loss=?h>V$         )��P	x�爙�A�*

	conv_loss�p>[�         )��P	b&爙�A�*

	conv_loss*�m>����        )��P	`O爙�A�*

	conv_loss�kg>ҽye        )��P	�w爙�A�*

	conv_lossb�k>�BM^        )��P	e�爙�A�*

	conv_loss5Zb>v~��        )��P	��爙�A�*

	conv_loss�!b>�O�        )��P	��爙�A�*

	conv_losss�q>��k        )��P	�爙�A�*

	conv_loss��g>�EE�        )��P	�G爙�A�*

	conv_loss��l>h9�Y        )��P	�}爙�A�*

	conv_lossSxg>��K�        )��P	1�爙�A�*

	conv_loss�m>`��        )��P	��爙�A�*

	conv_loss��h>��,;        )��P	��爙�A�*

	conv_loss[rv>�f��        )��P	�(爙�A�*

	conv_lossS�e>U��/        )��P	�P爙�A�*

	conv_loss��h>R��        )��P	�爙�A�*

	conv_loss��a>�l��        )��P	ը爙�A�*

	conv_loss�E~>g�\o        )��P	S�爙�A�*

	conv_loss�~>qa�        )��P	��爙�A�*

	conv_loss�Xe> ��S        )��P	�'爙�A�*

	conv_lossa�q>yy��        )��P	'X爙�A�*

	conv_lossZ/v>�7,�        )��P	��爙�A�*

	conv_lossog>4��        )��P	��爙�A�*

	conv_loss=�^>M���        )��P	��爙�A�*

	conv_lossf~t>�?)        )��P	P爙�A�*

	conv_loss�Qh>SĶ        )��P	-爙�A�*

	conv_loss@�j>�C�        )��P	�W爙�A�*

	conv_loss��[>�s,        )��P	�爙�A�*

	conv_loss�ah>4��        )��P	��爙�A�*

	conv_loss��o>�p�a        )��P	C�爙�A�*

	conv_loss0n>�M!        )��P	j爙�A�*

	conv_lossLg>y��        )��P	=,爙�A�*

	conv_loss�4_>T`��        )��P	�U爙�A�*

	conv_loss�w_>V��        )��P	�爙�A�*

	conv_lossF	x>����        )��P	�爙�A�*

	conv_losssg>ߛǟ        )��P	N�爙�A�*

	conv_loss�S>S��        )��P	��爙�A�*

	conv_loss�u>���`        )��P	G&爙�A�*

	conv_loss�P`>&w�=        )��P	�O爙�A�*

	conv_lossF^a>��n�        )��P	�x爙�A�*

	conv_loss��l>&��        )��P	��爙�A�*

	conv_loss�g>%�k        )��P	��爙�A�*

	conv_loss_�j>���        )��P	��爙�A�*

	conv_loss&�g>;3��        )��P	�爙�A�*

	conv_loss:Wh>ʢ�(        )��P	�E爙�A�*

	conv_loss�j>(j,�        )��P	 n爙�A�*

	conv_lossy�m>�^-�        )��P	��爙�A�*

	conv_loss@"g>i��        )��P	��爙�A�*

	conv_lossX�m>�7P�        )��P	��爙�A�*

	conv_loss�0k>n�<�        )��P	g爙�A�*

	conv_loss��f>Z$g        )��P	�N爙�A�*

	conv_loss;Oc>C�p;        )��P	~w爙�A�*

	conv_loss��^>����        )��P	̡爙�A�*

	conv_loss�#e>A\P        )��P	��爙�A�*

	conv_lossxc>�JΡ        )��P	��爙�A�*

	conv_lossQ�e>!�1#        )��P	o爙�A�*

	conv_lossp�W>����        )��P	�G爙�A�*

	conv_lossr�d>A�]        )��P	�p爙�A�*

	conv_loss�[>���        )��P	�爙�A�*

	conv_lossۡg><�V�        )��P	_�爙�A�*

	conv_lossN�l>ރxC        )��P	l�爙�A�*

	conv_loss�Uh>vϦ"        )��P	�'爙�A�*

	conv_loss�fk>\X�        )��P	U爙�A�*

	conv_lossdd>^�        )��P	^�爙�A�*

	conv_loss�[[>.��|        )��P	л爙�A�*

	conv_loss$h>ْg)        )��P	�爙�A�*

	conv_losso�j>��        )��P	�爙�A�*

	conv_loss�=b>�0�        )��P	 L爙�A�*

	conv_loss53b>�MDh        )��P	jy爙�A�*

	conv_loss��c>]���        )��P	>�爙�A�*

	conv_loss3Q_>�}X�        )��P	�爙�A�*

	conv_lossi`>�.�(        )��P	��爙�A�*

	conv_loss��S>DP"        )��P	,爙�A�*

	conv_lossic>f�t}        )��P	n[爙�A�*

	conv_loss7�_>�p        )��P	��爙�A�*

	conv_lossߌn>9S��        )��P	�爙�A�*

	conv_loss��e>Ti        )��P	��爙�A�*

	conv_loss��n>�j�        )��P	$	爙�A�*

	conv_loss��p>=O�        )��P	c4爙�A�*

	conv_lossΈ^>�c�        )��P	Xb爙�A�*

	conv_lossϐ\>gZ��        )��P	l�爙�A�*

	conv_loss#�g>�W�M        )��P	��爙�A�*

	conv_loss��U>��!        )��P	 �爙�A�*

	conv_loss��]>:�ZU        )��P	1 爙�A�*

	conv_loss�&\>�K�        )��P	�> 爙�A�*

	conv_loss�4f>���)        )��P	�k 爙�A�*

	conv_loss��f>L�G�        )��P	b� 爙�A�*

	conv_loss�[t>���!        )��P	� 爙�A�*

	conv_loss�da>��        )��P	h� 爙�A�*

	conv_loss�a>�&i�        )��P	
!爙�A�*

	conv_loss.f>|4�        )��P	'K!爙�A�*

	conv_loss�1d>-��        )��P	v!爙�A�*

	conv_loss8Y>�;5^        )��P	ޡ!爙�A�*

	conv_loss;Y>�E�k        )��P	��!爙�A�*

	conv_loss�e>j        )��P	e�!爙�A�*

	conv_loss��g>c6�)        )��P	&"爙�A�*

	conv_loss��q>���|        )��P	�Q"爙�A�*

	conv_loss��i>
K        )��P	�}"爙�A�*

	conv_loss��\>Ǳ�M        )��P	��"爙�A�*

	conv_lossu�^>�c7        )��P	\�"爙�A�*

	conv_loss�/b>��R�        )��P	�#爙�A�*

	conv_loss�I`>�a�        )��P	�;#爙�A�*

	conv_loss��_>]��        )��P	�f#爙�A�*

	conv_loss͵`>!�        )��P	�#爙�A�*

	conv_loss�$n>v�        )��P	��#爙�A�*

	conv_lossc�^>1**V        )��P	�#爙�A�*

	conv_lossU�R>۳��        )��P	�"$爙�A�*

	conv_loss�`>3�E        )��P	�M$爙�A�*

	conv_loss��s>]�%�        )��P	�}$爙�A�*

	conv_lossF�_>9�^�        )��P	{�$爙�A�*

	conv_lossV�d>0��d        )��P	�$爙�A�*

	conv_loss�>t>�FlU        )��P	�%爙�A�*

	conv_lossl�`>�9�        )��P	�C%爙�A�*

	conv_lossѮ_>w�A        )��P	�n%爙�A�*

	conv_lossN�K>Nu�        )��P	ߜ%爙�A�*

	conv_loss-4Y>�A        )��P	�%爙�A�*

	conv_loss
a>Q�:        )��P	-�%爙�A�*

	conv_loss%JV>�QP        )��P	�*&爙�A�*

	conv_loss��\>�~        )��P	qX&爙�A�*

	conv_loss.�Y>eB/        )��P	��&爙�A�*

	conv_loss��i>��        )��P	ǲ&爙�A�*

	conv_loss�-Z>^�P�        )��P	I�&爙�A�*

	conv_loss�'^>�4�/        )��P	A'爙�A�*

	conv_loss�^>�q%        )��P	A='爙�A�*

	conv_loss��]>�Y        )��P	Rh'爙�A�*

	conv_loss��f>u�Bt        )��P	�'爙�A�*

	conv_loss�o\>�SU�        )��P	��'爙�A�*

	conv_loss4JV>_�'�        )��P	��'爙�A�*

	conv_loss�zZ>'eб        )��P	y(爙�A�*

	conv_loss@0_>�N,m        )��P	�@(爙�A�*

	conv_loss�c>P;ڝ        )��P	�k(爙�A�*

	conv_lossHI>M�{        )��P	1�(爙�A�*

	conv_lossZwZ>Z��s        )��P	��(爙�A�*

	conv_loss)�]>�m�        )��P	��(爙�A�*

	conv_loss�Y>���        )��P	�!)爙�A�*

	conv_loss,Z>۲��        )��P	�K)爙�A�*

	conv_loss2KY>�t��        )��P	^v)爙�A�*

	conv_loss�Cc>b[�        )��P	e�)爙�A�*

	conv_loss�`Z> ��        )��P	��)爙�A�*

	conv_loss,�a>#q�        )��P	6�)爙�A�*

	conv_loss�Z>z6�5        )��P	�$*爙�A�*

	conv_loss�=Z>)a<c        )��P	�O*爙�A�*

	conv_lossm�Z>�Ea�        )��P	0z*爙�A�*

	conv_loss��^>�)��        )��P	t�*爙�A�*

	conv_loss`�W>A\r         )��P	��*爙�A�*

	conv_loss�\>d�(        )��P	��*爙�A�*

	conv_loss��U>�rb�        )��P	J)+爙�A�*

	conv_loss�zX>��i�        )��P	OU+爙�A�*

	conv_loss�$k>o G�        )��P	�+爙�A�*

	conv_loss�Q>���        )��P	��+爙�A�*

	conv_loss�G>ĉ��        )��P	�+爙�A�*

	conv_loss� V>}4x        )��P	o,爙�A�*

	conv_loss^f>Is�6        )��P	nG,爙�A�*

	conv_lossW>T��        )��P	
w,爙�A�*

	conv_lossL]>�8��        )��P	�,爙�A�*

	conv_loss�Y>�#�        )��P	��,爙�A�*

	conv_loss�]^>d���        )��P	X-爙�A�*

	conv_loss�Z>��9+        )��P	%--爙�A�*

	conv_loss�O`>K�X        )��P	b`-爙�A�*

	conv_loss�bO>�2�        )��P	l�-爙�A�*

	conv_loss�\>'q��        )��P	��-爙�A�*

	conv_loss�jL>��k�        )��P	��-爙�A�*

	conv_loss��^>En_        )��P	�.爙�A�*

	conv_loss+�W>$N<        )��P	8C.爙�A�*

	conv_losssK>f2Ø        )��P	+s.爙�A�*

	conv_loss`:T>��:        )��P	'�.爙�A�*

	conv_loss�U>��b�        )��P	��.爙�A�*

	conv_loss[+g>���m        )��P	�/爙�A�*

	conv_loss��S>@�s        )��P	 1/爙�A�*

	conv_loss<9]>�M\        )��P	'a/爙�A�*

	conv_loss}�O>���E        )��P	��/爙�A�*

	conv_loss~�V>T�        )��P	�/爙�A�*

	conv_loss�X>���        )��P	�/爙�A�*

	conv_loss4OY>���        )��P	�0爙�A�*

	conv_loss�W>	ǣn        )��P	|<0爙�A�*

	conv_loss"�X>��g        )��P	9j0爙�A�*

	conv_loss�*\>���        )��P	�0爙�A�*

	conv_loss8NM>n��a        )��P	��0爙�A�*

	conv_lossw�_>'�G�        )��P	��0爙�A�*

	conv_losspo]>��&3        )��P	�1爙�A�*

	conv_lossE�Q>Jy>        )��P	mB1爙�A�*

	conv_loss�`U>�S�        )��P	�m1爙�A�*

	conv_loss\=I>�o�S        )��P	ݘ1爙�A�*

	conv_lossS�L>Q���        )��P	\�1爙�A�*

	conv_loss!SL>���T        )��P	��1爙�A�*

	conv_loss�Bi>�Ы�        )��P	V2爙�A�*

	conv_lossI%\>��n�        )��P	�D2爙�A�*

	conv_lossμP>�02�        )��P	�r2爙�A�*

	conv_lossO4\>��        )��P	ӝ2爙�A�*

	conv_loss�yS>С        )��P	�2爙�A�*

	conv_loss�8[>
���        )��P	R�2爙�A�*

	conv_lossX�_>Xɰ�        )��P	�3爙�A�*

	conv_lossX^>غ��        )��P	L3爙�A�*

	conv_loss��]>(�~�        )��P	"�3爙�A�*

	conv_lossV>�[v        )��P	(�3爙�A�*

	conv_loss�GL>Bwl�        )��P	"�3爙�A�*

	conv_lossi]>�ߗ[        )��P	�4爙�A�*

	conv_loss��S>�r2        )��P	�B4爙�A�*

	conv_loss�P>�#}=        )��P	n4爙�A�*

	conv_loss-R>��5�        )��P	��4爙�A�*

	conv_loss^W>W�qS        )��P	f6爙�A�*

	conv_loss7�b>5        )��P	"06爙�A�*

	conv_loss��T>�>�        )��P	�[6爙�A�*

	conv_loss��H>}wv[        )��P	�6爙�A�*

	conv_loss��W>�Tg        )��P	?�6爙�A�*

	conv_lossG�G>�[��        )��P	S�6爙�A�*

	conv_loss��N>G���        )��P	47爙�A�*

	conv_lossGL>��        )��P	�27爙�A�*

	conv_loss�Q>��Fy        )��P	�]7爙�A�*

	conv_lossWBM>���        )��P	��7爙�A�*

	conv_loss]�Z>=�        )��P	��7爙�A�*

	conv_loss�R>@��        )��P	n�7爙�A�*

	conv_loss��V>���        )��P	@8爙�A�*

	conv_loss�hR>m�\        )��P	�D8爙�A�*

	conv_loss��N>�юy        )��P	r8爙�A�*

	conv_lossq�D>�Q0        )��P	ԭ8爙�A�*

	conv_loss)XY>"X�4        )��P	��8爙�A�*

	conv_loss#aI>)k{�        )��P	19爙�A�*

	conv_loss��R>aQ�        )��P	99爙�A�*

	conv_loss"T>~<f        )��P	�c9爙�A�*

	conv_loss�LD>�e        )��P	��9爙�A�*

	conv_lossEEX>z":�        )��P	��9爙�A�*

	conv_loss�mT>}4�        )��P	��9爙�A�*

	conv_loss�D>`h�        )��P	:爙�A�*

	conv_loss"hB>�Ưc        )��P	<<:爙�A�*

	conv_lossy�C>}�8        )��P	g:爙�A�*

	conv_loss�U>�Ѕ�        )��P	<�:爙�A�*

	conv_loss��S>,#��        )��P	��:爙�A�*

	conv_loss�%P>��iC        )��P	��:爙�A�*

	conv_loss,�@>o�        )��P	o;爙�A�*

	conv_loss��R>�-        )��P	hB;爙�A�*

	conv_loss��J>M���        )��P	�l;爙�A�*

	conv_lossK�D>�<mp        )��P	L�;爙�A�*

	conv_loss��=>�<��        )��P	��;爙�A�*

	conv_loss�CX>����        )��P	 �;爙�A�*

	conv_losso�D>q���        )��P	j<爙�A�*

	conv_lossx�J>'��w        )��P	�F<爙�A�*

	conv_lossJ�M>��cD        )��P	�r<爙�A�*

	conv_loss5�D>���x        )��P	Þ<爙�A�*

	conv_lossp�H>J� �        )��P	��<爙�A�*

	conv_loss`|^>o�        )��P	[�<爙�A�*

	conv_loss�,>>%��P        )��P	k#=爙�A�*

	conv_loss"O>�!)        )��P	�N=爙�A�*

	conv_loss<nD>$#]@        )��P	�|=爙�A�*

	conv_loss�c<>�(xU        )��P	j�=爙�A�*

	conv_loss�H>rYB4        )��P	��=爙�A�*

	conv_loss��R>r#@�        )��P	��=爙�A�*

	conv_loss��C>��EK        )��P	�(>爙�A�*

	conv_loss9SE>ꆾb        )��P	�T>爙�A�*

	conv_loss}A>�~M�        )��P	�>爙�A�*

	conv_loss�MX>g�{^        )��P	��>爙�A�*

	conv_loss�U>nl�        )��P	��>爙�A�*

	conv_loss��F>|�m        )��P	;?爙�A�*

	conv_loss�{K>e!�        )��P	�??爙�A�*

	conv_loss�rG>�D�        )��P	�l?爙�A�*

	conv_loss6�K>p��D        )��P	і?爙�A�*

	conv_loss>~K>�V'        )��P	�?爙�A�*

	conv_loss��H>�N��        )��P	w�?爙�A�*

	conv_loss�4H>7��        )��P	& @爙�A�*

	conv_lossR>
u�n        )��P	�Z@爙�A�*

	conv_loss�%S>q�Ǆ        )��P	F�@爙�A�*

	conv_loss�-G>$ץ�        )��P	j�@爙�A�*

	conv_loss#P>^�#        )��P	�@爙�A�*

	conv_loss8rK>+R}�        )��P	A爙�A�*

	conv_lossUAF>�-�$        )��P	.HA爙�A�*

	conv_lossݼZ>r�I�        )��P	�uA爙�A�*

	conv_lossR�O>�g~�        )��P	I�A爙�A�*

	conv_loss]�H>��i�        )��P	|�A爙�A�*

	conv_lossN�K>!��%        )��P	W�A爙�A�*

	conv_loss�K>T@��        )��P	%B爙�A�*

	conv_loss��P>�p        )��P	QB爙�A�*

	conv_loss\L>?��        )��P	V}B爙�A�*

	conv_loss"�I>D!        )��P	�B爙�A�*

	conv_loss5'@>�1q�        )��P	U�B爙�A�*

	conv_lossOsH>Q�        )��P	�C爙�A�*

	conv_lossK�I>��        )��P	�<C爙�A�*

	conv_loss��<>�c��        )��P	+kC爙�A�*

	conv_loss=EH>�<�        )��P	��C爙�A�*

	conv_loss1�N>�0�=        )��P	S�C爙�A�*

	conv_loss:T>���        )��P	��C爙�A�*

	conv_loss[�K>M��        )��P	�D爙�A�*

	conv_loss�S>ב��        )��P	�DD爙�A�*

	conv_loss0�D>�.�@        )��P	�qD爙�A�*

	conv_loss��G>���        )��P	{�D爙�A�*

	conv_loss��H>�0��        )��P	��D爙�A�*

	conv_loss��F>�ټ[        )��P	$�D爙�A�*

	conv_loss�yA>*'�n        )��P	7!E爙�A�*

	conv_loss��D>���        )��P	EME爙�A�*

	conv_lossO�<>œ]        )��P	nxE爙�A�*

	conv_loss�*O>���        )��P	f�E爙�A�*

	conv_loss>H>4��        )��P	��E爙�A�*

	conv_loss��O>c|��        )��P	"�E爙�A�*

	conv_loss��8>�λ"        )��P	�&F爙�A�*

	conv_lossgy;>���        )��P	�RF爙�A�*

	conv_loss��E>^9        )��P	�F爙�A�*

	conv_lossY�A>�|~        )��P	�F爙�A�*

	conv_loss�=G>���        )��P	}�F爙�A�*

	conv_loss�O>�P&�        )��P	�G爙�A�*

	conv_loss+7>vdH�        )��P	/G爙�A�*

	conv_loss"�B>?2�        )��P	@ZG爙�A�*

	conv_lossݼN>f�7�        )��P	r�G爙�A�*

	conv_loss_�M>�T�$        )��P	��G爙�A�*

	conv_loss�u5>�2*=        )��P	��G爙�A�*

	conv_loss��N>w��        )��P	yH爙�A�*

	conv_loss%�=>FT÷        )��P	[DH爙�A�*

	conv_loss�E>T�(�        )��P	6qH爙�A�*

	conv_loss��N>��e	        )��P	-�H爙�A�*

	conv_loss�=>�'_        )��P	��H爙�A�*

	conv_loss�BF>����        )��P	��H爙�A�*

	conv_loss�%:>�ά        )��P	.1I爙�A�*

	conv_loss+�C>sK        )��P	�`I爙�A�*

	conv_loss,f@>��%        )��P	9�I爙�A�*

	conv_loss��G>��׋        )��P	��I爙�A�*

	conv_loss�-N>A6�        )��P	�I爙�A�*

	conv_loss�nD>���        )��P	�J爙�A�*

	conv_loss �K>�6�L        )��P	�FJ爙�A�*

	conv_lossX�B>:@��        )��P	�yJ爙�A�*

	conv_loss
.P>�	�        )��P	k�J爙�A�*

	conv_losso�@>�d�        )��P	m�J爙�A�*

	conv_loss6�C>�8��        )��P	�K爙�A�*

	conv_lossTSB>���        )��P		/K爙�A�*

	conv_lossI>t�#        )��P	�YK爙�A�*

	conv_loss��E>���        )��P	6�K爙�A�*

	conv_loss^q:>Ȕ�        )��P	f�K爙�A�*

	conv_loss��?>�j�        )��P	��K爙�A�*

	conv_loss	�D>��!        )��P	PL爙�A�*

	conv_loss�7>���        )��P	�:L爙�A�*

	conv_loss<�_>��:        )��P	�fL爙�A�*

	conv_loss�A>cg6        )��P	��L爙�A�*

	conv_loss�J>	��        )��P	�L爙�A�*

	conv_loss�6D>$TK        )��P	y�L爙�A�*

	conv_loss�pL>���        )��P	�M爙�A�*

	conv_lossr�@>C��0        )��P	�>M爙�A�*

	conv_loss�4>�6        )��P	1iM爙�A�*

	conv_loss�\G>/N�        )��P	֓M爙�A�*

	conv_loss�4G>��,Q        )��P	��M爙�A�*

	conv_loss�C=>T���        )��P	��M爙�A�*

	conv_loss�EL>�c$)        )��P	�N爙�A�*

	conv_loss9> �&�        )��P	hFN爙�A�*

	conv_loss��A>��'        )��P	�pN爙�A�*

	conv_loss�\>>���        )��P	4�N爙�A�*

	conv_loss^�B>T`        )��P	��N爙�A�*

	conv_lossQo4>����        )��P	��N爙�A�*

	conv_lossP�:>K�        )��P	_O爙�A�*

	conv_loss��?>�X�        )��P	�GO爙�A�*

	conv_loss�\>�Tw�        )��P	�qO爙�A�*

	conv_loss�%5>�0        )��P	�O爙�A�*

	conv_lossDI>�&�`        )��P	0�O爙�A�*

	conv_loss�D@>uu7�        )��P	"�O爙�A�*

	conv_loss�QD>
y�$        )��P	1%P爙�A�*

	conv_loss�`F>�ǃN        )��P	�aP爙�A�*

	conv_loss*�G>�w,�        )��P	��P爙�A�*

	conv_loss�G>utO�        )��P	��P爙�A�*

	conv_loss�c;>� ��        )��P	Y�P爙�A�*

	conv_loss��=>e��        )��P	�Q爙�A�*

	conv_loss4�5>%�^R        )��P	;BQ爙�A�*

	conv_loss�<J>e(�        )��P	�|Q爙�A�*

	conv_loss*cD>�HW        )��P	C�Q爙�A�*

	conv_loss��@>TY�        )��P	��Q爙�A�*

	conv_loss�N=>Q��l        )��P	>R爙�A�*

	conv_loss�s1>pFo        )��P	aAR爙�A�*

	conv_loss3�:>/oe�        )��P	lR爙�A�*

	conv_loss �->����        )��P	�R爙�A�*

	conv_loss~(<>���        )��P	�R爙�A�*

	conv_loss*�L>ߤ?/        )��P	 �R爙�A�*

	conv_loss��8>�[g        )��P	 S爙�A�*

	conv_loss��8>����        )��P	7KS爙�A�*

	conv_loss�i<>�k�        )��P	EwS爙�A�*

	conv_loss?I>��֨        )��P	-�S爙�A�*

	conv_lossF=>$�E/        )��P	t�S爙�A�*

	conv_loss �4>h��        )��P	��S爙�A�*

	conv_loss��5>��S        )��P	�'T爙�A�*

	conv_loss�W5>u�+        )��P	 TT爙�A�*

	conv_lossR�/>�Ȼ�        )��P	?�T爙�A�*

	conv_lossy�F>7TB        )��P	U�T爙�A�*

	conv_loss��F>F��        )��P	�T爙�A�*

	conv_loss��>>wT-        )��P	�U爙�A�*

	conv_loss��I>��        )��P	�8U爙�A�*

	conv_loss,'5>u��<        )��P	�bU爙�A�*

	conv_loss�7>���        )��P	/�U爙�A�*

	conv_loss�J5>���        )��P	��U爙�A�*

	conv_lossԎ2>M�=W        )��P	#�U爙�A�*

	conv_loss�@F>n ��        )��P	_V爙�A�*

	conv_loss8>���        )��P	�=V爙�A�*

	conv_loss;>�Zd        )��P	�iV爙�A�*

	conv_lossR$F>wg�        )��P	�V爙�A�*

	conv_loss��@>��Cg        )��P	��V爙�A�*

	conv_lossazN>�<2�        )��P	\�V爙�A�*

	conv_loss<B>���        )��P	pW爙�A�*

	conv_loss��6>�.�        )��P	�HW爙�A�*

	conv_loss/�U>Z��        )��P	_sW爙�A�*

	conv_loss�1>1���        )��P	ʠW爙�A�*

	conv_loss>#E>)z2�        )��P	��W爙�A�*

	conv_lossw�3>��8        )��P	�W爙�A�*

	conv_loss^=>���        )��P	�%X爙�A�*

	conv_loss��->���        )��P	�PX爙�A�*

	conv_loss��:>�k�}        )��P	�{X爙�A�*

	conv_loss�@,>,/�        )��P	��X爙�A�*

	conv_loss�J->�}�        )��P	��X爙�A�*

	conv_loss�H@>�F]        )��P	Ă]爙�A�*

	conv_lossc�I>��C�        )��P	 �^爙�A�*

	conv_loss��D>C-�&        )��P	�_爙�A�*

	conv_loss_E>(�W        )��P	�:_爙�A�*

	conv_loss��@>
��        )��P	Wd_爙�A�*

	conv_loss�9>g�	        )��P	ό_爙�A�*

	conv_loss��>>O��        )��P	�_爙�A�*

	conv_loss�9>	���        )��P	L�_爙�A�*

	conv_loss��G>��v�        )��P	E`爙�A�*

	conv_lossLz0>�^�'        )��P	B`爙�A�*

	conv_loss?;7>?��        )��P	gj`爙�A�*

	conv_lossϤ;>�U        )��P	+�`爙�A�*

	conv_loss}vB>'�Y        )��P	�`爙�A�*

	conv_loss�
6>K��Q        )��P	��`爙�A�*

	conv_loss��7>�2�        )��P	�a爙�A�*

	conv_lossx�C>@�%�        )��P	IJa爙�A�*

	conv_loss�@7>N�\�        )��P	�wa爙�A�*

	conv_loss��;>a�        )��P	�a爙�A�*

	conv_loss*{5> �        )��P	6�a爙�A�*

	conv_loss��2>pt/.        )��P	��a爙�A�*

	conv_loss��5>�V�        )��P	�b爙�A�*

	conv_loss�(4>��*�        )��P	3Cb爙�A�*

	conv_loss�,C>A�2        )��P	�lb爙�A�*

	conv_lossE:><��        )��P	�b爙�A�*

	conv_loss��=>���|        )��P	7�b爙�A�*

	conv_lossyt2>�:`�        )��P	�b爙�A�*

	conv_loss�B>gg        )��P	�c爙�A�*

	conv_loss0�5>��4{        )��P	:c爙�A�*

	conv_lossH�F>ǲRv        )��P	�cc爙�A�*

	conv_loss\�4>�l_�        )��P	>�c爙�A�*

	conv_lossl�I>��p�        )��P	3�c爙�A�*

	conv_loss7p@>ﰽt        )��P	�c爙�A�*

	conv_loss.�4>(�Q        )��P	�	d爙�A�*

	conv_lossh�;>ޗ��        )��P	Q5d爙�A�*

	conv_loss:^F>��}        )��P	s^d爙�A�*

	conv_loss��&>��=A        )��P	i�d爙�A�*

	conv_loss�e;>wV�B        )��P	T�d爙�A�*

	conv_loss�<>K��y        )��P	>�d爙�A�*

	conv_loss��4>%�˄        )��P	ze爙�A�*

	conv_loss�U=>�eC        )��P	 ,e爙�A�*

	conv_lossb5>!�w8        )��P	PVe爙�A�*

	conv_lossW�H>���V        )��P	��e爙�A�*

	conv_loss1�<>(�E        )��P	�e爙�A�*

	conv_loss$�C>s��l        )��P	��e爙�A�*

	conv_loss��G>:�        )��P	�f爙�A�*

	conv_loss��:>KB��        )��P	�+f爙�A�*

	conv_loss�D->z��e        )��P	�Uf爙�A�*

	conv_lossc�;>�h��        )��P	��f爙�A�*

	conv_loss�?5>3��i        )��P	��f爙�A�*

	conv_loss�m3>ڠ�        )��P	x�f爙�A�*

	conv_loss�4>�i        )��P	� g爙�A�*

	conv_lossM�)>��        )��P	�<g爙�A�*

	conv_lossKD->�O�        )��P	Vfg爙�A�*

	conv_loss��3>
g��        )��P	Вg爙�A�*

	conv_loss+w+>ѕ\        )��P	��g爙�A�*

	conv_loss�YB>���5        )��P	��g爙�A�*

	conv_lossb�->��H        )��P	� h爙�A�*

	conv_lossZ0>Ő�/        )��P	yMh爙�A�*

	conv_loss^�->���        )��P	�wh爙�A�*

	conv_loss�4>����        )��P	�h爙�A�*

	conv_loss��*>?��        )��P	��h爙�A�*

	conv_lossG�<>vMg         )��P	�i爙�A�*

	conv_losse�1>V��        )��P	{Bi爙�A�*

	conv_loss�E>چo�        )��P	;ni爙�A�*

	conv_loss��:>
��        )��P	��i爙�A�*

	conv_lossܣB>�<�        )��P	��i爙�A�*

	conv_loss8T(>_         )��P	Y�i爙�A�*

	conv_loss{�.>"���        )��P	�j爙�A�*

	conv_loss�8>�G�        )��P	�Gj爙�A�*

	conv_loss��0>Қ�        )��P	�oj爙�A�*

	conv_loss=F">b9��        )��P	��j爙�A�*

	conv_loss,�%>��%�        )��P	��j爙�A�*

	conv_loss�D+>d� \        )��P	��j爙�A�*

	conv_lossX�+>I���        )��P	�k爙�A�*

	conv_loss�>�W�        )��P	[Jk爙�A�*

	conv_lossrv6>g1mO        )��P	8xk爙�A�*

	conv_loss�p.>��,c        )��P	��k爙�A�*

	conv_loss^:E>�`ų        )��P	+�k爙�A�*

	conv_loss*%%>4)        )��P	g�k爙�A�*

	conv_lossۼ0>�        )��P	�$l爙�A�*

	conv_loss}.7>�}��        )��P	=Nl爙�A�*

	conv_lossn�5>�I        )��P	�zl爙�A�*

	conv_loss��&>:�J�        )��P	�l爙�A�*

	conv_loss=�&>���        )��P	��l爙�A�*

	conv_losse->����        )��P	��l爙�A�*

	conv_loss'4>䱍�        )��P	x m爙�A�*

	conv_loss�W->�	��        )��P	�Im爙�A�*

	conv_loss� >��        )��P	2tm爙�A�*

	conv_loss��4>3 �        )��P	 �m爙�A�*

	conv_lossu'>�T6        )��P	h�m爙�A�*

	conv_lossb2>.��        )��P	c�m爙�A�*

	conv_loss$� >���        )��P	ln爙�A�*

	conv_loss�_/>IX"3        )��P	Jn爙�A�*

	conv_loss"r#>]D�]        )��P	cvn爙�A�*

	conv_loss:�(>Dj��        )��P	/�n爙�A�*

	conv_loss!�>���d        )��P	��n爙�A�*

	conv_lossX<>�6�(        )��P	.�n爙�A�*

	conv_lossJ�->���5        )��P	� o爙�A�*

	conv_loss�Y(>a��        )��P	eLo爙�A�*

	conv_loss(�&>���        )��P	�vo爙�A�*

	conv_loss�R2>��8        )��P	ϣo爙�A�*

	conv_lossI(>���;        )��P	l�o爙�A�*

	conv_loss��6>^�g@        )��P	�p爙�A�*

	conv_lossD,4>�-C�        )��P	�8p爙�A�*

	conv_lossEI1>�I&^        )��P	�dp爙�A�*

	conv_loss�.>��<"        )��P	t�p爙�A�*

	conv_lossFR8>��$�        )��P	��p爙�A�*

	conv_losse&">��l        )��P	x�p爙�A�*

	conv_loss�2>T,-v        )��P	Sq爙�A�*

	conv_lossJ�)>��s        )��P	�Fq爙�A�*

	conv_loss��,>r�@�        )��P	��q爙�A�*

	conv_loss@�1>�e��        )��P	0�q爙�A�*

	conv_loss%�2>E��        )��P	��q爙�A�*

	conv_loss�">���        )��P	sr爙�A�*

	conv_loss��;>ʕf�        )��P	67r爙�A�*

	conv_loss�I*>���        )��P	�br爙�A�*

	conv_loss��)>�N�        )��P	ћr爙�A�*

	conv_loss8�&>���        )��P	7�r爙�A�*

	conv_loss�t0>����        )��P	�s爙�A�*

	conv_losse�/>�d�         )��P	�8s爙�A�*

	conv_lossg�/>�s�        )��P	ecs爙�A�*

	conv_loss�,>���        )��P	֍s爙�A�*

	conv_loss�$>o�m        )��P	��s爙�A�*

	conv_loss��4>���        )��P	��s爙�A�*

	conv_lossf`>A�ظ        )��P	Ht爙�A�*

	conv_lossye/>N�	P        )��P	�<t爙�A�*

	conv_lossL�@>R�        )��P	tit爙�A�*

	conv_loss��.>o�h�        )��P	��t爙�A�*

	conv_loss͖->:=�        )��P	��t爙�A�*

	conv_loss'3>P5��        )��P	��t爙�A�*

	conv_loss�)>?��~        )��P	)u爙�A�*

	conv_loss&C4>�ͨ�        )��P	�Hu爙�A�*

	conv_loss��*>��;�        )��P	qwu爙�A�*

	conv_loss�,.>�ɵ�        )��P	.�u爙�A�*

	conv_loss�2>��&        )��P	5�u爙�A�*

	conv_lossɚ/>�w        )��P	��u爙�A�*

	conv_lossM�8>N��        )��P	�$v爙�A�*

	conv_loss��,>:.�@        )��P	�Pv爙�A�*

	conv_loss��B>I�>        )��P	Y{v爙�A�*

	conv_loss�l,>,�        )��P	
�v爙�A�*

	conv_lossX\1>��^-        )��P	��v爙�A�*

	conv_loss�.:>�.        )��P	 �v爙�A�*

	conv_lossf�/>��P�        )��P	G)w爙�A�*

	conv_loss�='>&��        )��P	�Uw爙�A�*

	conv_loss9k2>�d�T        )��P	��w爙�A�*

	conv_lossJq>}���        )��P	+�w爙�A�*

	conv_loss�>���8        )��P	}�w爙�A�*

	conv_loss�!>���        )��P	px爙�A�*

	conv_loss�Q)>G���        )��P	�+x爙�A�*

	conv_loss��=>�ym@        )��P	�Wx爙�A�*

	conv_loss �%>m�[        )��P	+�x爙�A�*

	conv_loss�&+>T�e�        )��P	�x爙�A�*

	conv_loss�9(>�ә:        )��P	�x爙�A�*

	conv_loss_�">MM�g        )��P	Sy爙�A�*

	conv_loss�70>5@�l        )��P	�@y爙�A�*

	conv_loss<1>\ɵ2        )��P	�py爙�A�*

	conv_loss*�>�A)P        )��P	�y爙�A�*

	conv_loss`�+>�^�        )��P	��y爙�A�*

	conv_lossb�0>$�.q        )��P	��y爙�A�*

	conv_loss�N3>Y���        )��P	�)z爙�A�*

	conv_lossZ�6>�@�t        )��P	1az爙�A�*

	conv_loss`�$>k^k        )��P	Ӛz爙�A�*

	conv_loss��2>�j(        )��P	��z爙�A�*

	conv_loss{?&>��{�        )��P	��z爙�A�*

	conv_lossÙ >��`        )��P	r#{爙�A�*

	conv_loss��>���        )��P	Q{爙�A�*

	conv_loss>�>CH��        )��P	~{爙�A�*

	conv_loss�Y*>>
Z        )��P	��{爙�A�*

	conv_lossX�2>P"        )��P	��{爙�A�*

	conv_loss��!>����        )��P	|爙�A�*

	conv_loss�^>Q��q        )��P	�D|爙�A�*

	conv_loss]!>!�OS        )��P	�o|爙�A�*

	conv_lossI8+>ǀ        )��P	k�|爙�A�*

	conv_lossQ�(>�:J        )��P	s�|爙�A�*

	conv_lossBJ8>�]%�        )��P	p�|爙�A�*

	conv_loss �0> �¶        )��P	�'}爙�A�*

	conv_loss�">�.��        )��P	�Q}爙�A�*

	conv_lossV�1>���        )��P	c|}爙�A�*

	conv_lossD�*>8���        )��P	n�}爙�A�*

	conv_loss&�8>���e        )��P	+�}爙�A�*

	conv_lossW�&>r.8        )��P	�}爙�A�*

	conv_loss�I>p��        )��P	�&~爙�A�*

	conv_lossm\>�@P�        )��P	�S~爙�A�*

	conv_lossXa$>s�        )��P	}~爙�A�*

	conv_loss�c>> �YU        )��P	��~爙�A�*

	conv_loss��>����        )��P	*�~爙�A�*

	conv_loss�*>[�T        )��P	1爙�A�*

	conv_loss�*>��K9        )��P	w3爙�A�*

	conv_loss-� >B�|�        )��P	�e爙�A�*

	conv_lossY�0>y f        )��P	�爙�A�*

	conv_loss�(>��        )��P	;�爙�A�*

	conv_loss�#>�>�q        )��P	��爙�A�*

	conv_loss��->�<.        )��P	�爙�A�*

	conv_lossZg%>.��X        )��P	�@�爙�A�*

	conv_loss+�3>	֝-        )��P	�n�爙�A�*

	conv_loss��>TY�5        )��P	_��爙�A�*

	conv_loss;w3>�$�\        )��P	dǀ爙�A�*

	conv_loss>>>=a?>        )��P	��爙�A�*

	conv_loss&>�d�        )��P	��爙�A�*

	conv_lossW�0>(c-
        )��P	�H�爙�A�*

	conv_lossqI!>8���        )��P	s�爙�A�*

	conv_loss�e*>K��        )��P	�߂爙�A�*

	conv_loss��>�g�        )��P	e�爙�A�*

	conv_lossH�1>�gx        )��P	�=�爙�A�*

	conv_loss%>�Z6        )��P	Dh�爙�A�*

	conv_lossx/>��        )��P	���爙�A�*

	conv_loss�">4�B        )��P	���爙�A�*

	conv_loss"&7>�i�l        )��P	A��爙�A�*

	conv_lossb�>��L        )��P	� �爙�A�*

	conv_loss�!>N��I        )��P	!O�爙�A�*

	conv_loss�7>+%�6        )��P	���爙�A�*

	conv_loss<� >�        )��P	���爙�A�*

	conv_loss��!>3>��        )��P	Q�爙�A�*

	conv_loss �0>�?X        )��P	V �爙�A�*

	conv_loss'>6��        )��P	iI�爙�A�*

	conv_loss�1>��#        )��P	kv�爙�A�*

	conv_loss�T>���        )��P	���爙�A�*

	conv_lossl� >V�@        )��P	�Ʌ爙�A�*

	conv_loss�"$>90�        )��P	 �爙�A�*

	conv_loss��9>��4        )��P	��爙�A�*

	conv_loss�D'>�_        )��P	lI�爙�A�*

	conv_loss'� >�h        )��P	s�爙�A�*

	conv_loss�f$>�~��        )��P	���爙�A�*

	conv_loss`y#>�u��        )��P	l͆爙�A�*

	conv_loss=/">m|oW        )��P	���爙�A�*

	conv_lossp#>w        )��P	b.�爙�A�*

	conv_loss�t >���        )��P	�Y�爙�A�*

	conv_loss	~>%Sh        )��P	z��爙�A�*

	conv_loss�F0>�.��        )��P	R��爙�A�*

	conv_loss��*>Jh L        )��P	Jۇ爙�A�*

	conv_loss� />��3w        )��P	9�爙�A�*

	conv_loss"�>����        )��P	�.�爙�A�*

	conv_lossL\)>k �        )��P	5W�爙�A�*

	conv_lossG�(>�p~}        )��P	��爙�A�*

	conv_loss�(>j$��        )��P	���爙�A�*

	conv_loss�{*>��[        )��P	�Ո爙�A�*

	conv_loss} >�M��        )��P	P�爙�A�*

	conv_loss�e&>��r        )��P	d+�爙�A�*

	conv_loss,>���        )��P	�S�爙�A�*

	conv_lossg>��	        )��P	�}�爙�A�*

	conv_loss/0%>R�z�        )��P	é�爙�A�*

	conv_loss�'>Ʌw�        )��P	�҉爙�A�*

	conv_lossI'>�qQ        )��P	;��爙�A�*

	conv_loss�>3�G�        )��P	2'�爙�A�*

	conv_loss$>��K        )��P	R�爙�A�*

	conv_loss�>��!        )��P	�~�爙�A�*

	conv_loss��0>P�        )��P	,��爙�A�*

	conv_loss��>E��        )��P	@Ҋ爙�A�*

	conv_loss��>U��_        )��P	���爙�A�*

	conv_loss��>��UO        )��P	''�爙�A�*

	conv_loss7 >\K�        )��P	�Q�爙�A�*

	conv_loss �$>�+T        )��P	/��爙�A�*

	conv_lossc�%>L��#        )��P	I��爙�A�*

	conv_loss��$>�tF�        )��P	��爙�A�*

	conv_lossG>V���        )��P	�爙�A�*

	conv_loss^�">���        )��P	�=�爙�A�*

	conv_loss�>e�Tj        )��P	�i�爙�A�*

	conv_loss��>�q        )��P	���爙�A�*

	conv_loss�$(>��W        )��P	(��爙�A�*

	conv_loss�>��8/        )��P	�爙�A�*

	conv_lossr)>�g+�        )��P	h$�爙�A�*

	conv_lossܯ#>�oЖ        )��P	;T�爙�A�*

	conv_loss��%>�%(        )��P	K~�爙�A�*

	conv_lossY>�*�^        )��P	ק�爙�A�*

	conv_loss�>�=�        )��P	;ҍ爙�A�*

	conv_lossq>yqg        )��P	1��爙�A�*

	conv_loss�2>6V}�        )��P	21�爙�A�*

	conv_loss�'>91��        )��P	�`�爙�A�*

	conv_loss>H�p        )��P	X��爙�A�*

	conv_loss
J >6B��        )��P	��爙�A�*

	conv_loss�Q>ɩ~        )��P	i�爙�A�*

	conv_loss�i,>���o        )��P	��爙�A�*

	conv_loss_�!>Ǜ>        )��P	*@�爙�A�*

	conv_losseY>e�u        )��P	j�爙�A�*

	conv_lossv�+>�d`�        )��P	Ҕ�爙�A�*

	conv_lossU�&>�:�        )��P	9��爙�A�*

	conv_loss�	->G1?�        )��P	]�爙�A�*

	conv_loss�d*>.�        )��P	��爙�A�*

	conv_lossȖ>]�IC        )��P	_?�爙�A�*

	conv_lossޡ!>�22        )��P	�g�爙�A�*

	conv_lossl}7>�}
        )��P	<��爙�A�*

	conv_loss>�Y        )��P	�爙�A�*

	conv_lossމ >~�Ψ        )��P	��爙�A�*

	conv_loss=�>�syQ        )��P	��爙�A�*

	conv_loss�� >���        )��P	�4�爙�A�*

	conv_loss�#>�^T�        )��P	�_�爙�A�*

	conv_loss�X%>p�        )��P	���爙�A�*

	conv_loss�#>���        )��P	?��爙�A�*

	conv_loss3�	>n&W        )��P	ޑ爙�A�*

	conv_loss�>�<3�        )��P	�	�爙�A�*

	conv_lossٸ!>�݁�        )��P	5�爙�A�*

	conv_loss!  >ͽ��        )��P	(_�爙�A�*

	conv_loss�t>x�f�        )��P	爙�A�*

	conv_loss
~>.6��        )��P	m��爙�A�*

	conv_loss,,>ݞG�        )��P	Mݒ爙�A�*

	conv_losshU!>��<        )��P	��爙�A�*

	conv_loss"�>=�&�        )��P	�0�爙�A�*

	conv_loss��%>�ܞ;        )��P	�\�爙�A�*

	conv_loss��>D�f        )��P	��爙�A�*

	conv_loss�%">�u.        )��P	X��爙�A�*

	conv_loss$t.>���4        )��P	1ܓ爙�A�*

	conv_lossT>���        )��P	��爙�A�*

	conv_loss��>޺��        )��P	�A�爙�A�*

	conv_loss�.>�"�*        )��P	�l�爙�A�*

	conv_loss\E&>v�S�        )��P	g��爙�A�*

	conv_loss�S >��<        )��P	Ŕ爙�A�*

	conv_loss� >���        )��P	W��爙�A�*

	conv_loss�6>"��        )��P	\"�爙�A�*

	conv_loss��>C���        )��P	�S�爙�A�*

	conv_loss��!>Ob�        )��P	�~�爙�A�*

	conv_loss��;>h�m%        )��P	f��爙�A�*

	conv_loss�>�-�%        )��P	"�爙�A�*

	conv_loss�r!>��}�        )��P	R�爙�A�*

	conv_loss�R>����        )��P	B�爙�A�*

	conv_loss�(>�1E�        )��P	Dr�爙�A�*

	conv_loss�U>�W�        )��P	���爙�A�*

	conv_loss�.>G���        )��P	�Ȗ爙�A�*

	conv_loss��#>�-b�        )��P	��爙�A�*

	conv_loss6>7���        )��P	�爙�A�*

	conv_loss�]>_�        )��P	EG�爙�A�*

	conv_lossV5>?��        )��P	�q�爙�A�*

	conv_loss��>={��        )��P	���爙�A�*

	conv_loss:�'>���        )��P	rǗ爙�A�*

	conv_lossGh*>v���        )��P	x�爙�A�*

	conv_loss5' >d$�        )��P	�爙�A�*

	conv_loss�">����        )��P	7E�爙�A�*

	conv_loss�S >v��        )��P	�p�爙�A�*

	conv_loss�->�	�n        )��P	��爙�A�*

	conv_lossA�>|��        )��P	�Ә爙�A�*

	conv_loss��%>'��'        )��P	��爙�A�*

	conv_loss-J>��        )��P	�,�爙�A�*

	conv_loss��>�^�        )��P	�X�爙�A�*

	conv_loss��,>q��.        )��P	i��爙�A�*

	conv_loss��>9E�	        )��P	B��爙�A�*

	conv_loss�d">+ؾ        )��P	ؙ爙�A�*

	conv_loss
>	F�        )��P	R �爙�A�*

	conv_lossl>�̔        )��P	K*�爙�A�*

	conv_loss�>Z_[�        )��P	�U�爙�A�*

	conv_loss�">u�4        )��P	��爙�A�*

	conv_loss�>��]@        )��P	���爙�A�*

	conv_lossi�>O��        )��P	�Ԛ爙�A�*

	conv_loss�>��y�        )��P	 �爙�A�*

	conv_loss >���        )��P	�(�爙�A�*

	conv_loss�'>ƨ��        )��P	3T�爙�A�*

	conv_loss_�>�[��        )��P	7�爙�A�*

	conv_lossfL>��b�        )��P	٨�爙�A�*

	conv_loss@�>(�ع        )��P	�՛爙�A�*

	conv_loss��>i�M�        )��P	��爙�A�*

	conv_lossH�>�m�        )��P	�-�爙�A�*

	conv_loss�4=> �         )��P	�V�爙�A�*

	conv_lossJi!>>tB        )��P	7��爙�A�*

	conv_loss �>���        )��P	���爙�A�*

	conv_loss��>]�qu        )��P	P�爙�A�*

	conv_loss�>ξa�        )��P	��爙�A�*

	conv_lossm->��2        )��P	;�爙�A�*

	conv_loss>�>���        )��P	6i�爙�A�*

	conv_lossp�4>ks�X        )��P	ȕ�爙�A�*

	conv_loss.� >,�;        )��P	���爙�A�*

	conv_loss3Y>-�I        )��P	�爙�A�*

	conv_loss)>�0@%        )��P	��爙�A�*

	conv_lossS/>͗�P        )��P	R=�爙�A�*

	conv_loss��!>���        )��P	h�爙�A�*

	conv_loss�S1>3(}O        )��P	j��爙�A�*

	conv_loss �>C�B        )��P	���爙�A�*

	conv_loss`!>���o        )��P	Y�爙�A�*

	conv_loss:�>�>V�        )��P	��爙�A�*

	conv_loss]�>m��m        )��P	�A�爙�A�*

	conv_loss�>43)�        )��P	
k�爙�A�*

	conv_loss0�>Xl��        )��P	2��爙�A�*

	conv_loss�t+>���        )��P	,Ɵ爙�A�*

	conv_loss0j>�ya�        )��P	%�爙�A�*

	conv_loss��>���        )��P	l!�爙�A�*

	conv_loss;w>�m>�        )��P	P�爙�A�*

	conv_loss��*>�e�H        )��P	\}�爙�A�*

	conv_loss��>���        )��P	W��爙�A�*

	conv_loss��>0mt        )��P	\Ԡ爙�A�*

	conv_loss��>�h        )��P	@ �爙�A�*

	conv_loss��>t�*�        )��P	.�爙�A�*

	conv_loss3-B>���C        )��P	�X�爙�A�*

	conv_lossN>���        )��P	ށ�爙�A�*

	conv_lossNN!>G(�Z        )��P	Ī�爙�A�*

	conv_loss��>&8�a        )��P	�֡爙�A�*

	conv_loss�� >e*e        )��P	��爙�A�*

	conv_loss}>,;�        )��P	0.�爙�A�*

	conv_loss��/>�;        )��P	nW�爙�A�*

	conv_loss��>�s��        )��P	Ń�爙�A�*

	conv_lossX>l`G�        )��P	���爙�A�*

	conv_loss7>�
zO        )��P	�ܢ爙�A�*

	conv_lossݽ>�ݧ        )��P	]	�爙�A�*

	conv_loss�!#>��"�        )��P	�3�爙�A�*

	conv_loss��>LK(        )��P	]�爙�A�*

	conv_loss��>
td        )��P	p��爙�A�*

	conv_losss`>�%ޮ        )��P	-��爙�A�*

	conv_loss=�#>��SH        )��P	0�爙�A�*

	conv_loss��>H�_        )��P	��爙�A�*

	conv_loss1�>[�Ȗ        )��P	Y�爙�A�*

	conv_loss��'>���        )��P	��爙�A�*

	conv_loss��>Ί�@        )��P	٬�爙�A�*

	conv_lossF�>́)#        )��P	�פ爙�A�*

	conv_loss��>'�sp        )��P	��爙�A�*

	conv_loss�M>�uVw        )��P	m+�爙�A�*

	conv_loss�)>��T�        )��P	֞�爙�A�*

	conv_loss�U
>���}        )��P	EЦ爙�A�*

	conv_loss�&>Y�        )��P	)��爙�A�*

	conv_loss�*>k��[        )��P	$�爙�A�*

	conv_lossƤ>f��        )��P	^T�爙�A�*

	conv_loss/k>���        )��P	J��爙�A�*

	conv_loss%�7>Nޔ�        )��P	ؽ�爙�A�*

	conv_loss
>�*A�        )��P	?�爙�A�*

	conv_loss�>� �        )��P	�爙�A�*

	conv_loss�C>?:        )��P	�L�爙�A�*

	conv_loss�V,>)��\        )��P	4x�爙�A�*

	conv_lossm>d�        )��P	K��爙�A�*

	conv_losslF	>&|=~        )��P	$ר爙�A�*

	conv_losst�>�Wk        )��P	��爙�A�*

	conv_loss�p>���        )��P	�.�爙�A�*

	conv_lossQ>�	K        )��P	Z�爙�A�*

	conv_loss�� >��}�        )��P	��爙�A�*

	conv_loss�>�G�        )��P	X��爙�A�*

	conv_lossL
>�!�Y        )��P	�ک爙�A�*

	conv_lossr>�        )��P	��爙�A�*

	conv_loss�D$>ӳHm        )��P	�9�爙�A�*

	conv_lossnJ)>}�%g        )��P	�g�爙�A�*

	conv_loss+k>�N'`        )��P	���爙�A�*

	conv_loss�2>a>��        )��P	$��爙�A�*

	conv_lossA�>���        )��P	��爙�A�*

	conv_loss�>L��!        )��P	��爙�A�*

	conv_loss3�>����        )��P	�>�爙�A�*

	conv_loss�m">����        )��P	�i�爙�A�*

	conv_lossϟ,>�ܭ�        )��P	���爙�A�*

	conv_loss�>\.?�        )��P	���爙�A�*

	conv_loss�x>�I�0        )��P	k�爙�A�*

	conv_loss/�'>i���        )��P	l�爙�A�*

	conv_loss�(>����        )��P	�9�爙�A�*

	conv_loss�>L`S�        )��P	-d�爙�A�*

	conv_loss%4'>�~\;        )��P	���爙�A�*

	conv_loss��>a6?        )��P	���爙�A�*

	conv_lossx+>?f��        )��P	��爙�A�*

	conv_loss�S�=lP1�        )��P	��爙�A�*

	conv_loss�%>d        )��P	]8�爙�A�*

	conv_lossA�>*%q�        )��P	�c�爙�A�*

	conv_lossr3>}{�        )��P	�爙�A�*

	conv_loss��>4��        )��P	���爙�A�*

	conv_loss4�->��        )��P	��爙�A�*

	conv_loss�i	>7��w        )��P	t�爙�A�*

	conv_lossL>I@a�        )��P	�8�爙�A�*

	conv_loss��>p���        )��P	�a�爙�A�*

	conv_loss>0L�        )��P	���爙�A�*

	conv_loss�
>��>�        )��P	���爙�A�*

	conv_loss�G
>uX�        )��P	�爙�A�*

	conv_loss^#>�7>        )��P	@
�爙�A�*

	conv_loss���=ח�        )��P	~D�爙�A�*

	conv_loss^�)>�f�        )��P	&m�爙�A�*

	conv_loss��>��%        )��P	_��爙�A�*

	conv_loss9�>+TZk        )��P	�į爙�A�*

	conv_lossG�">��p6        )��P	�爙�A�*

	conv_loss�2>
C�.        )��P	��爙�A�*

	conv_loss�9>ۍ)|        )��P	�F�爙�A�*

	conv_loss�n>�-uJ        )��P	q�爙�A�*

	conv_lossD�	>q��:        )��P	z��爙�A�*

	conv_losst�=���        )��P	�ǰ爙�A�*

	conv_lossG>���        )��P	�爙�A�*

	conv_lossl>U�n*        )��P	/�爙�A�*

	conv_loss�#>%�3f        )��P	�Y�爙�A�*

	conv_lossXS>a٭�        )��P	₱爙�A�*

	conv_lossA�>=@'        )��P	(��爙�A�*

	conv_loss�@>�A�        )��P	#ޱ爙�A�*

	conv_loss]F>��k        )��P	��爙�A�*

	conv_loss��	>E:�        )��P	|?�爙�A�*

	conv_loss�}>���        )��P	�k�爙�A�*

	conv_loss��>�FC�        )��P	��爙�A�*

	conv_loss�A>}=��        )��P	��爙�A�*

	conv_loss�g>4�Lf        )��P	��爙�A�*

	conv_loss��>t��        )��P	��爙�A�*

	conv_loss�k!>��%        )��P	�;�爙�A�*

	conv_loss�p>5�{�        )��P	�e�爙�A�*

	conv_lossu2>ё��        )��P	���爙�A�*

	conv_loss��>q        )��P	���爙�A�*

	conv_loss�C>��F�        )��P	K�爙�A�*

	conv_lossY>��K�        )��P	S�爙�A�*

	conv_loss".	>���,        )��P	GB�爙�A�*

	conv_lossH�>j���        )��P	�k�爙�A�*

	conv_loss�>���        )��P	`��爙�A�*

	conv_loss��>�2�        )��P	�´爙�A�*

	conv_losst�>	cZC        )��P	��爙�A�*

	conv_loss3�.>����        )��P	,�爙�A�*

	conv_loss=>9��        )��P	?�爙�A�*

	conv_losswt
>���-        )��P	�j�爙�A�*

	conv_loss�>7�'        )��P	q��爙�A�*

	conv_lossқ>N���        )��P	���爙�A�*

	conv_loss��>���        )��P	��爙�A�*

	conv_loss�g>��        )��P	A�爙�A�*

	conv_loss��>��*q        )��P	�<�爙�A�*

	conv_loss�$	>>�[        )��P	�f�爙�A�*

	conv_loss�a>���g        )��P	ҏ�爙�A�*

	conv_loss/#>Jv)6        )��P	)��爙�A�*

	conv_loss�>T�q        )��P	��爙�A�*

	conv_loss��>��q        )��P	t�爙�A�*

	conv_loss��>eԯ�        )��P	�8�爙�A�*

	conv_loss@^>���        )��P	sb�爙�A�*

	conv_loss2(>���        )��P	3�爙�A�*

	conv_loss�h>���        )��P	��爙�A�*

	conv_loss�?>��M        )��P	�E�爙�A�*

	conv_loss/>���        )��P	o�爙�A�*

	conv_loss
P>rR�+        )��P	���爙�A�*

	conv_loss�(>"�ى        )��P	eƼ爙�A�*

	conv_loss:s>�Ώ�        )��P	A�爙�A�*

	conv_loss�>��        )��P	g�爙�A�*

	conv_loss~�>��        )��P	LQ�爙�A�*

	conv_lossj�>�.U        )��P	�y�爙�A�*

	conv_loss��>eM6        )��P	i��爙�A�*

	conv_loss@. >і#�        )��P	E˽爙�A�*

	conv_lossv�>9(`�        )��P	-��爙�A�*

	conv_loss�
>�d M        )��P	��爙�A�*

	conv_loss�>�y%�        )��P	Z�爙�A�*

	conv_loss�H>�_�        )��P	���爙�A�*

	conv_lossK�>��%�        )��P	e��爙�A�*

	conv_loss�a>py��        )��P	�ݾ爙�A�*

	conv_loss�>0�        )��P	E�爙�A�*

	conv_lossq�>�}�        )��P	�0�爙�A�*

	conv_loss��>Im�        )��P	#Y�爙�A�*

	conv_loss�i>�V�j        )��P	���爙�A�*

	conv_loss��>���        )��P	���爙�A�*

	conv_loss�g>כ��        )��P	m׿爙�A�*

	conv_loss�o> �!        )��P	��爙�A�*

	conv_loss��>�G+        )��P	z)�爙�A�*

	conv_loss��'>j�an        )��P	Q�爙�A�*

	conv_loss��>|8t�        )��P	?y�爙�A�*

	conv_lossL>H���        )��P	���爙�A�*

	conv_lossN>[%��        )��P	���爙�A�*

	conv_loss0�>.�H}        )��P	%��爙�A�*

	conv_loss)^>        )��P	}�爙�A�*

	conv_loss���=�iA�        )��P	�G�爙�A�*

	conv_lossx
>ߘg�        )��P	�o�爙�A�*

	conv_loss��>���        )��P	#��爙�A�*

	conv_lossO>���        )��P	C��爙�A�*

	conv_losss�>���        )��P	���爙�A�*

	conv_losspq> �i        )��P	��爙�A�*

	conv_loss
>Ʈ��        )��P	C@�爙�A�*

	conv_loss�=>y0        )��P	�i�爙�A�*

	conv_loss�9>���        )��P	/��爙�A�*

	conv_loss�>o#�@        )��P	Ȼ�爙�A�*

	conv_loss�	>���N        )��P	��爙�A�*

	conv_loss�>B�/`        )��P	y�爙�A�*

	conv_loss~n>Sa�j        )��P	�8�爙�A�*

	conv_lossS>^��        )��P	O`�爙�A�*

	conv_lossH�(>�&�i        )��P	��爙�A�*

	conv_loss&�>-k]e        )��P	���爙�A�*

	conv_loss6�>�K��        )��P	���爙�A�*

	conv_loss�	>n�k        )��P	��爙�A�*

	conv_loss�
>���        )��P	�0�爙�A�*

	conv_lossO�>�n        )��P	Di�爙�A�*

	conv_loss��>�f        )��P	���爙�A�*

	conv_loss�>�٢�        )��P	���爙�A�*

	conv_loss� >5`�y        )��P	x��爙�A�*

	conv_losse�><�p'        )��P	i�爙�A�*

	conv_loss>-��j        )��P	�8�爙�A�*

	conv_lossA�	>*Q�j        )��P	]d�爙�A�*

	conv_loss�X>i��        )��P	��爙�A�*

	conv_loss��>�X�        )��P	4��爙�A�*

	conv_loss �>()�        )��P	=��爙�A�*

	conv_loss��>n�"        )��P	F!�爙�A�*

	conv_loss&>��        )��P	�M�爙�A�*

	conv_lossz�!>Yr        )��P	(w�爙�A�*

	conv_loss��>��/1        )��P	���爙�A�*

	conv_loss'2�=n�x�        )��P	���爙�A�*

	conv_loss�j>�)�	        )��P	���爙�A�*

	conv_losskw>z��?        )��P	e$�爙�A�*

	conv_loss	M>�E-        )��P	$O�爙�A�*

	conv_loss�N>f�B        )��P	 y�爙�A�*

	conv_loss��>���        )��P	ʡ�爙�A�*

	conv_lossJ>���O        )��P	���爙�A�*

	conv_loss��>#[#e        )��P	���爙�A�*

	conv_lossQ�>^3�;        )��P	�爙�A�*

	conv_loss�k>��        )��P	�H�爙�A�*

	conv_loss�A>E�        )��P	�w�爙�A�*

	conv_loss�0�=(���        )��P	ۧ�爙�A�*

	conv_loss��>���5        )��P	V��爙�A�*

	conv_loss�>?��        )��P	R��爙�A�*

	conv_loss�>%��!        )��P	0(�爙�A�*

	conv_losss(>�;9�        )��P	uP�爙�A�*

	conv_loss~�>����        )��P	�{�爙�A�*

	conv_lossc��=Ԋ��        )��P	n��爙�A�*

	conv_loss�t>���        )��P	[��爙�A�*

	conv_loss>>��*^        )��P	���爙�A�*

	conv_lossW�>����        )��P	�,�爙�A�*

	conv_loss�\>U$�        )��P	UY�爙�A�*

	conv_loss�>�֫p        )��P	?��爙�A�*

	conv_loss�#>���        )��P	j��爙�A�*

	conv_lossH�>qhC        )��P	��爙�A�*

	conv_loss>DHU�        )��P	] �爙�A�*

	conv_loss�^>�B�        )��P	_*�爙�A�*

	conv_loss�>��        )��P	XS�爙�A�*

	conv_loss`�>��D        )��P	 }�爙�A�*

	conv_loss_�>�d�"        )��P	7��爙�A�*

	conv_loss�>KHN#        )��P	_��爙�A�*

	conv_losso��=M7�6        )��P	( �爙�A�*

	conv_loss)a>�V�        )��P	"0�爙�A�*

	conv_loss=�>�E��        )��P	Z�爙�A�*

	conv_lossGP>�A�        )��P	ׄ�爙�A�*

	conv_lossP�>�f	        )��P	���爙�A�*

	conv_loss��	>̳(�        )��P	m(�爙�A�*

	conv_lossk{>��C�        )��P	w^�爙�A�*

	conv_lossi�>��/X        )��P	���爙�A�*

	conv_losse�>1���        )��P	~��爙�A�*

	conv_loss��>�-�        )��P	)��爙�A�*

	conv_loss�>M1��        )��P	�
�爙�A�*

	conv_lossc�
>ɮ�`        )��P	n<�爙�A�*

	conv_loss>=[l        )��P		g�爙�A�*

	conv_loss�h�=	EN�        )��P	*��爙�A�*

	conv_losse�	>S�t_        )��P	���爙�A�*

	conv_lossq�>~��        )��P	:��爙�A�*

	conv_loss��>וQ        )��P	�:�爙�A�*

	conv_loss�>��V        )��P	�h�爙�A�*

	conv_loss�>��
C        )��P	���爙�A�*

	conv_lossD� >F,�        )��P	=��爙�A�*

	conv_loss^�=(�vQ        )��P	���爙�A�*

	conv_lossl>���        )��P	��爙�A�*

	conv_loss�K>�Y�        )��P	�@�爙�A�*

	conv_loss���=&"W�        )��P	wn�爙�A�*

	conv_loss4+>/T        )��P	'��爙�A�*

	conv_loss.a'>;R�q        )��P	���爙�A�*

	conv_lossǜ>��o�        )��P	��爙�A�*

	conv_lossD >(���        )��P	��爙�A�*

	conv_loss1�>�o��        )��P	�@�爙�A�*

	conv_lossѯ>�rs        )��P	�t�爙�A�*

	conv_loss��>���g        )��P	���爙�A�*

	conv_loss�>?��        )��P	���爙�A�*

	conv_lossri>Qp@1        )��P	���爙�A�*

	conv_loss�o>ܼ$#        )��P	�#�爙�A�*

	conv_loss��>�A��        )��P	nO�爙�A�*

	conv_loss��>�x%@        )��P	�y�爙�A�*

	conv_loss�w>g`�^        )��P	{��爙�A�*

	conv_loss�	>[˔        )��P	���爙�A�*

	conv_loss��=����        )��P	}��爙�A�*

	conv_loss�d>����        )��P	M$�爙�A�*

	conv_loss��>Ն�         )��P	NO�爙�A�*

	conv_loss�>xB��        )��P	�z�爙�A�*

	conv_loss��>$�5�        )��P	Ӣ�爙�A�*

	conv_loss��>!�}k        )��P	��爙�A�*

	conv_loss�1>~�d�        )��P	���爙�A�*

	conv_loss��>9T60        )��P	!�爙�A�*

	conv_lossl�>0�r�        )��P	K�爙�A�*

	conv_loss)� >^��6        )��P	0s�爙�A�*

	conv_lossm~>�?�W        )��P	��爙�A�*

	conv_lossO5>t�lV        )��P	���爙�A�*

	conv_lossu�>�        )��P	K��爙�A�*

	conv_loss���=U���        )��P	V�爙�A�*

	conv_loss�&>��        )��P	�E�爙�A�*

	conv_loss��>�p L        )��P	iq�爙�A�*

	conv_lossI4�=�*�        )��P	S��爙�A�*

	conv_loss5 >��        )��P	��爙�A�*

	conv_loss�>A/��        )��P	�爙�A�*

	conv_loss)>�#y�        )��P	�.�爙�A�*

	conv_loss��>���        )��P	qW�爙�A�*

	conv_lossK>!>o��        )��P	���爙�A�*

	conv_lossdQ>�>�/        )��P	ϭ�爙�A�*

	conv_loss>W>(�        )��P	���爙�A�*

	conv_lossL�>�K        )��P	���爙�A�*

	conv_lossP�>�C��        )��P	`(�爙�A�*

	conv_lossI�=����        )��P	�O�爙�A�*

	conv_loss�O>0��        )��P	��爙�A�*

	conv_loss���=��m8        )��P	��爙�A�*

	conv_loss�#>�J        )��P	��爙�A�*

	conv_loss��>��ǲ        )��P	_�爙�A�*

	conv_lossx�>`��H        )��P	�1�爙�A�*

	conv_lossF>�|�        )��P	^�爙�A�*

	conv_loss��>�+%{        )��P	ܔ�爙�A�*

	conv_loss
�!>e-3        )��P	]��爙�A�*

	conv_loss��=����        )��P	���爙�A�*

	conv_loss�/>!=��        )��P	��爙�A�*

	conv_loss��>]d�        )��P	nF�爙�A�*

	conv_loss��>�x�        )��P	�u�爙�A�*

	conv_loss#>�|�        )��P	x��爙�A�*

	conv_loss�&>�^$g        )��P	���爙�A�*

	conv_loss"Y>_5        )��P	���爙�A�*

	conv_loss�>���        )��P	5!�爙�A�*

	conv_lossd�>l�/�        )��P	�L�爙�A�*

	conv_lossu�>�|�        )��P	�t�爙�A�*

	conv_lossOW>�_��        )��P	���爙�A�*

	conv_lossԵ>MW��        )��P	)��爙�A�*

	conv_loss4�>��        )��P	]��爙�A�*

	conv_loss�*�=cRc        )��P	f�爙�A�*

	conv_loss A>Q9�        )��P	�D�爙�A�*

	conv_lossy��=��R�        )��P	Qp�爙�A�*

	conv_loss"N>ၴ[        )��P	3��爙�A�*

	conv_loss��>��~�        )��P	���爙�A�*

	conv_losss/>q�c[        )��P	F��爙�A�*

	conv_lossl&�=u�w	        )��P	��爙�A�*

	conv_loss�u>
12{        )��P	`E�爙�A�*

	conv_loss>�W�        )��P	�p�爙�A�*

	conv_loss��>b�W�        )��P	d��爙�A�*

	conv_lossԄ�=��+�        )��P	,��爙�A�*

	conv_loss`��=��Sk        )��P	���爙�A�*

	conv_loss�@�=�]|        )��P	��爙�A�*

	conv_loss~>��p�        )��P	�F�爙�A�*

	conv_lossU
>�A��        )��P	{p�爙�A�*

	conv_loss��>I�/�        )��P	7��爙�A�*

	conv_loss�P>c�{�        )��P	��爙�A�*

	conv_loss�+�=�{�        )��P	���爙�A�*

	conv_loss�>^|l�        )��P	{�爙�A�*

	conv_losso�=���        )��P	�P�爙�A�*

	conv_loss�s>6q��        )��P	~�爙�A�*

	conv_loss�� >�#�}        )��P	ͧ�爙�A�*

	conv_loss'Z�=E���        )��P	��爙�A�*

	conv_loss�N>A���        )��P	H��爙�A�*

	conv_loss��=��W        )��P	)�爙�A�*

	conv_loss���=��/C        )��P	�R�爙�A�*

	conv_loss� >�M�        )��P	�|�爙�A�*

	conv_loss�>/"1        )��P	��爙�A�*

	conv_loss��>        )��P	��爙�A�*

	conv_loss{�>����        )��P	��爙�A�*

	conv_loss���=��8        )��P	e.�爙�A�*

	conv_loss+�> ��        )��P	�X�爙�A�*

	conv_loss'��=��        )��P	`��爙�A�*

	conv_loss�5>c�;B        )��P	���爙�A�*

	conv_lossF>5E$�        )��P	���爙�A�*

	conv_loss�>;���        )��P	o!�爙�A�*

	conv_lossN>3��)        )��P	�K�爙�A�*

	conv_loss#2�=��        )��P	hu�爙�A�*

	conv_lossm�>F���        )��P	*��爙�A�*

	conv_lossg�>խ��        )��P	���爙�A�*

	conv_loss�$>�{�f        )��P	'��爙�A�*

	conv_losslT�=M�        )��P	k�爙�A�*

	conv_loss3#>x���        )��P	ZI�爙�A�*

	conv_losso	�=M���        )��P	)s�爙�A�*

	conv_loss,�>�X��        )��P	���爙�A�*

	conv_loss�*�=y�m        )��P	d��爙�A�*

	conv_loss��>~��        )��P	��爙�A�*

	conv_loss��=!���        )��P	��爙�A�*

	conv_loss�r
>�r�'        )��P	.K�爙�A�*

	conv_lossb��=��v�        )��P	t�爙�A�*

	conv_loss>�Nq�        )��P	<��爙�A�*

	conv_lossݏ�=5KI�        )��P	|��爙�A�*

	conv_loss�I$>�O{�        )��P	=��爙�A�*

	conv_loss��>�h�D        )��P	
 �爙�A�*

	conv_lossu�	>� Ɏ        )��P	�J�爙�A�*

	conv_loss(�>,�d�        )��P	�u�爙�A�*

	conv_loss�>�F�        )��P	L��爙�A�*

	conv_loss�>w8I{        )��P	���爙�A�*

	conv_loss&}>�R�        )��P	���爙�A�*

	conv_lossc��=�wW�        )��P	�!�爙�A�*

	conv_lossm�=��7�        )��P	�J�爙�A�*

	conv_loss�G>��b        )��P	nu�爙�A�*

	conv_lossq�=	X[�        )��P	��爙�A�*

	conv_loss;3'>o�T        )��P	"��爙�A�*

	conv_loss.�>�y�        )��P	s��爙�A�*

	conv_lossU}�=T���        )��P	��爙�A�*

	conv_loss���=ٹFo        )��P	$I�爙�A�*

	conv_loss���=e��o        )��P	?s�爙�A�*

	conv_loss$)> dB        )��P	��爙�A�*

	conv_loss��$>y �        )��P	���爙�A�*

	conv_loss��>����        )��P	�爙�A�*

	conv_loss�T>/�4        )��P	k.�爙�A�*

	conv_loss�}>֎u�        )��P	�W�爙�A�*

	conv_loss��>�&��        )��P	m��爙�A�*

	conv_loss��=�~o�        )��P	ݬ�爙�A�*

	conv_loss�v>�y�H        )��P	8��爙�A�*

	conv_lossUK�=T��        )��P	{�爙�A�*

	conv_loss���=J��o        )��P	�=�爙�A�*

	conv_loss���=�9|�        )��P	�v�爙�A�*

	conv_loss��>V/c�        )��P	��爙�A�*

	conv_loss��>t���        )��P	���爙�A�*

	conv_loss�y>Ϋy7        )��P	\�爙�A�*

	conv_lossHg�=~m�        )��P	�:�爙�A�*

	conv_loss�y>%�c�        )��P	5d�爙�A�*

	conv_loss��>���        )��P	e��爙�A�*

	conv_lossA��=Sb�|        )��P	|��爙�A�*

	conv_loss�p>Dy(H        )��P	���爙�A�*

	conv_lossv~>�[�        )��P	��爙�A�*

	conv_lossn,�=<�^�        )��P	�<�爙�A�*

	conv_lossPs>p8�        )��P	Af�爙�A�*

	conv_loss��>�-�        )��P	׏�爙�A�*

	conv_loss�f>�]�        )��P	r��爙�A�*

	conv_loss�>.�"0        )��P	3��爙�A�*

	conv_loss=K�=dҳ�        )��P	B"�爙�A�*

	conv_lossW��=�3�        )��P	�K�爙�A�*

	conv_loss�J>����        )��P	}u�爙�A�*

	conv_loss~�>2I~        )��P	!��爙�A�*

	conv_lossL1>n��        )��P	A��爙�A�*

	conv_loss��>H 
�        )��P	���爙�A�*

	conv_loss2!>��GS        )��P	�$�爙�A�*

	conv_lossʥ�=��a        )��P	�N�爙�A�*

	conv_loss ��=�\�        )��P	lx�爙�A�*

	conv_loss��>��p�        )��P	9��爙�A�*

	conv_loss��>���        )��P	j��爙�A�*

	conv_loss�G�=XUݢ        )��P	2��爙�A�*

	conv_loss�H>�0�        )��P	� �爙�A�*

	conv_lossǉ>�nA        )��P	�L�爙�A�*

	conv_lossr�>�3�        )��P	)u�爙�A�*

	conv_loss��=�.��        )��P	���爙�A�*

	conv_loss3��='<vs        )��P	��爙�A�*

	conv_loss	��=r�ř        )��P	���爙�A�*

	conv_lossr��=�s#�        )��P	��爙�A�*

	conv_loss���=;:�        )��P	K�爙�A�*

	conv_loss��>qA^�        )��P	v�爙�A�*

	conv_lossG�>ͥ�        )��P	6��爙�A�*

	conv_lossy>p�>�        )��P	��爙�A�*

	conv_lossR>4        )��P	���爙�A�*

	conv_loss��>���P        )��P	�!�爙�A�*

	conv_loss\O�=C�x�        )��P	�L�爙�A�*

	conv_loss/J >	��T        )��P	���爙�A�*

	conv_loss.�>yu�l        )��P	S��爙�A�*

	conv_loss��>N:�m        )��P	�爙�A�*

	conv_loss�n�=kI.        )��P	i;�爙�A�*

	conv_loss޽�=H/�        )��P	|i�爙�A�*

	conv_loss�	>ж�.        )��P	���爙�A�*

	conv_lossU �=O�8�        )��P	%��爙�A�*

	conv_loss|>�Tk�        )��P	���爙�A�*

	conv_loss"C>�
\        )��P	��爙�A�*

	conv_loss���=J�5        )��P	3>�爙�A�*

	conv_loss��">���        )��P	Dz�爙�A�*

	conv_loss�_�=��         )��P	
��爙�A�*

	conv_loss�G>ڣk        )��P	��爙�A�*

	conv_loss�$!>��4S        )��P	��爙�A�*

	conv_loss@�>x�z�        )��P	�$�爙�A�*

	conv_loss/+ >)�G        )��P	�N�爙�A�*

	conv_losse�>�^�        )��P	��爙�A�*

	conv_loss-��=-�p�        )��P	b��爙�A�*

	conv_lossg�>��c�        )��P	���爙�A�*

	conv_lossM">[�l        )��P	���爙�A�*

	conv_loss�o>�~1~        )��P	)�爙�A�*

	conv_loss��=խ��        )��P	@Q�爙�A�*

	conv_loss�C�=�᪊        )��P	X{�爙�A�*

	conv_loss% �=��\�        )��P	��爙�A�*

	conv_loss�6	>�B        )��P	���爙�A�*

	conv_loss�X
>�t��        )��P	.��爙�A�*

	conv_loss�	>k�p        )��P	�+�爙�A�*

	conv_loss��>�l��        )��P	<W�爙�A�*

	conv_loss���=ZP*�        )��P	���爙�A�*

	conv_loss��>�`P�        )��P	K��爙�A�*

	conv_lossk�>�A��        )��P	���爙�A�*

	conv_loss�g�=�f�        )��P	)��爙�A�*

	conv_loss��=?�        )��P	�&�爙�A�*

	conv_loss��>�wN�        )��P	 Q�爙�A�*

	conv_loss5?�={K^        )��P	K}�爙�A�*

	conv_loss)� >�t`�        )��P	��爙�A�*

	conv_lossp>��        )��P	X��爙�A�*

	conv_loss�n>$�        )��P	���爙�A�*

	conv_lossۇ>��q�        )��P	�"�爙�A�*

	conv_loss� >�H�        )��P	bL�爙�A�*

	conv_losst�>�#t�        )��P	�u�爙�A�*

	conv_loss=��=GN�        )��P	ܞ�爙�A�*

	conv_lossPC�=���        )��P	��爙�A�*

	conv_loss)>"Wl�        )��P	M��爙�A�*

	conv_loss>ǀ�_        )��P	��爙�A�*

	conv_loss��>�RF�        )��P	�E�爙�A�*

	conv_loss��>��<�        )��P	*q�爙�A�*

	conv_loss��>~Vdr        )��P	���爙�A�*

	conv_lossJ��=F�b�        )��P	!��爙�A�*

	conv_loss�E>o]i~        )��P	���爙�A�*

	conv_lossE>�=^���        )��P	�&�爙�A�*

	conv_loss�;�=�`M�        )��P	�P�爙�A�*

	conv_loss�>��6�        )��P	uy�爙�A�*

	conv_loss�>Ѩ;:        )��P	z��爙�A�*

	conv_loss�]�=x9�        )��P	F��爙�A�*

	conv_loss8q>�7�        )��P	���爙�A�*

	conv_loss��>�m�        )��P	�*�爙�A�*

	conv_loss��=E�26        )��P	yT�爙�A�*

	conv_loss:��=)㕏        )��P	�~�爙�A�*

	conv_lossy�>䂒3        )��P	��爙�A�*

	conv_lossej >Nޞ�        )��P	���爙�A�*

	conv_loss,�>���        )��P	��爙�A�*

	conv_loss���=)�        )��P	*8�爙�A�*

	conv_loss�=%�x�        )��P	�c�爙�A�*

	conv_lossw�>�U��        )��P	��爙�A�*

	conv_loss��>�]1�        )��P	c��爙�A�*

	conv_lossr�=����        )��P	���爙�A�*

	conv_loss���=J��        )��P	�爙�A�*

	conv_loss�k>&5�!        )��P	(=�爙�A�*

	conv_loss� >+n�
        )��P	<p�爙�A�*

	conv_loss`y�=<�it        )��P	���爙�A�*

	conv_loss�
>�g��        )��P	��爙�A�*

	conv_loss�x>̼p        )��P	:��爙�A�*

	conv_loss���=�a��        )��P	8'�爙�A�*

	conv_loss&5>���        )��P	PT�爙�A�*

	conv_loss�>;�ɫ        )��P	*~�爙�A�*

	conv_loss�H>+T        )��P	b��爙�A�*

	conv_losso&>�=g@        )��P	~��爙�A�*

	conv_loss�d>���        )��P	���爙�A�*

	conv_loss�O�=�<��        )��P	q(�爙�A�*

	conv_loss�>~��j        )��P	T�爙�A�*

	conv_loss�">��j        )��P	�}�爙�A�*

	conv_loss+�>(��~        )��P	@��爙�A�*

	conv_loss�>�.]\        )��P	C��爙�A�*

	conv_lossX>��L=        )��P	J��爙�A�*

	conv_lossK��=PU�        )��P	$& 舙�A�*

	conv_loss��=x�$%        )��P	�Q 舙�A�*

	conv_lossK�=?�Ȁ        )��P	�~ 舙�A�*

	conv_loss��=W���        )��P	�� 舙�A�*

	conv_loss���=b<+�        )��P	� 舙�A�*

	conv_lossѶ>,��T        )��P	C� 舙�A�*

	conv_loss�h>��ն        )��P	�)舙�A�*

	conv_lossG>��2W        )��P	T舙�A�*

	conv_loss��=V�        )��P	v�舙�A�*

	conv_losse3!>ߌ��        )��P	Q�舙�A�*

	conv_lossz->6n��        )��P	��舙�A�*

	conv_loss�>5 �"        )��P	0�舙�A�*

	conv_loss�>+=2	        )��P	,舙�A�*

	conv_loss���=>�$        )��P	XW舙�A�*

	conv_loss}|>��\        )��P	�舙�A�*

	conv_lossfD�=��]        )��P	;�舙�A�*

	conv_loss���=Q욍        )��P	K�舙�A�*

	conv_loss�>F�        )��P	�舙�A�*

	conv_loss�!
>�/�"        )��P	<舙�A�*

	conv_loss�x>1�t�        )��P	�e舙�A�*

	conv_lossa��=$8�        )��P	��舙�A�*

	conv_loss�D>�{        )��P	��舙�A�*

	conv_loss���=L/e        )��P	0�舙�A�*

	conv_loss�S>=/��        )��P	1舙�A�*

	conv_lossU�>%)��        )��P	DE舙�A�*

	conv_loss��>6�        )��P	�n舙�A�*

	conv_lossR��=6�j�        )��P	'�舙�A�*

	conv_loss�>��d�        )��P	~�舙�A�*

	conv_loss��>��        )��P	�舙�A�*

	conv_lossׯ>��w        )��P	)/舙�A�*

	conv_lossj��=��!0        )��P	�[舙�A�*

	conv_loss��=� F�        )��P	��舙�A�*

	conv_lossh��=|��        )��P	�舙�A�*

	conv_loss�{�=� f�        )��P	y�舙�A�*

	conv_loss6,�=J�1        )��P	�舙�A�*

	conv_losss�>@���        )��P	V2舙�A�*

	conv_lossv`>�LƵ        )��P	�[舙�A�*

	conv_loss��=P���        )��P	O�舙�A�*

	conv_loss��>�ID�        )��P	��舙�A�*

	conv_lossC�>R�_�        )��P	r�舙�A�*

	conv_lossΐ >	�        )��P	{舙�A�*

	conv_lossȘ�=&��-        )��P	7舙�A�*

	conv_lossb�	>�{{        )��P	�a舙�A�*

	conv_loss��>�lYk        )��P	s�舙�A�*

	conv_loss��=��2        )��P	�舙�A�*

	conv_loss��> �M�        )��P	��舙�A�*

	conv_loss�{>R���        )��P	�	舙�A�*

	conv_lossP>I��N        )��P	�3舙�A�*

	conv_loss�'>��.�        )��P	�]舙�A�*

	conv_loss=,�=۳�z        )��P	��舙�A�*

	conv_loss��'>�ڑ�        )��P	�舙�A�*

	conv_loss*�=�"0�        )��P	��舙�A�*

	conv_lossw2�=�        )��P	�	舙�A�*

	conv_loss*��=b�F        )��P	+4	舙�A�*

	conv_loss@�=��         )��P	_	舙�A�*

	conv_lossr$>�j��        )��P	
�	舙�A�*

	conv_lossr��=<<��        )��P	{�	舙�A�*

	conv_lossJ��=fQ�%        )��P	��	舙�A�*

	conv_loss�8�=����        )��P	�	
舙�A�*

	conv_lossl��=c�        )��P	t5
舙�A�*

	conv_lossuF�=���7        )��P	�c
舙�A�*

	conv_loss��=ʰ�        )��P	��
舙�A�*

	conv_loss̊�=d�v        )��P	��
舙�A�*

	conv_loss)A>�Ɣ�        )��P	��
舙�A�*

	conv_lossx'
>`�G        )��P	�舙�A�*

	conv_lossd�=n�j        )��P	`O舙�A�*

	conv_loss�]>�{	�        )��P	�x舙�A�*

	conv_loss��=��N        )��P	��舙�A�*

	conv_lossY�>%a?�        )��P	1�舙�A�*

	conv_loss�>�e8R        )��P	*�舙�A�*

	conv_lossu|�=ƣ��        )��P	y'舙�A�*

	conv_loss�1>p�̞        )��P	�S舙�A�*

	conv_loss�F>M��        )��P	�舙�A�*

	conv_lossx��=���        )��P	Y�舙�A�*

	conv_loss{��=���        )��P	L�舙�A�*

	conv_loss�
>t��        )��P	N 舙�A�*

	conv_loss��>��@'        )��P	�K舙�A�*

	conv_loss!'�=u��        )��P	*v舙�A�*

	conv_losss�=�/b        )��P	��舙�A�*

	conv_loss�v>&w        )��P	�舙�A�*

	conv_loss��>��/        )��P	8�舙�A�*

	conv_loss�>�<f�        )��P		,舙�A�*

	conv_lossg>cq�        )��P	�W舙�A�*

	conv_lossQ>�qW|        )��P	��舙�A�*

	conv_loss|_�=Nf5w        )��P	��舙�A�*

	conv_loss�k�=��y        )��P	v�舙�A�*

	conv_loss�n�=7��        )��P	 舙�A�*

	conv_loss�d	>����        )��P	�=舙�A�*

	conv_loss�7>I?�:        )��P	�m舙�A�*

	conv_loss��=D��        )��P	[�舙�A�*

	conv_loss�e�=����        )��P	7�舙�A�*

	conv_loss��=����        )��P	��舙�A�*

	conv_loss��=�P�        )��P	x舙�A�*

	conv_loss�>��(�        )��P	I舙�A�*

	conv_loss6n�=p��N        )��P	^t舙�A�*

	conv_loss��=���        )��P	5�舙�A�*

	conv_loss�-�=ת��        )��P	V�舙�A�*

	conv_loss^��=sK	        )��P	{�舙�A�*

	conv_loss+�=���        )��P	 舙�A�*

	conv_loss�U�= ?��        )��P	K舙�A�*

	conv_loss�@>�h�a        )��P	�u舙�A�*

	conv_loss@�>h�7�        )��P	��舙�A�*

	conv_loss�O�=���l        )��P	��舙�A�*

	conv_loss-'>���y        )��P	��舙�A�*

	conv_loss~�=���E        )��P	}$舙�A�*

	conv_loss���=p��        )��P	�M舙�A�*

	conv_loss�A�=#��        )��P	�y舙�A�*

	conv_lossL�=L=�        )��P	ߤ舙�A�*

	conv_loss��>`P7�        )��P	��舙�A�*

	conv_loss��>촳�        )��P	��舙�A�*

	conv_lossM�!>�׀I        )��P	�'舙�A�*

	conv_loss�� >�)��        )��P	_U舙�A�*

	conv_loss��>V�xc        )��P	<�舙�A�*

	conv_lossO��=%7\J        )��P	J�舙�A�*

	conv_loss�t�=0�
X