       �K"	   숙�Abrain.Event:2���~��     �g��	h 숙�A"��
~
PlaceholderPlaceholder*$
shape:���������*
dtype0*/
_output_shapes
:���������
p
Placeholder_1Placeholder*
shape:���������
*
dtype0*'
_output_shapes
:���������

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
,conv2d/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: * 
_class
loc:@conv2d/kernel*
valueB
 *���>*
dtype0
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
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
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
conv2d/Conv2DConv2DPlaceholderconv2d/kernel/read*
paddingSAME*/
_output_shapes
:���������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
*batch_normalization/gamma/Initializer/onesConst*,
_class"
 loc:@batch_normalization/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization/gamma
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container 
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
�
*batch_normalization/beta/Initializer/zerosConst*+
_class!
loc:@batch_normalization/beta*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape:
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
:*
use_locking(
�
batch_normalization/beta/readIdentitybatch_normalization/beta*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
�
1batch_normalization/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
	container *
shape:
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
_output_shapes
:*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
�
4batch_normalization/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB*  �?
�
#batch_normalization/moving_variance
VariableV2*
shared_name *6
_class,
*(loc:@batch_normalization/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
n
batch_normalization/cond/SwitchSwitchPlaceholder_2Placeholder_2*
_output_shapes

::*
T0

s
!batch_normalization/cond/switch_tIdentity!batch_normalization/cond/Switch:1*
_output_shapes
:*
T0

q
!batch_normalization/cond/switch_fIdentitybatch_normalization/cond/Switch*
T0
*
_output_shapes
:
^
 batch_normalization/cond/pred_idIdentityPlaceholder_2*
_output_shapes
:*
T0

�
batch_normalization/cond/ConstConst"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
 batch_normalization/cond/Const_1Const"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
.batch_normalization/cond/FusedBatchNorm/SwitchSwitchconv2d/Conv2D batch_normalization/cond/pred_id*
T0* 
_class
loc:@conv2d/Conv2D*J
_output_shapes8
6:���������:���������
�
0batch_normalization/cond/FusedBatchNorm/Switch_1Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id* 
_output_shapes
::*
T0*,
_class"
 loc:@batch_normalization/gamma
�
0batch_normalization/cond/FusedBatchNorm/Switch_2Switchbatch_normalization/beta/read batch_normalization/cond/pred_id*
T0*+
_class!
loc:@batch_normalization/beta* 
_output_shapes
::
�
'batch_normalization/cond/FusedBatchNormFusedBatchNorm0batch_normalization/cond/FusedBatchNorm/Switch:12batch_normalization/cond/FusedBatchNorm/Switch_1:12batch_normalization/cond/FusedBatchNorm/Switch_2:1batch_normalization/cond/Const batch_normalization/cond/Const_1*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(*
epsilon%o�:*
T0
�
0batch_normalization/cond/FusedBatchNorm_1/SwitchSwitchconv2d/Conv2D batch_normalization/cond/pred_id*
T0* 
_class
loc:@conv2d/Conv2D*J
_output_shapes8
6:���������:���������
�
2batch_normalization/cond/FusedBatchNorm_1/Switch_1Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id* 
_output_shapes
::*
T0*,
_class"
 loc:@batch_normalization/gamma
�
2batch_normalization/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization/beta/read batch_normalization/cond/pred_id*
T0*+
_class!
loc:@batch_normalization/beta* 
_output_shapes
::
�
2batch_normalization/cond/FusedBatchNorm_1/Switch_3Switch$batch_normalization/moving_mean/read batch_normalization/cond/pred_id*
T0*2
_class(
&$loc:@batch_normalization/moving_mean* 
_output_shapes
::
�
2batch_normalization/cond/FusedBatchNorm_1/Switch_4Switch(batch_normalization/moving_variance/read batch_normalization/cond/pred_id*6
_class,
*(loc:@batch_normalization/moving_variance* 
_output_shapes
::*
T0
�
)batch_normalization/cond/FusedBatchNorm_1FusedBatchNorm0batch_normalization/cond/FusedBatchNorm_1/Switch2batch_normalization/cond/FusedBatchNorm_1/Switch_12batch_normalization/cond/FusedBatchNorm_1/Switch_22batch_normalization/cond/FusedBatchNorm_1/Switch_32batch_normalization/cond/FusedBatchNorm_1/Switch_4*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( 
�
batch_normalization/cond/MergeMerge)batch_normalization/cond/FusedBatchNorm_1'batch_normalization/cond/FusedBatchNorm*1
_output_shapes
:���������: *
T0*
N
�
 batch_normalization/cond/Merge_1Merge+batch_normalization/cond/FusedBatchNorm_1:1)batch_normalization/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
�
 batch_normalization/cond/Merge_2Merge+batch_normalization/cond/FusedBatchNorm_1:2)batch_normalization/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
i
$batch_normalization/ExpandDims/inputConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
d
"batch_normalization/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
batch_normalization/ExpandDims
ExpandDims$batch_normalization/ExpandDims/input"batch_normalization/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
k
&batch_normalization/ExpandDims_1/inputConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
$batch_normalization/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization/ExpandDims_1
ExpandDims&batch_normalization/ExpandDims_1/input$batch_normalization/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
k
!batch_normalization/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization/ReshapeReshapePlaceholder_2!batch_normalization/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization/SelectSelectbatch_normalization/Reshapebatch_normalization/ExpandDims batch_normalization/ExpandDims_1*
_output_shapes
:*
T0
z
batch_normalization/SqueezeSqueezebatch_normalization/Select*
squeeze_dims
 *
T0*
_output_shapes
: 
�
(batch_normalization/AssignMovingAvg/readIdentitybatch_normalization/moving_mean*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/SubSub(batch_normalization/AssignMovingAvg/read batch_normalization/cond/Merge_1*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
�
'batch_normalization/AssignMovingAvg/MulMul'batch_normalization/AssignMovingAvg/Subbatch_normalization/Squeeze*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
�
#batch_normalization/AssignMovingAvg	AssignSubbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/Mul*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
use_locking( 
�
*batch_normalization/AssignMovingAvg_1/readIdentity#batch_normalization/moving_variance*
_output_shapes
:*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
�
)batch_normalization/AssignMovingAvg_1/SubSub*batch_normalization/AssignMovingAvg_1/read batch_normalization/cond/Merge_2*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/MulMul)batch_normalization/AssignMovingAvg_1/Subbatch_normalization/Squeeze*
_output_shapes
:*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
�
%batch_normalization/AssignMovingAvg_1	AssignSub#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/Mul*
use_locking( *
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
f
ReluRelubatch_normalization/cond/Merge*
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
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
valueB
 *�[q>
�
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 *
dtype0
�
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
�
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_1/kernel
�
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:*
T0
�
conv2d_1/kernel
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_1/kernel
�
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
:
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
conv2d_2/Conv2DConv2DReluconv2d_1/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
�
,batch_normalization_1/gamma/Initializer/onesConst*
_output_shapes
:*.
_class$
" loc:@batch_normalization_1/gamma*
valueB*  �?*
dtype0
�
batch_normalization_1/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:
�
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:*
T0
�
,batch_normalization_1/beta/Initializer/zerosConst*
_output_shapes
:*-
_class#
!loc:@batch_normalization_1/beta*
valueB*    *
dtype0
�
batch_normalization_1/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container 
�
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:
�
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
_output_shapes
:*
T0*-
_class#
!loc:@batch_normalization_1/beta
�
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_1/moving_mean
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean
�
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(
�
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
�
6batch_normalization_1/moving_variance/Initializer/onesConst*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB*  �?*
dtype0
�
%batch_normalization_1/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
�
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:
�
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
p
!batch_normalization_2/cond/SwitchSwitchPlaceholder_2Placeholder_2*
T0
*
_output_shapes

::
w
#batch_normalization_2/cond/switch_tIdentity#batch_normalization_2/cond/Switch:1*
_output_shapes
:*
T0

u
#batch_normalization_2/cond/switch_fIdentity!batch_normalization_2/cond/Switch*
_output_shapes
:*
T0

`
"batch_normalization_2/cond/pred_idIdentityPlaceholder_2*
T0
*
_output_shapes
:
�
 batch_normalization_2/cond/ConstConst$^batch_normalization_2/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
"batch_normalization_2/cond/Const_1Const$^batch_normalization_2/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
0batch_normalization_2/cond/FusedBatchNorm/SwitchSwitchconv2d_2/Conv2D"batch_normalization_2/cond/pred_id*
T0*"
_class
loc:@conv2d_2/Conv2D*J
_output_shapes8
6:���������:���������
�
2batch_normalization_2/cond/FusedBatchNorm/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_2/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
::
�
2batch_normalization_2/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_2/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
::
�
)batch_normalization_2/cond/FusedBatchNormFusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm/Switch:14batch_normalization_2/cond/FusedBatchNorm/Switch_1:14batch_normalization_2/cond/FusedBatchNorm/Switch_2:1 batch_normalization_2/cond/Const"batch_normalization_2/cond/Const_1*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(*
epsilon%o�:*
T0
�
2batch_normalization_2/cond/FusedBatchNorm_1/SwitchSwitchconv2d_2/Conv2D"batch_normalization_2/cond/pred_id*
T0*"
_class
loc:@conv2d_2/Conv2D*J
_output_shapes8
6:���������:���������
�
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_2/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
::
�
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_2/cond/pred_id*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
::*
T0
�
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_1/moving_mean/read"batch_normalization_2/cond/pred_id* 
_output_shapes
::*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_1/moving_variance/read"batch_normalization_2/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance* 
_output_shapes
::
�
+batch_normalization_2/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm_1/Switch4batch_normalization_2/cond/FusedBatchNorm_1/Switch_14batch_normalization_2/cond/FusedBatchNorm_1/Switch_24batch_normalization_2/cond/FusedBatchNorm_1/Switch_34batch_normalization_2/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0
�
 batch_normalization_2/cond/MergeMerge+batch_normalization_2/cond/FusedBatchNorm_1)batch_normalization_2/cond/FusedBatchNorm*
T0*
N*1
_output_shapes
:���������: 
�
"batch_normalization_2/cond/Merge_1Merge-batch_normalization_2/cond/FusedBatchNorm_1:1+batch_normalization_2/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
�
"batch_normalization_2/cond/Merge_2Merge-batch_normalization_2/cond/FusedBatchNorm_1:2+batch_normalization_2/cond/FusedBatchNorm:2*
N*
_output_shapes

:: *
T0
k
&batch_normalization_2/ExpandDims/inputConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
f
$batch_normalization_2/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
 batch_normalization_2/ExpandDims
ExpandDims&batch_normalization_2/ExpandDims/input$batch_normalization_2/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
m
(batch_normalization_2/ExpandDims_1/inputConst*
dtype0*
_output_shapes
: *
valueB
 *    
h
&batch_normalization_2/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_2/ExpandDims_1
ExpandDims(batch_normalization_2/ExpandDims_1/input&batch_normalization_2/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
m
#batch_normalization_2/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_2/ReshapeReshapePlaceholder_2#batch_normalization_2/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_2/SelectSelectbatch_normalization_2/Reshape batch_normalization_2/ExpandDims"batch_normalization_2/ExpandDims_1*
_output_shapes
:*
T0
~
batch_normalization_2/SqueezeSqueezebatch_normalization_2/Select*
T0*
_output_shapes
: *
squeeze_dims
 
�
*batch_normalization_2/AssignMovingAvg/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
)batch_normalization_2/AssignMovingAvg/SubSub*batch_normalization_2/AssignMovingAvg/read"batch_normalization_2/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
�
)batch_normalization_2/AssignMovingAvg/MulMul)batch_normalization_2/AssignMovingAvg/Subbatch_normalization_2/Squeeze*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:*
T0
�
%batch_normalization_2/AssignMovingAvg	AssignSub!batch_normalization_1/moving_mean)batch_normalization_2/AssignMovingAvg/Mul*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:*
use_locking( 
�
,batch_normalization_2/AssignMovingAvg_1/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
�
+batch_normalization_2/AssignMovingAvg_1/SubSub,batch_normalization_2/AssignMovingAvg_1/read"batch_normalization_2/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
�
+batch_normalization_2/AssignMovingAvg_1/MulMul+batch_normalization_2/AssignMovingAvg_1/Subbatch_normalization_2/Squeeze*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
�
'batch_normalization_2/AssignMovingAvg_1	AssignSub%batch_normalization_1/moving_variance+batch_normalization_2/AssignMovingAvg_1/Mul*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:*
use_locking( 
j
Relu_1Relu batch_normalization_2/cond/Merge*/
_output_shapes
:���������*
T0
�
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_2/kernel*%
valueB"            
�
.conv2d_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel*
valueB
 *��:�*
dtype0
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
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
T0
�
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
�
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
�
conv2d_2/kernel
VariableV2*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
�
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
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
conv2d_3/Conv2DConv2DRelu_1conv2d_2/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
�
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_2/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:
�
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:
�
,batch_normalization_2/beta/Initializer/zerosConst*
_output_shapes
:*-
_class#
!loc:@batch_normalization_2/beta*
valueB*    *
dtype0
�
batch_normalization_2/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:
�
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(
�
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:
�
3batch_normalization_2/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_2/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape:
�
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:
�
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
�
6batch_normalization_2/moving_variance/Initializer/onesConst*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB*  �?*
dtype0
�
%batch_normalization_2/moving_variance
VariableV2*8
_class.
,*loc:@batch_normalization_2/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:
�
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
p
!batch_normalization_3/cond/SwitchSwitchPlaceholder_2Placeholder_2*
_output_shapes

::*
T0

w
#batch_normalization_3/cond/switch_tIdentity#batch_normalization_3/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_3/cond/switch_fIdentity!batch_normalization_3/cond/Switch*
T0
*
_output_shapes
:
`
"batch_normalization_3/cond/pred_idIdentityPlaceholder_2*
T0
*
_output_shapes
:
�
 batch_normalization_3/cond/ConstConst$^batch_normalization_3/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
"batch_normalization_3/cond/Const_1Const$^batch_normalization_3/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
0batch_normalization_3/cond/FusedBatchNorm/SwitchSwitchconv2d_3/Conv2D"batch_normalization_3/cond/pred_id*J
_output_shapes8
6:���������:���������*
T0*"
_class
loc:@conv2d_3/Conv2D
�
2batch_normalization_3/cond/FusedBatchNorm/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_3/cond/pred_id* 
_output_shapes
::*
T0*.
_class$
" loc:@batch_normalization_2/gamma
�
2batch_normalization_3/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_3/cond/pred_id* 
_output_shapes
::*
T0*-
_class#
!loc:@batch_normalization_2/beta
�
)batch_normalization_3/cond/FusedBatchNormFusedBatchNorm2batch_normalization_3/cond/FusedBatchNorm/Switch:14batch_normalization_3/cond/FusedBatchNorm/Switch_1:14batch_normalization_3/cond/FusedBatchNorm/Switch_2:1 batch_normalization_3/cond/Const"batch_normalization_3/cond/Const_1*G
_output_shapes5
3:���������::::*
is_training(*
epsilon%o�:*
T0*
data_formatNHWC
�
2batch_normalization_3/cond/FusedBatchNorm_1/SwitchSwitchconv2d_3/Conv2D"batch_normalization_3/cond/pred_id*
T0*"
_class
loc:@conv2d_3/Conv2D*J
_output_shapes8
6:���������:���������
�
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_3/cond/pred_id* 
_output_shapes
::*
T0*.
_class$
" loc:@batch_normalization_2/gamma
�
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_3/cond/pred_id* 
_output_shapes
::*
T0*-
_class#
!loc:@batch_normalization_2/beta
�
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_2/moving_mean/read"batch_normalization_3/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean* 
_output_shapes
::
�
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_2/moving_variance/read"batch_normalization_3/cond/pred_id*8
_class.
,*loc:@batch_normalization_2/moving_variance* 
_output_shapes
::*
T0
�
+batch_normalization_3/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_3/cond/FusedBatchNorm_1/Switch4batch_normalization_3/cond/FusedBatchNorm_1/Switch_14batch_normalization_3/cond/FusedBatchNorm_1/Switch_24batch_normalization_3/cond/FusedBatchNorm_1/Switch_34batch_normalization_3/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0
�
 batch_normalization_3/cond/MergeMerge+batch_normalization_3/cond/FusedBatchNorm_1)batch_normalization_3/cond/FusedBatchNorm*
T0*
N*1
_output_shapes
:���������: 
�
"batch_normalization_3/cond/Merge_1Merge-batch_normalization_3/cond/FusedBatchNorm_1:1+batch_normalization_3/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
�
"batch_normalization_3/cond/Merge_2Merge-batch_normalization_3/cond/FusedBatchNorm_1:2+batch_normalization_3/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
k
&batch_normalization_3/ExpandDims/inputConst*
_output_shapes
: *
valueB
 *
�#<*
dtype0
f
$batch_normalization_3/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization_3/ExpandDims
ExpandDims&batch_normalization_3/ExpandDims/input$batch_normalization_3/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
m
(batch_normalization_3/ExpandDims_1/inputConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
&batch_normalization_3/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_3/ExpandDims_1
ExpandDims(batch_normalization_3/ExpandDims_1/input&batch_normalization_3/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
m
#batch_normalization_3/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
batch_normalization_3/ReshapeReshapePlaceholder_2#batch_normalization_3/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_3/SelectSelectbatch_normalization_3/Reshape batch_normalization_3/ExpandDims"batch_normalization_3/ExpandDims_1*
T0*
_output_shapes
:
~
batch_normalization_3/SqueezeSqueezebatch_normalization_3/Select*
squeeze_dims
 *
T0*
_output_shapes
: 
�
*batch_normalization_3/AssignMovingAvg/readIdentity!batch_normalization_2/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
�
)batch_normalization_3/AssignMovingAvg/SubSub*batch_normalization_3/AssignMovingAvg/read"batch_normalization_3/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
�
)batch_normalization_3/AssignMovingAvg/MulMul)batch_normalization_3/AssignMovingAvg/Subbatch_normalization_3/Squeeze*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
�
%batch_normalization_3/AssignMovingAvg	AssignSub!batch_normalization_2/moving_mean)batch_normalization_3/AssignMovingAvg/Mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
�
,batch_normalization_3/AssignMovingAvg_1/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
�
+batch_normalization_3/AssignMovingAvg_1/SubSub,batch_normalization_3/AssignMovingAvg_1/read"batch_normalization_3/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
�
+batch_normalization_3/AssignMovingAvg_1/MulMul+batch_normalization_3/AssignMovingAvg_1/Subbatch_normalization_3/Squeeze*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:*
T0
�
'batch_normalization_3/AssignMovingAvg_1	AssignSub%batch_normalization_2/moving_variance+batch_normalization_3/AssignMovingAvg_1/Mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
j
Relu_2Relu batch_normalization_3/cond/Merge*/
_output_shapes
:���������*
T0
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
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_3/kernel
�
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
�
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:
�
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
T0
�
conv2d_3/kernel
VariableV2*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
�
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(
�
conv2d_3/kernel/readIdentityconv2d_3/kernel*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_3/kernel
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_4/Conv2DConv2DRelu_2conv2d_3/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
�
,batch_normalization_3/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_3/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_3/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_3/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(
�
 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:
�
,batch_normalization_3/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_3/beta*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization_3/beta
VariableV2*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_3/beta*
	container *
shape:*
dtype0
�
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(
�
batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*
_output_shapes
:*
T0*-
_class#
!loc:@batch_normalization_3/beta
�
3batch_normalization_3/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_3/moving_mean
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_3/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
�
(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes
:
�
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
�
6batch_normalization_3/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_3/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
%batch_normalization_3/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *8
_class.
,*loc:@batch_normalization_3/moving_variance
�
,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
p
!batch_normalization_4/cond/SwitchSwitchPlaceholder_2Placeholder_2*
T0
*
_output_shapes

::
w
#batch_normalization_4/cond/switch_tIdentity#batch_normalization_4/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_4/cond/switch_fIdentity!batch_normalization_4/cond/Switch*
T0
*
_output_shapes
:
`
"batch_normalization_4/cond/pred_idIdentityPlaceholder_2*
T0
*
_output_shapes
:
�
 batch_normalization_4/cond/ConstConst$^batch_normalization_4/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
"batch_normalization_4/cond/Const_1Const$^batch_normalization_4/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
0batch_normalization_4/cond/FusedBatchNorm/SwitchSwitchconv2d_4/Conv2D"batch_normalization_4/cond/pred_id*
T0*"
_class
loc:@conv2d_4/Conv2D*J
_output_shapes8
6:���������:���������
�
2batch_normalization_4/cond/FusedBatchNorm/Switch_1Switch batch_normalization_3/gamma/read"batch_normalization_4/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_3/gamma* 
_output_shapes
::
�
2batch_normalization_4/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_3/beta/read"batch_normalization_4/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_3/beta* 
_output_shapes
::
�
)batch_normalization_4/cond/FusedBatchNormFusedBatchNorm2batch_normalization_4/cond/FusedBatchNorm/Switch:14batch_normalization_4/cond/FusedBatchNorm/Switch_1:14batch_normalization_4/cond/FusedBatchNorm/Switch_2:1 batch_normalization_4/cond/Const"batch_normalization_4/cond/Const_1*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(
�
2batch_normalization_4/cond/FusedBatchNorm_1/SwitchSwitchconv2d_4/Conv2D"batch_normalization_4/cond/pred_id*
T0*"
_class
loc:@conv2d_4/Conv2D*J
_output_shapes8
6:���������:���������
�
4batch_normalization_4/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_3/gamma/read"batch_normalization_4/cond/pred_id*.
_class$
" loc:@batch_normalization_3/gamma* 
_output_shapes
::*
T0
�
4batch_normalization_4/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_3/beta/read"batch_normalization_4/cond/pred_id* 
_output_shapes
::*
T0*-
_class#
!loc:@batch_normalization_3/beta
�
4batch_normalization_4/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_3/moving_mean/read"batch_normalization_4/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean* 
_output_shapes
::
�
4batch_normalization_4/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_3/moving_variance/read"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_3/moving_variance* 
_output_shapes
::*
T0
�
+batch_normalization_4/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_4/cond/FusedBatchNorm_1/Switch4batch_normalization_4/cond/FusedBatchNorm_1/Switch_14batch_normalization_4/cond/FusedBatchNorm_1/Switch_24batch_normalization_4/cond/FusedBatchNorm_1/Switch_34batch_normalization_4/cond/FusedBatchNorm_1/Switch_4*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( 
�
 batch_normalization_4/cond/MergeMerge+batch_normalization_4/cond/FusedBatchNorm_1)batch_normalization_4/cond/FusedBatchNorm*
T0*
N*1
_output_shapes
:���������: 
�
"batch_normalization_4/cond/Merge_1Merge-batch_normalization_4/cond/FusedBatchNorm_1:1+batch_normalization_4/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
�
"batch_normalization_4/cond/Merge_2Merge-batch_normalization_4/cond/FusedBatchNorm_1:2+batch_normalization_4/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
k
&batch_normalization_4/ExpandDims/inputConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
f
$batch_normalization_4/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization_4/ExpandDims
ExpandDims&batch_normalization_4/ExpandDims/input$batch_normalization_4/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
m
(batch_normalization_4/ExpandDims_1/inputConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
&batch_normalization_4/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
"batch_normalization_4/ExpandDims_1
ExpandDims(batch_normalization_4/ExpandDims_1/input&batch_normalization_4/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
m
#batch_normalization_4/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
batch_normalization_4/ReshapeReshapePlaceholder_2#batch_normalization_4/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_4/SelectSelectbatch_normalization_4/Reshape batch_normalization_4/ExpandDims"batch_normalization_4/ExpandDims_1*
_output_shapes
:*
T0
~
batch_normalization_4/SqueezeSqueezebatch_normalization_4/Select*
_output_shapes
: *
squeeze_dims
 *
T0
�
*batch_normalization_4/AssignMovingAvg/readIdentity!batch_normalization_3/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
�
)batch_normalization_4/AssignMovingAvg/SubSub*batch_normalization_4/AssignMovingAvg/read"batch_normalization_4/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
�
)batch_normalization_4/AssignMovingAvg/MulMul)batch_normalization_4/AssignMovingAvg/Subbatch_normalization_4/Squeeze*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
�
%batch_normalization_4/AssignMovingAvg	AssignSub!batch_normalization_3/moving_mean)batch_normalization_4/AssignMovingAvg/Mul*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:*
use_locking( 
�
,batch_normalization_4/AssignMovingAvg_1/readIdentity%batch_normalization_3/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:
�
+batch_normalization_4/AssignMovingAvg_1/SubSub,batch_normalization_4/AssignMovingAvg_1/read"batch_normalization_4/cond/Merge_2*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
�
+batch_normalization_4/AssignMovingAvg_1/MulMul+batch_normalization_4/AssignMovingAvg_1/Subbatch_normalization_4/Squeeze*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:
�
'batch_normalization_4/AssignMovingAvg_1	AssignSub%batch_normalization_3/moving_variance+batch_normalization_4/AssignMovingAvg_1/Mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:
j
Relu_3Relu batch_normalization_4/cond/Merge*/
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
.conv2d_4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_4/kernel*
valueB
 *HY�
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
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 
�
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
T0
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
VariableV2*
shape:*
dtype0*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_4/kernel*
	container 
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
conv2d_5/Conv2DConv2DRelu_3conv2d_4/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
�
,batch_normalization_4/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_4/gamma*
valueB*  �?
�
batch_normalization_4/gamma
VariableV2*
_output_shapes
:*
shared_name *.
_class$
" loc:@batch_normalization_4/gamma*
	container *
shape:*
dtype0
�
"batch_normalization_4/gamma/AssignAssignbatch_normalization_4/gamma,batch_normalization_4/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes
:
�
 batch_normalization_4/gamma/readIdentitybatch_normalization_4/gamma*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:
�
,batch_normalization_4/beta/Initializer/zerosConst*
_output_shapes
:*-
_class#
!loc:@batch_normalization_4/beta*
valueB*    *
dtype0
�
batch_normalization_4/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_4/beta
�
!batch_normalization_4/beta/AssignAssignbatch_normalization_4/beta,batch_normalization_4/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta
�
batch_normalization_4/beta/readIdentitybatch_normalization_4/beta*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:
�
3batch_normalization_4/moving_mean/Initializer/zerosConst*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_4/moving_mean*
valueB*    *
dtype0
�
!batch_normalization_4/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_4/moving_mean*
	container *
shape:
�
(batch_normalization_4/moving_mean/AssignAssign!batch_normalization_4/moving_mean3batch_normalization_4/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
:
�
&batch_normalization_4/moving_mean/readIdentity!batch_normalization_4/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:
�
6batch_normalization_4/moving_variance/Initializer/onesConst*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_4/moving_variance*
valueB*  �?*
dtype0
�
%batch_normalization_4/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_4/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
�
,batch_normalization_4/moving_variance/AssignAssign%batch_normalization_4/moving_variance6batch_normalization_4/moving_variance/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(
�
*batch_normalization_4/moving_variance/readIdentity%batch_normalization_4/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
p
!batch_normalization_5/cond/SwitchSwitchPlaceholder_2Placeholder_2*
T0
*
_output_shapes

::
w
#batch_normalization_5/cond/switch_tIdentity#batch_normalization_5/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_5/cond/switch_fIdentity!batch_normalization_5/cond/Switch*
_output_shapes
:*
T0

`
"batch_normalization_5/cond/pred_idIdentityPlaceholder_2*
T0
*
_output_shapes
:
�
 batch_normalization_5/cond/ConstConst$^batch_normalization_5/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
"batch_normalization_5/cond/Const_1Const$^batch_normalization_5/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
0batch_normalization_5/cond/FusedBatchNorm/SwitchSwitchconv2d_5/Conv2D"batch_normalization_5/cond/pred_id*"
_class
loc:@conv2d_5/Conv2D*J
_output_shapes8
6:���������:���������*
T0
�
2batch_normalization_5/cond/FusedBatchNorm/Switch_1Switch batch_normalization_4/gamma/read"batch_normalization_5/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_4/gamma* 
_output_shapes
::
�
2batch_normalization_5/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_5/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_4/beta* 
_output_shapes
::
�
)batch_normalization_5/cond/FusedBatchNormFusedBatchNorm2batch_normalization_5/cond/FusedBatchNorm/Switch:14batch_normalization_5/cond/FusedBatchNorm/Switch_1:14batch_normalization_5/cond/FusedBatchNorm/Switch_2:1 batch_normalization_5/cond/Const"batch_normalization_5/cond/Const_1*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(
�
2batch_normalization_5/cond/FusedBatchNorm_1/SwitchSwitchconv2d_5/Conv2D"batch_normalization_5/cond/pred_id*
T0*"
_class
loc:@conv2d_5/Conv2D*J
_output_shapes8
6:���������:���������
�
4batch_normalization_5/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_4/gamma/read"batch_normalization_5/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_4/gamma* 
_output_shapes
::
�
4batch_normalization_5/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_5/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_4/beta* 
_output_shapes
::
�
4batch_normalization_5/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_4/moving_mean/read"batch_normalization_5/cond/pred_id*4
_class*
(&loc:@batch_normalization_4/moving_mean* 
_output_shapes
::*
T0
�
4batch_normalization_5/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_4/moving_variance/read"batch_normalization_5/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance* 
_output_shapes
::
�
+batch_normalization_5/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_5/cond/FusedBatchNorm_1/Switch4batch_normalization_5/cond/FusedBatchNorm_1/Switch_14batch_normalization_5/cond/FusedBatchNorm_1/Switch_24batch_normalization_5/cond/FusedBatchNorm_1/Switch_34batch_normalization_5/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0
�
 batch_normalization_5/cond/MergeMerge+batch_normalization_5/cond/FusedBatchNorm_1)batch_normalization_5/cond/FusedBatchNorm*
N*1
_output_shapes
:���������: *
T0
�
"batch_normalization_5/cond/Merge_1Merge-batch_normalization_5/cond/FusedBatchNorm_1:1+batch_normalization_5/cond/FusedBatchNorm:1*
N*
_output_shapes

:: *
T0
�
"batch_normalization_5/cond/Merge_2Merge-batch_normalization_5/cond/FusedBatchNorm_1:2+batch_normalization_5/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
k
&batch_normalization_5/ExpandDims/inputConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
f
$batch_normalization_5/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization_5/ExpandDims
ExpandDims&batch_normalization_5/ExpandDims/input$batch_normalization_5/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
m
(batch_normalization_5/ExpandDims_1/inputConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
&batch_normalization_5/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_5/ExpandDims_1
ExpandDims(batch_normalization_5/ExpandDims_1/input&batch_normalization_5/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
m
#batch_normalization_5/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_5/ReshapeReshapePlaceholder_2#batch_normalization_5/Reshape/shape*
_output_shapes
:*
T0
*
Tshape0
�
batch_normalization_5/SelectSelectbatch_normalization_5/Reshape batch_normalization_5/ExpandDims"batch_normalization_5/ExpandDims_1*
_output_shapes
:*
T0
~
batch_normalization_5/SqueezeSqueezebatch_normalization_5/Select*
squeeze_dims
 *
T0*
_output_shapes
: 
�
*batch_normalization_5/AssignMovingAvg/readIdentity!batch_normalization_4/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:
�
)batch_normalization_5/AssignMovingAvg/SubSub*batch_normalization_5/AssignMovingAvg/read"batch_normalization_5/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:
�
)batch_normalization_5/AssignMovingAvg/MulMul)batch_normalization_5/AssignMovingAvg/Subbatch_normalization_5/Squeeze*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:*
T0
�
%batch_normalization_5/AssignMovingAvg	AssignSub!batch_normalization_4/moving_mean)batch_normalization_5/AssignMovingAvg/Mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:
�
,batch_normalization_5/AssignMovingAvg_1/readIdentity%batch_normalization_4/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
�
+batch_normalization_5/AssignMovingAvg_1/SubSub,batch_normalization_5/AssignMovingAvg_1/read"batch_normalization_5/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
�
+batch_normalization_5/AssignMovingAvg_1/MulMul+batch_normalization_5/AssignMovingAvg_1/Subbatch_normalization_5/Squeeze*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
�
'batch_normalization_5/AssignMovingAvg_1	AssignSub%batch_normalization_4/moving_variance+batch_normalization_5/AssignMovingAvg_1/Mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
j
Relu_4Relu batch_normalization_5/cond/Merge*
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
ReshapeReshapeRelu_4Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
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
VariableV2*
shape:	�d*
dtype0*
_output_shapes
:	�d*
shared_name *
_class
loc:@dense/kernel*
	container 
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
dense/MatMulMatMulReshapedense/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( *
T0
�
,batch_normalization_5/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_5/gamma*
valueBd*  �?*
dtype0*
_output_shapes
:d
�
batch_normalization_5/gamma
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *.
_class$
" loc:@batch_normalization_5/gamma*
	container *
shape:d
�
"batch_normalization_5/gamma/AssignAssignbatch_normalization_5/gamma,batch_normalization_5/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes
:d
�
 batch_normalization_5/gamma/readIdentitybatch_normalization_5/gamma*
_output_shapes
:d*
T0*.
_class$
" loc:@batch_normalization_5/gamma
�
,batch_normalization_5/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_5/beta*
valueBd*    *
dtype0*
_output_shapes
:d
�
batch_normalization_5/beta
VariableV2*
shape:d*
dtype0*
_output_shapes
:d*
shared_name *-
_class#
!loc:@batch_normalization_5/beta*
	container 
�
!batch_normalization_5/beta/AssignAssignbatch_normalization_5/beta,batch_normalization_5/beta/Initializer/zeros*
_output_shapes
:d*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(
�
batch_normalization_5/beta/readIdentitybatch_normalization_5/beta*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
:d
�
3batch_normalization_5/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_5/moving_mean*
valueBd*    *
dtype0*
_output_shapes
:d
�
!batch_normalization_5/moving_mean
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_5/moving_mean*
	container *
shape:d*
dtype0*
_output_shapes
:d
�
(batch_normalization_5/moving_mean/AssignAssign!batch_normalization_5/moving_mean3batch_normalization_5/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes
:d
�
&batch_normalization_5/moving_mean/readIdentity!batch_normalization_5/moving_mean*
_output_shapes
:d*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
�
6batch_normalization_5/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_5/moving_variance*
valueBd*  �?*
dtype0*
_output_shapes
:d
�
%batch_normalization_5/moving_variance
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *8
_class.
,*loc:@batch_normalization_5/moving_variance*
	container *
shape:d
�
,batch_normalization_5/moving_variance/AssignAssign%batch_normalization_5/moving_variance6batch_normalization_5/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance
�
*batch_normalization_5/moving_variance/readIdentity%batch_normalization_5/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
:d
~
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
valueB: *
dtype0
�
"batch_normalization_6/moments/meanMeandense/MatMul4batch_normalization_6/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:d
�
*batch_normalization_6/moments/StopGradientStopGradient"batch_normalization_6/moments/mean*
_output_shapes

:d*
T0
�
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferencedense/MatMul*batch_normalization_6/moments/StopGradient*
T0*'
_output_shapes
:���������d
�
8batch_normalization_6/moments/variance/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
�
&batch_normalization_6/moments/varianceMean/batch_normalization_6/moments/SquaredDifference8batch_normalization_6/moments/variance/reduction_indices*
_output_shapes

:d*
	keep_dims(*

Tidx0*
T0
�
%batch_normalization_6/moments/SqueezeSqueeze"batch_normalization_6/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:d
�
'batch_normalization_6/moments/Squeeze_1Squeeze&batch_normalization_6/moments/variance*
_output_shapes
:d*
squeeze_dims
 *
T0
f
$batch_normalization_6/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization_6/ExpandDims
ExpandDims%batch_normalization_6/moments/Squeeze$batch_normalization_6/ExpandDims/dim*
T0*
_output_shapes

:d*

Tdim0
h
&batch_normalization_6/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_6/ExpandDims_1
ExpandDims&batch_normalization_5/moving_mean/read&batch_normalization_6/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:d
m
#batch_normalization_6/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
�
batch_normalization_6/ReshapeReshapePlaceholder_2#batch_normalization_6/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_6/SelectSelectbatch_normalization_6/Reshape batch_normalization_6/ExpandDims"batch_normalization_6/ExpandDims_1*
_output_shapes

:d*
T0
�
batch_normalization_6/SqueezeSqueezebatch_normalization_6/Select*
_output_shapes
:d*
squeeze_dims
 *
T0
h
&batch_normalization_6/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_6/ExpandDims_2
ExpandDims'batch_normalization_6/moments/Squeeze_1&batch_normalization_6/ExpandDims_2/dim*
_output_shapes

:d*

Tdim0*
T0
h
&batch_normalization_6/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_6/ExpandDims_3
ExpandDims*batch_normalization_5/moving_variance/read&batch_normalization_6/ExpandDims_3/dim*
_output_shapes

:d*

Tdim0*
T0
o
%batch_normalization_6/Reshape_1/shapeConst*
_output_shapes
:*
valueB:*
dtype0
�
batch_normalization_6/Reshape_1ReshapePlaceholder_2%batch_normalization_6/Reshape_1/shape*
_output_shapes
:*
T0
*
Tshape0
�
batch_normalization_6/Select_1Selectbatch_normalization_6/Reshape_1"batch_normalization_6/ExpandDims_2"batch_normalization_6/ExpandDims_3*
T0*
_output_shapes

:d
�
batch_normalization_6/Squeeze_1Squeezebatch_normalization_6/Select_1*
squeeze_dims
 *
T0*
_output_shapes
:d
m
(batch_normalization_6/ExpandDims_4/inputConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
h
&batch_normalization_6/ExpandDims_4/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_6/ExpandDims_4
ExpandDims(batch_normalization_6/ExpandDims_4/input&batch_normalization_6/ExpandDims_4/dim*
_output_shapes
:*

Tdim0*
T0
m
(batch_normalization_6/ExpandDims_5/inputConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
h
&batch_normalization_6/ExpandDims_5/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_6/ExpandDims_5
ExpandDims(batch_normalization_6/ExpandDims_5/input&batch_normalization_6/ExpandDims_5/dim*

Tdim0*
T0*
_output_shapes
:
o
%batch_normalization_6/Reshape_2/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_6/Reshape_2ReshapePlaceholder_2%batch_normalization_6/Reshape_2/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_6/Select_2Selectbatch_normalization_6/Reshape_2"batch_normalization_6/ExpandDims_4"batch_normalization_6/ExpandDims_5*
T0*
_output_shapes
:
�
batch_normalization_6/Squeeze_2Squeezebatch_normalization_6/Select_2*
squeeze_dims
 *
T0*
_output_shapes
: 
�
+batch_normalization_6/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*4
_class*
(&loc:@batch_normalization_5/moving_mean
�
)batch_normalization_6/AssignMovingAvg/subSub+batch_normalization_6/AssignMovingAvg/sub/xbatch_normalization_6/Squeeze_2*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
: 
�
+batch_normalization_6/AssignMovingAvg/sub_1Sub&batch_normalization_5/moving_mean/readbatch_normalization_6/Squeeze*
_output_shapes
:d*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
�
)batch_normalization_6/AssignMovingAvg/mulMul+batch_normalization_6/AssignMovingAvg/sub_1)batch_normalization_6/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
:d
�
%batch_normalization_6/AssignMovingAvg	AssignSub!batch_normalization_5/moving_mean)batch_normalization_6/AssignMovingAvg/mul*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
:d*
use_locking( *
T0
�
-batch_normalization_6/AssignMovingAvg_1/sub/xConst*
valueB
 *  �?*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0*
_output_shapes
: 
�
+batch_normalization_6/AssignMovingAvg_1/subSub-batch_normalization_6/AssignMovingAvg_1/sub/xbatch_normalization_6/Squeeze_2*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
: 
�
-batch_normalization_6/AssignMovingAvg_1/sub_1Sub*batch_normalization_5/moving_variance/readbatch_normalization_6/Squeeze_1*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
:d
�
+batch_normalization_6/AssignMovingAvg_1/mulMul-batch_normalization_6/AssignMovingAvg_1/sub_1+batch_normalization_6/AssignMovingAvg_1/sub*
_output_shapes
:d*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance
�
'batch_normalization_6/AssignMovingAvg_1	AssignSub%batch_normalization_5/moving_variance+batch_normalization_6/AssignMovingAvg_1/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
:d
j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *o�:*
dtype0
�
#batch_normalization_6/batchnorm/addAddbatch_normalization_6/Squeeze_1%batch_normalization_6/batchnorm/add/y*
T0*
_output_shapes
:d
x
%batch_normalization_6/batchnorm/RsqrtRsqrt#batch_normalization_6/batchnorm/add*
T0*
_output_shapes
:d
�
#batch_normalization_6/batchnorm/mulMul%batch_normalization_6/batchnorm/Rsqrt batch_normalization_5/gamma/read*
_output_shapes
:d*
T0
�
%batch_normalization_6/batchnorm/mul_1Muldense/MatMul#batch_normalization_6/batchnorm/mul*'
_output_shapes
:���������d*
T0
�
%batch_normalization_6/batchnorm/mul_2Mulbatch_normalization_6/Squeeze#batch_normalization_6/batchnorm/mul*
_output_shapes
:d*
T0
�
#batch_normalization_6/batchnorm/subSubbatch_normalization_5/beta/read%batch_normalization_6/batchnorm/mul_2*
_output_shapes
:d*
T0
�
%batch_normalization_6/batchnorm/add_1Add%batch_normalization_6/batchnorm/mul_1#batch_normalization_6/batchnorm/sub*
T0*'
_output_shapes
:���������d
g
Relu_5Relu%batch_normalization_6/batchnorm/add_1*
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
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
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
VariableV2*
	container *
shape
:d
*
dtype0*
_output_shapes

:d
*
shared_name *!
_class
loc:@dense_1/kernel
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
dtype0*
_output_shapes
:
*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:

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
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

�
dense_2/MatMulMatMulRelu_5dense_1/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
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
MeanMeanlogistic_lossConst*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
conv_loss/tagsConst*
valueB B	conv_loss*
dtype0*
_output_shapes
: 
Q
	conv_lossScalarSummaryconv_loss/tagsMean*
T0*
_output_shapes
: 
�
gradients/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
�
gradients/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
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
�
!gradients/Mean_grad/Reshape/shapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
valueB"      *
dtype0
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/Mean_grad/ShapeShapelogistic_loss$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
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

�
gradients/Mean_grad/Shape_1Shapelogistic_loss$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
out_type0*
_output_shapes
:*
T0
�
gradients/Mean_grad/Shape_2Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
:*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
�
gradients/Mean_grad/Const_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
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
�
gradients/Mean_grad/Maximum/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: *
T0
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*'
_output_shapes
:���������
*
T0
�
"gradients/logistic_loss_grad/ShapeShapelogistic_loss/sub$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
$gradients/logistic_loss_grad/Shape_1Shapelogistic_loss/Log1p$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
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

�
-gradients/logistic_loss_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1%^gradients/logistic_loss_grad/Reshape'^gradients/logistic_loss_grad/Reshape_1
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

�
&gradients/logistic_loss/sub_grad/ShapeShapelogistic_loss/Select$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
�
(gradients/logistic_loss/sub_grad/Shape_1Shapelogistic_loss/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
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
(gradients/logistic_loss/sub_grad/ReshapeReshape$gradients/logistic_loss/sub_grad/Sum&gradients/logistic_loss/sub_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
&gradients/logistic_loss/sub_grad/Sum_1Sum5gradients/logistic_loss_grad/tuple/control_dependency8gradients/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
v
$gradients/logistic_loss/sub_grad/NegNeg&gradients/logistic_loss/sub_grad/Sum_1*
_output_shapes
:*
T0
�
*gradients/logistic_loss/sub_grad/Reshape_1Reshape$gradients/logistic_loss/sub_grad/Neg(gradients/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������

�
1gradients/logistic_loss/sub_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1)^gradients/logistic_loss/sub_grad/Reshape+^gradients/logistic_loss/sub_grad/Reshape_1
�
9gradients/logistic_loss/sub_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/sub_grad/Reshape2^gradients/logistic_loss/sub_grad/tuple/group_deps*;
_class1
/-loc:@gradients/logistic_loss/sub_grad/Reshape*'
_output_shapes
:���������
*
T0
�
;gradients/logistic_loss/sub_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/sub_grad/Reshape_12^gradients/logistic_loss/sub_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/sub_grad/Reshape_1*'
_output_shapes
:���������

�
(gradients/logistic_loss/Log1p_grad/add/xConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_18^gradients/logistic_loss_grad/tuple/control_dependency_1*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
&gradients/logistic_loss/Log1p_grad/addAdd(gradients/logistic_loss/Log1p_grad/add/xlogistic_loss/Exp*'
_output_shapes
:���������
*
T0
�
-gradients/logistic_loss/Log1p_grad/Reciprocal
Reciprocal&gradients/logistic_loss/Log1p_grad/add*'
_output_shapes
:���������
*
T0
�
&gradients/logistic_loss/Log1p_grad/mulMul7gradients/logistic_loss_grad/tuple/control_dependency_1-gradients/logistic_loss/Log1p_grad/Reciprocal*
T0*'
_output_shapes
:���������

�
.gradients/logistic_loss/Select_grad/zeros_like	ZerosLikedense_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*'
_output_shapes
:���������

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

�
4gradients/logistic_loss/Select_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1+^gradients/logistic_loss/Select_grad/Select-^gradients/logistic_loss/Select_grad/Select_1
�
<gradients/logistic_loss/Select_grad/tuple/control_dependencyIdentity*gradients/logistic_loss/Select_grad/Select5^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*'
_output_shapes
:���������

�
>gradients/logistic_loss/Select_grad/tuple/control_dependency_1Identity,gradients/logistic_loss/Select_grad/Select_15^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_grad/Select_1*'
_output_shapes
:���������

�
&gradients/logistic_loss/mul_grad/ShapeShapedense_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
�
(gradients/logistic_loss/mul_grad/Shape_1ShapePlaceholder_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
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
$gradients/logistic_loss/mul_grad/SumSum$gradients/logistic_loss/mul_grad/mul6gradients/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
(gradients/logistic_loss/mul_grad/ReshapeReshape$gradients/logistic_loss/mul_grad/Sum&gradients/logistic_loss/mul_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
&gradients/logistic_loss/mul_grad/mul_1Muldense_2/BiasAdd;gradients/logistic_loss/sub_grad/tuple/control_dependency_1*'
_output_shapes
:���������
*
T0
�
&gradients/logistic_loss/mul_grad/Sum_1Sum&gradients/logistic_loss/mul_grad/mul_18gradients/logistic_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
*gradients/logistic_loss/mul_grad/Reshape_1Reshape&gradients/logistic_loss/mul_grad/Sum_1(gradients/logistic_loss/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������

�
1gradients/logistic_loss/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1)^gradients/logistic_loss/mul_grad/Reshape+^gradients/logistic_loss/mul_grad/Reshape_1
�
9gradients/logistic_loss/mul_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/mul_grad/Reshape2^gradients/logistic_loss/mul_grad/tuple/group_deps*;
_class1
/-loc:@gradients/logistic_loss/mul_grad/Reshape*'
_output_shapes
:���������
*
T0
�
;gradients/logistic_loss/mul_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/mul_grad/Reshape_12^gradients/logistic_loss/mul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/mul_grad/Reshape_1*'
_output_shapes
:���������

�
$gradients/logistic_loss/Exp_grad/mulMul&gradients/logistic_loss/Log1p_grad/mullogistic_loss/Exp*
T0*'
_output_shapes
:���������

�
0gradients/logistic_loss/Select_1_grad/zeros_like	ZerosLikelogistic_loss/Neg$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*'
_output_shapes
:���������

�
,gradients/logistic_loss/Select_1_grad/SelectSelectlogistic_loss/GreaterEqual$gradients/logistic_loss/Exp_grad/mul0gradients/logistic_loss/Select_1_grad/zeros_like*'
_output_shapes
:���������
*
T0
�
.gradients/logistic_loss/Select_1_grad/Select_1Selectlogistic_loss/GreaterEqual0gradients/logistic_loss/Select_1_grad/zeros_like$gradients/logistic_loss/Exp_grad/mul*
T0*'
_output_shapes
:���������

�
6gradients/logistic_loss/Select_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1-^gradients/logistic_loss/Select_1_grad/Select/^gradients/logistic_loss/Select_1_grad/Select_1
�
>gradients/logistic_loss/Select_1_grad/tuple/control_dependencyIdentity,gradients/logistic_loss/Select_1_grad/Select7^gradients/logistic_loss/Select_1_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_1_grad/Select
�
@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1Identity.gradients/logistic_loss/Select_1_grad/Select_17^gradients/logistic_loss/Select_1_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/logistic_loss/Select_1_grad/Select_1*'
_output_shapes
:���������

�
$gradients/logistic_loss/Neg_grad/NegNeg>gradients/logistic_loss/Select_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������

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

�
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1^gradients/AddN+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
�
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������
*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select
�
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:
*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad
�
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(
�
&gradients/dense_2/MatMul_grad/MatMul_1MatMulRelu_57gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:d
*
transpose_a(
�
.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
�
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:d

�
gradients/Relu_5_grad/ReluGradReluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependencyRelu_5*
T0*'
_output_shapes
:���������d
�
:gradients/batch_normalization_6/batchnorm/add_1_grad/ShapeShape%batch_normalization_6/batchnorm/mul_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
�
<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Jgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_6/batchnorm/add_1_grad/Shape<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
8gradients/batch_normalization_6/batchnorm/add_1_grad/SumSumgradients/Relu_5_grad/ReluGradJgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization_6/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_6/batchnorm/add_1_grad/Sum:gradients/batch_normalization_6/batchnorm/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������d
�
:gradients/batch_normalization_6/batchnorm/add_1_grad/Sum_1Sumgradients/Relu_5_grad/ReluGradLgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_6/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
Egradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1=^gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape?^gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1
�
Mgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_6/batchnorm/add_1_grad/ReshapeF^gradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_deps*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape*'
_output_shapes
:���������d*
T0
�
Ogradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1F^gradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:d
�
:gradients/batch_normalization_6/batchnorm/mul_1_grad/ShapeShapedense/MatMul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Jgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_6/batchnorm/mul_1_grad/mulMulMgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency#batch_normalization_6/batchnorm/mul*
T0*'
_output_shapes
:���������d
�
8gradients/batch_normalization_6/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_6/batchnorm/mul_1_grad/mulJgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization_6/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape*
Tshape0*'
_output_shapes
:���������d*
T0
�
:gradients/batch_normalization_6/batchnorm/mul_1_grad/mul_1Muldense/MatMulMgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency*'
_output_shapes
:���������d*
T0
�
:gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_6/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
>gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
Egradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1=^gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape?^gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1
�
Mgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_6/batchnorm/mul_1_grad/ReshapeF^gradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������d
�
Ogradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1F^gradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_deps*
_output_shapes
:d*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1
�
8gradients/batch_normalization_6/batchnorm/sub_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
:gradients/batch_normalization_6/batchnorm/sub_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization_6/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_6/batchnorm/sub_grad/Shape:gradients/batch_normalization_6/batchnorm/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
6gradients/batch_normalization_6/batchnorm/sub_grad/SumSumOgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1Hgradients/batch_normalization_6/batchnorm/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_6/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_6/batchnorm/sub_grad/Sum8gradients/batch_normalization_6/batchnorm/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/sub_grad/Sum_1SumOgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1Jgradients/batch_normalization_6/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
6gradients/batch_normalization_6/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_6/batchnorm/sub_grad/Sum_1*
T0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_6/batchnorm/sub_grad/Neg:gradients/batch_normalization_6/batchnorm/sub_grad/Shape_1*
Tshape0*
_output_shapes
:d*
T0
�
Cgradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1;^gradients/batch_normalization_6/batchnorm/sub_grad/Reshape=^gradients/batch_normalization_6/batchnorm/sub_grad/Reshape_1
�
Kgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependencyIdentity:gradients/batch_normalization_6/batchnorm/sub_grad/ReshapeD^gradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_deps*M
_classC
A?loc:@gradients/batch_normalization_6/batchnorm/sub_grad/Reshape*
_output_shapes
:d*
T0
�
Mgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1Identity<gradients/batch_normalization_6/batchnorm/sub_grad/Reshape_1D^gradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_deps*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/sub_grad/Reshape_1*
_output_shapes
:d*
T0
�
:gradients/batch_normalization_6/batchnorm/mul_2_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
valueB:d*
dtype0
�
Jgradients/batch_normalization_6/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_6/batchnorm/mul_2_grad/mulMulMgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1#batch_normalization_6/batchnorm/mul*
_output_shapes
:d*
T0
�
8gradients/batch_normalization_6/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_6/batchnorm/mul_2_grad/mulJgradients/batch_normalization_6/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization_6/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_6/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
:gradients/batch_normalization_6/batchnorm/mul_2_grad/mul_1Mulbatch_normalization_6/SqueezeMgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1*
T0*
_output_shapes
:d
�
:gradients/batch_normalization_6/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_6/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_6/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_6/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
Egradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1=^gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape?^gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape_1
�
Mgradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_6/batchnorm/mul_2_grad/ReshapeF^gradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes
:d*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape
�
Ogradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape_1F^gradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape_1*
_output_shapes
:d
�
2gradients/batch_normalization_6/Squeeze_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
4gradients/batch_normalization_6/Squeeze_grad/ReshapeReshapeMgradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependency2gradients/batch_normalization_6/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
�
gradients/AddN_1AddNOgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependency_1Ogradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependency_1*
_output_shapes
:d*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1*
N
�
8gradients/batch_normalization_6/batchnorm/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
:gradients/batch_normalization_6/batchnorm/mul_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization_6/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_6/batchnorm/mul_grad/Shape:gradients/batch_normalization_6/batchnorm/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_6/batchnorm/mul_grad/mulMulgradients/AddN_1 batch_normalization_5/gamma/read*
T0*
_output_shapes
:d
�
6gradients/batch_normalization_6/batchnorm/mul_grad/SumSum6gradients/batch_normalization_6/batchnorm/mul_grad/mulHgradients/batch_normalization_6/batchnorm/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
:gradients/batch_normalization_6/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_6/batchnorm/mul_grad/Sum8gradients/batch_normalization_6/batchnorm/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/mul_grad/mul_1Mul%batch_normalization_6/batchnorm/Rsqrtgradients/AddN_1*
T0*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_6/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_6/batchnorm/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_6/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_6/batchnorm/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
Cgradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1;^gradients/batch_normalization_6/batchnorm/mul_grad/Reshape=^gradients/batch_normalization_6/batchnorm/mul_grad/Reshape_1
�
Kgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependencyIdentity:gradients/batch_normalization_6/batchnorm/mul_grad/ReshapeD^gradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:d*
T0*M
_classC
A?loc:@gradients/batch_normalization_6/batchnorm/mul_grad/Reshape
�
Mgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependency_1Identity<gradients/batch_normalization_6/batchnorm/mul_grad/Reshape_1D^gradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_deps*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_grad/Reshape_1*
_output_shapes
:d*
T0
�
6gradients/batch_normalization_6/Select_grad/zeros_likeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueBd*    *
dtype0*
_output_shapes

:d
�
2gradients/batch_normalization_6/Select_grad/SelectSelectbatch_normalization_6/Reshape4gradients/batch_normalization_6/Squeeze_grad/Reshape6gradients/batch_normalization_6/Select_grad/zeros_like*
_output_shapes

:d*
T0
�
4gradients/batch_normalization_6/Select_grad/Select_1Selectbatch_normalization_6/Reshape6gradients/batch_normalization_6/Select_grad/zeros_like4gradients/batch_normalization_6/Squeeze_grad/Reshape*
_output_shapes

:d*
T0
�
<gradients/batch_normalization_6/Select_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/batch_normalization_6/Select_grad/Select5^gradients/batch_normalization_6/Select_grad/Select_1
�
Dgradients/batch_normalization_6/Select_grad/tuple/control_dependencyIdentity2gradients/batch_normalization_6/Select_grad/Select=^gradients/batch_normalization_6/Select_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/batch_normalization_6/Select_grad/Select*
_output_shapes

:d
�
Fgradients/batch_normalization_6/Select_grad/tuple/control_dependency_1Identity4gradients/batch_normalization_6/Select_grad/Select_1=^gradients/batch_normalization_6/Select_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization_6/Select_grad/Select_1*
_output_shapes

:d
�
>gradients/batch_normalization_6/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_6/batchnorm/RsqrtKgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:d
�
5gradients/batch_normalization_6/ExpandDims_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
7gradients/batch_normalization_6/ExpandDims_grad/ReshapeReshapeDgradients/batch_normalization_6/Select_grad/tuple/control_dependency5gradients/batch_normalization_6/ExpandDims_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/add_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
:gradients/batch_normalization_6/batchnorm/add_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
�
Hgradients/batch_normalization_6/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_6/batchnorm/add_grad/Shape:gradients/batch_normalization_6/batchnorm/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
6gradients/batch_normalization_6/batchnorm/add_grad/SumSum>gradients/batch_normalization_6/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_6/batchnorm/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_6/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_6/batchnorm/add_grad/Sum8gradients/batch_normalization_6/batchnorm/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_6/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_6/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_6/batchnorm/add_grad/Sum_1:gradients/batch_normalization_6/batchnorm/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
Cgradients/batch_normalization_6/batchnorm/add_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1;^gradients/batch_normalization_6/batchnorm/add_grad/Reshape=^gradients/batch_normalization_6/batchnorm/add_grad/Reshape_1
�
Kgradients/batch_normalization_6/batchnorm/add_grad/tuple/control_dependencyIdentity:gradients/batch_normalization_6/batchnorm/add_grad/ReshapeD^gradients/batch_normalization_6/batchnorm/add_grad/tuple/group_deps*
_output_shapes
:d*
T0*M
_classC
A?loc:@gradients/batch_normalization_6/batchnorm/add_grad/Reshape
�
Mgradients/batch_normalization_6/batchnorm/add_grad/tuple/control_dependency_1Identity<gradients/batch_normalization_6/batchnorm/add_grad/Reshape_1D^gradients/batch_normalization_6/batchnorm/add_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/add_grad/Reshape_1*
_output_shapes
: 
�
:gradients/batch_normalization_6/moments/Squeeze_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
<gradients/batch_normalization_6/moments/Squeeze_grad/ReshapeReshape7gradients/batch_normalization_6/ExpandDims_grad/Reshape:gradients/batch_normalization_6/moments/Squeeze_grad/Shape*
Tshape0*
_output_shapes

:d*
T0
�
4gradients/batch_normalization_6/Squeeze_1_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
6gradients/batch_normalization_6/Squeeze_1_grad/ReshapeReshapeKgradients/batch_normalization_6/batchnorm/add_grad/tuple/control_dependency4gradients/batch_normalization_6/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
�
8gradients/batch_normalization_6/Select_1_grad/zeros_likeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueBd*    *
dtype0*
_output_shapes

:d
�
4gradients/batch_normalization_6/Select_1_grad/SelectSelectbatch_normalization_6/Reshape_16gradients/batch_normalization_6/Squeeze_1_grad/Reshape8gradients/batch_normalization_6/Select_1_grad/zeros_like*
T0*
_output_shapes

:d
�
6gradients/batch_normalization_6/Select_1_grad/Select_1Selectbatch_normalization_6/Reshape_18gradients/batch_normalization_6/Select_1_grad/zeros_like6gradients/batch_normalization_6/Squeeze_1_grad/Reshape*
T0*
_output_shapes

:d
�
>gradients/batch_normalization_6/Select_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_15^gradients/batch_normalization_6/Select_1_grad/Select7^gradients/batch_normalization_6/Select_1_grad/Select_1
�
Fgradients/batch_normalization_6/Select_1_grad/tuple/control_dependencyIdentity4gradients/batch_normalization_6/Select_1_grad/Select?^gradients/batch_normalization_6/Select_1_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/batch_normalization_6/Select_1_grad/Select*
_output_shapes

:d
�
Hgradients/batch_normalization_6/Select_1_grad/tuple/control_dependency_1Identity6gradients/batch_normalization_6/Select_1_grad/Select_1?^gradients/batch_normalization_6/Select_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/batch_normalization_6/Select_1_grad/Select_1*
_output_shapes

:d
�
7gradients/batch_normalization_6/ExpandDims_2_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
9gradients/batch_normalization_6/ExpandDims_2_grad/ReshapeReshapeFgradients/batch_normalization_6/Select_1_grad/tuple/control_dependency7gradients/batch_normalization_6/ExpandDims_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
<gradients/batch_normalization_6/moments/Squeeze_1_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
>gradients/batch_normalization_6/moments/Squeeze_1_grad/ReshapeReshape9gradients/batch_normalization_6/ExpandDims_2_grad/Reshape<gradients/batch_normalization_6/moments/Squeeze_1_grad/Shape*
Tshape0*
_output_shapes

:d*
T0
�
;gradients/batch_normalization_6/moments/variance_grad/ShapeShape/batch_normalization_6/moments/SquaredDifference$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
out_type0*
_output_shapes
:*
T0
�
:gradients/batch_normalization_6/moments/variance_grad/SizeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
value	B :*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape
�
9gradients/batch_normalization_6/moments/variance_grad/addAdd8batch_normalization_6/moments/variance/reduction_indices:gradients/batch_normalization_6/moments/variance_grad/Size*
_output_shapes
:*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape
�
9gradients/batch_normalization_6/moments/variance_grad/modFloorMod9gradients/batch_normalization_6/moments/variance_grad/add:gradients/batch_normalization_6/moments/variance_grad/Size*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
_output_shapes
:
�
=gradients/batch_normalization_6/moments/variance_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
:
�
Agradients/batch_normalization_6/moments/variance_grad/range/startConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B : *N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
Agradients/batch_normalization_6/moments/variance_grad/range/deltaConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
;gradients/batch_normalization_6/moments/variance_grad/rangeRangeAgradients/batch_normalization_6/moments/variance_grad/range/start:gradients/batch_normalization_6/moments/variance_grad/SizeAgradients/batch_normalization_6/moments/variance_grad/range/delta*
_output_shapes
:*

Tidx0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape
�
@gradients/batch_normalization_6/moments/variance_grad/Fill/valueConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
value	B :*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape
�
:gradients/batch_normalization_6/moments/variance_grad/FillFill=gradients/batch_normalization_6/moments/variance_grad/Shape_1@gradients/batch_normalization_6/moments/variance_grad/Fill/value*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
_output_shapes
:
�
Cgradients/batch_normalization_6/moments/variance_grad/DynamicStitchDynamicStitch;gradients/batch_normalization_6/moments/variance_grad/range9gradients/batch_normalization_6/moments/variance_grad/mod;gradients/batch_normalization_6/moments/variance_grad/Shape:gradients/batch_normalization_6/moments/variance_grad/Fill*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
N*#
_output_shapes
:���������
�
?gradients/batch_normalization_6/moments/variance_grad/Maximum/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
=gradients/batch_normalization_6/moments/variance_grad/MaximumMaximumCgradients/batch_normalization_6/moments/variance_grad/DynamicStitch?gradients/batch_normalization_6/moments/variance_grad/Maximum/y*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*#
_output_shapes
:���������
�
>gradients/batch_normalization_6/moments/variance_grad/floordivFloorDiv;gradients/batch_normalization_6/moments/variance_grad/Shape=gradients/batch_normalization_6/moments/variance_grad/Maximum*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
_output_shapes
:
�
=gradients/batch_normalization_6/moments/variance_grad/ReshapeReshape>gradients/batch_normalization_6/moments/Squeeze_1_grad/ReshapeCgradients/batch_normalization_6/moments/variance_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
�
:gradients/batch_normalization_6/moments/variance_grad/TileTile=gradients/batch_normalization_6/moments/variance_grad/Reshape>gradients/batch_normalization_6/moments/variance_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������
�
=gradients/batch_normalization_6/moments/variance_grad/Shape_2Shape/batch_normalization_6/moments/SquaredDifference$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
=gradients/batch_normalization_6/moments/variance_grad/Shape_3Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
valueB"   d   *
dtype0
�
;gradients/batch_normalization_6/moments/variance_grad/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB: *P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
dtype0*
_output_shapes
:
�
:gradients/batch_normalization_6/moments/variance_grad/ProdProd=gradients/batch_normalization_6/moments/variance_grad/Shape_2;gradients/batch_normalization_6/moments/variance_grad/Const*
	keep_dims( *

Tidx0*
T0*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
_output_shapes
: 
�
=gradients/batch_normalization_6/moments/variance_grad/Const_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
:*
valueB: *P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2
�
<gradients/batch_normalization_6/moments/variance_grad/Prod_1Prod=gradients/batch_normalization_6/moments/variance_grad/Shape_3=gradients/batch_normalization_6/moments/variance_grad/Const_1*
	keep_dims( *

Tidx0*
T0*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
_output_shapes
: 
�
Agradients/batch_normalization_6/moments/variance_grad/Maximum_1/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
dtype0*
_output_shapes
: 
�
?gradients/batch_normalization_6/moments/variance_grad/Maximum_1Maximum<gradients/batch_normalization_6/moments/variance_grad/Prod_1Agradients/batch_normalization_6/moments/variance_grad/Maximum_1/y*
T0*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
_output_shapes
: 
�
@gradients/batch_normalization_6/moments/variance_grad/floordiv_1FloorDiv:gradients/batch_normalization_6/moments/variance_grad/Prod?gradients/batch_normalization_6/moments/variance_grad/Maximum_1*
T0*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
_output_shapes
: 
�
:gradients/batch_normalization_6/moments/variance_grad/CastCast@gradients/batch_normalization_6/moments/variance_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
�
=gradients/batch_normalization_6/moments/variance_grad/truedivRealDiv:gradients/batch_normalization_6/moments/variance_grad/Tile:gradients/batch_normalization_6/moments/variance_grad/Cast*'
_output_shapes
:���������d*
T0
�
Dgradients/batch_normalization_6/moments/SquaredDifference_grad/ShapeShapedense/MatMul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
�
Fgradients/batch_normalization_6/moments/SquaredDifference_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
Tgradients/batch_normalization_6/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_6/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_6/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Egradients/batch_normalization_6/moments/SquaredDifference_grad/scalarConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1>^gradients/batch_normalization_6/moments/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
Bgradients/batch_normalization_6/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_6/moments/SquaredDifference_grad/scalar=gradients/batch_normalization_6/moments/variance_grad/truediv*
T0*'
_output_shapes
:���������d
�
Bgradients/batch_normalization_6/moments/SquaredDifference_grad/subSubdense/MatMul*batch_normalization_6/moments/StopGradient$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1>^gradients/batch_normalization_6/moments/variance_grad/truediv*
T0*'
_output_shapes
:���������d
�
Dgradients/batch_normalization_6/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_6/moments/SquaredDifference_grad/mulBgradients/batch_normalization_6/moments/SquaredDifference_grad/sub*'
_output_shapes
:���������d*
T0
�
Bgradients/batch_normalization_6/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_6/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_6/moments/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
Fgradients/batch_normalization_6/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_6/moments/SquaredDifference_grad/SumDgradients/batch_normalization_6/moments/SquaredDifference_grad/Shape*'
_output_shapes
:���������d*
T0*
Tshape0
�
Dgradients/batch_normalization_6/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_6/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_6/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Hgradients/batch_normalization_6/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_6/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_6/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:d
�
Bgradients/batch_normalization_6/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_6/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:d*
T0
�
Ogradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1G^gradients/batch_normalization_6/moments/SquaredDifference_grad/ReshapeC^gradients/batch_normalization_6/moments/SquaredDifference_grad/Neg
�
Wgradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/control_dependencyIdentityFgradients/batch_normalization_6/moments/SquaredDifference_grad/ReshapeP^gradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*Y
_classO
MKloc:@gradients/batch_normalization_6/moments/SquaredDifference_grad/Reshape
�
Ygradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/control_dependency_1IdentityBgradients/batch_normalization_6/moments/SquaredDifference_grad/NegP^gradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients/batch_normalization_6/moments/SquaredDifference_grad/Neg*
_output_shapes

:d
�
7gradients/batch_normalization_6/moments/mean_grad/ShapeShapedense/MatMul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
6gradients/batch_normalization_6/moments/mean_grad/SizeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
5gradients/batch_normalization_6/moments/mean_grad/addAdd4batch_normalization_6/moments/mean/reduction_indices6gradients/batch_normalization_6/moments/mean_grad/Size*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:
�
5gradients/batch_normalization_6/moments/mean_grad/modFloorMod5gradients/batch_normalization_6/moments/mean_grad/add6gradients/batch_normalization_6/moments/mean_grad/Size*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:
�
9gradients/batch_normalization_6/moments/mean_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
:
�
=gradients/batch_normalization_6/moments/mean_grad/range/startConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B : *J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
=gradients/batch_normalization_6/moments/mean_grad/range/deltaConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
7gradients/batch_normalization_6/moments/mean_grad/rangeRange=gradients/batch_normalization_6/moments/mean_grad/range/start6gradients/batch_normalization_6/moments/mean_grad/Size=gradients/batch_normalization_6/moments/mean_grad/range/delta*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:*

Tidx0
�
<gradients/batch_normalization_6/moments/mean_grad/Fill/valueConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
6gradients/batch_normalization_6/moments/mean_grad/FillFill9gradients/batch_normalization_6/moments/mean_grad/Shape_1<gradients/batch_normalization_6/moments/mean_grad/Fill/value*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:
�
?gradients/batch_normalization_6/moments/mean_grad/DynamicStitchDynamicStitch7gradients/batch_normalization_6/moments/mean_grad/range5gradients/batch_normalization_6/moments/mean_grad/mod7gradients/batch_normalization_6/moments/mean_grad/Shape6gradients/batch_normalization_6/moments/mean_grad/Fill*
N*#
_output_shapes
:���������*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape
�
;gradients/batch_normalization_6/moments/mean_grad/Maximum/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
9gradients/batch_normalization_6/moments/mean_grad/MaximumMaximum?gradients/batch_normalization_6/moments/mean_grad/DynamicStitch;gradients/batch_normalization_6/moments/mean_grad/Maximum/y*#
_output_shapes
:���������*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape
�
:gradients/batch_normalization_6/moments/mean_grad/floordivFloorDiv7gradients/batch_normalization_6/moments/mean_grad/Shape9gradients/batch_normalization_6/moments/mean_grad/Maximum*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:
�
9gradients/batch_normalization_6/moments/mean_grad/ReshapeReshape<gradients/batch_normalization_6/moments/Squeeze_grad/Reshape?gradients/batch_normalization_6/moments/mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
6gradients/batch_normalization_6/moments/mean_grad/TileTile9gradients/batch_normalization_6/moments/mean_grad/Reshape:gradients/batch_normalization_6/moments/mean_grad/floordiv*0
_output_shapes
:������������������*

Tmultiples0*
T0
�
9gradients/batch_normalization_6/moments/mean_grad/Shape_2Shapedense/MatMul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
9gradients/batch_normalization_6/moments/mean_grad/Shape_3Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
7gradients/batch_normalization_6/moments/mean_grad/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB: *L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
dtype0*
_output_shapes
:
�
6gradients/batch_normalization_6/moments/mean_grad/ProdProd9gradients/batch_normalization_6/moments/mean_grad/Shape_27gradients/batch_normalization_6/moments/mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2
�
9gradients/batch_normalization_6/moments/mean_grad/Const_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
valueB: *L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
dtype0
�
8gradients/batch_normalization_6/moments/mean_grad/Prod_1Prod9gradients/batch_normalization_6/moments/mean_grad/Shape_39gradients/batch_normalization_6/moments/mean_grad/Const_1*
T0*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
_output_shapes
: *
	keep_dims( *

Tidx0
�
=gradients/batch_normalization_6/moments/mean_grad/Maximum_1/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
value	B :*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2
�
;gradients/batch_normalization_6/moments/mean_grad/Maximum_1Maximum8gradients/batch_normalization_6/moments/mean_grad/Prod_1=gradients/batch_normalization_6/moments/mean_grad/Maximum_1/y*
_output_shapes
: *
T0*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2
�
<gradients/batch_normalization_6/moments/mean_grad/floordiv_1FloorDiv6gradients/batch_normalization_6/moments/mean_grad/Prod;gradients/batch_normalization_6/moments/mean_grad/Maximum_1*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
_output_shapes
: *
T0
�
6gradients/batch_normalization_6/moments/mean_grad/CastCast<gradients/batch_normalization_6/moments/mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
�
9gradients/batch_normalization_6/moments/mean_grad/truedivRealDiv6gradients/batch_normalization_6/moments/mean_grad/Tile6gradients/batch_normalization_6/moments/mean_grad/Cast*'
_output_shapes
:���������d*
T0
�
gradients/AddN_2AddNMgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependencyWgradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/control_dependency9gradients/batch_normalization_6/moments/mean_grad/truediv*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape*
N*'
_output_shapes
:���������d
�
"gradients/dense/MatMul_grad/MatMulMatMulgradients/AddN_2dense/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
$gradients/dense/MatMul_grad/MatMul_1MatMulReshapegradients/AddN_2*
T0*
_output_shapes
:	�d*
transpose_a(*
transpose_b( 
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	�d
�
gradients/Reshape_grad/ShapeShapeRelu_4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
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
�
9gradients/batch_normalization_5/cond/Merge_grad/cond_gradSwitchgradients/Relu_4_grad/ReluGrad"batch_normalization_5/cond/pred_id*J
_output_shapes8
6:���������:���������*
T0*1
_class'
%#loc:@gradients/Relu_4_grad/ReluGrad
�
@gradients/batch_normalization_5/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^gradients/batch_normalization_5/cond/Merge_grad/cond_grad
�
Hgradients/batch_normalization_5/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_5/cond/Merge_grad/cond_gradA^gradients/batch_normalization_5/cond/Merge_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Relu_4_grad/ReluGrad*/
_output_shapes
:���������*
T0
�
Jgradients/batch_normalization_5/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_5/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_5/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_4_grad/ReluGrad*/
_output_shapes
:���������
�
gradients/zeros_like	ZerosLike-batch_normalization_5/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_1	ZerosLike-batch_normalization_5/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_2	ZerosLike-batch_normalization_5/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_3	ZerosLike-batch_normalization_5/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_5/cond/Merge_grad/tuple/control_dependency2batch_normalization_5/cond/FusedBatchNorm_1/Switch4batch_normalization_5/cond/FusedBatchNorm_1/Switch_14batch_normalization_5/cond/FusedBatchNorm_1/Switch_34batch_normalization_5/cond/FusedBatchNorm_1/Switch_4*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( 
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1N^gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Ugradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/group_deps*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:*
T0
�
Ugradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:
�
gradients/zeros_like_4	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_5	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_6	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_7	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_5/cond/Merge_grad/tuple/control_dependency_12batch_normalization_5/cond/FusedBatchNorm/Switch:14batch_normalization_5/cond/FusedBatchNorm/Switch_1:1+batch_normalization_5/cond/FusedBatchNorm:3+batch_normalization_5/cond/FusedBatchNorm:4*
data_formatNHWC*C
_output_shapes1
/:���������::: : *
is_training(*
epsilon%o�:*
T0
�
Igradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
:*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
gradients/SwitchSwitchconv2d_5/Conv2D"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
c
gradients/Shape_1Shapegradients/Switch:1*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
{
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*
T0*/
_output_shapes
:���������
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros*1
_output_shapes
:���������: *
T0*
N
�
gradients/Switch_1Switch batch_normalization_4/gamma/read"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_2Shapegradients/Switch_1:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_1/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
_output_shapes
:*
T0
�
Mgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_1*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_3Shapegradients/Switch_2:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_2/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    
j
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*
_output_shapes
:*
T0
�
Mgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_2*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_3Switchconv2d_5/Conv2D"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*J
_output_shapes8
6:���������:���������*
T0
c
gradients/Shape_4Shapegradients/Switch_3*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_3/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    

gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
T0*/
_output_shapes
:���������
�
Igradients/batch_normalization_5/cond/FusedBatchNorm/Switch_grad/cond_gradMergeQgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_3*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_4Switch batch_normalization_4/gamma/read"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
c
gradients/Shape_5Shapegradients/Switch_4*
out_type0*
_output_shapes
:*
T0
�
gradients/zeros_4/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeSgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_4*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_5Switchbatch_normalization_4/beta/read"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
c
gradients/Shape_6Shapegradients/Switch_5*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_5/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*
_output_shapes
:*
T0
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeSgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_5*
T0*
N*
_output_shapes

:: 
�
gradients/AddN_3AddNKgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_grad/cond_grad*
N*/
_output_shapes
:���������*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_grad/cond_grad
�
%gradients/conv2d_5/Conv2D_grad/ShapeNShapeNRelu_3conv2d_4/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
�
2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_4/kernel/readgradients/AddN_3*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_3'gradients/conv2d_5/Conv2D_grad/ShapeN:1gradients/AddN_3*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
/gradients/conv2d_5/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������*
T0
�
9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*F
_class<
:8loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
�
gradients/AddN_4AddNMgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N
�
gradients/AddN_5AddNMgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N
�
gradients/Relu_3_grad/ReluGradReluGrad7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyRelu_3*
T0*/
_output_shapes
:���������
�
9gradients/batch_normalization_4/cond/Merge_grad/cond_gradSwitchgradients/Relu_3_grad/ReluGrad"batch_normalization_4/cond/pred_id*1
_class'
%#loc:@gradients/Relu_3_grad/ReluGrad*J
_output_shapes8
6:���������:���������*
T0
�
@gradients/batch_normalization_4/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^gradients/batch_normalization_4/cond/Merge_grad/cond_grad
�
Hgradients/batch_normalization_4/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_4/cond/Merge_grad/cond_gradA^gradients/batch_normalization_4/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_3_grad/ReluGrad*/
_output_shapes
:���������
�
Jgradients/batch_normalization_4/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_4/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_4/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_3_grad/ReluGrad*/
_output_shapes
:���������
�
gradients/zeros_like_8	ZerosLike-batch_normalization_4/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_9	ZerosLike-batch_normalization_4/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_10	ZerosLike-batch_normalization_4/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_11	ZerosLike-batch_normalization_4/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_4/cond/Merge_grad/tuple/control_dependency2batch_normalization_4/cond/FusedBatchNorm_1/Switch4batch_normalization_4/cond/FusedBatchNorm_1/Switch_14batch_normalization_4/cond/FusedBatchNorm_1/Switch_34batch_normalization_4/cond/FusedBatchNorm_1/Switch_4*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1N^gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Ugradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/group_deps*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:*
T0
�
Ugradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
gradients/zeros_like_12	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_13	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_14	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_15	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_4/cond/Merge_grad/tuple/control_dependency_12batch_normalization_4/cond/FusedBatchNorm/Switch:14batch_normalization_4/cond/FusedBatchNorm/Switch_1:1+batch_normalization_4/cond/FusedBatchNorm:3+batch_normalization_4/cond/FusedBatchNorm:4*
epsilon%o�:*
T0*
data_formatNHWC*C
_output_shapes1
/:���������::: : *
is_training(
�
Igradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
gradients/Switch_6Switchconv2d_4/Conv2D"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
e
gradients/Shape_7Shapegradients/Switch_6:1*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_6/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_6Fillgradients/Shape_7gradients/zeros_6/Const*
T0*/
_output_shapes
:���������
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_6*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_7Switch batch_normalization_3/gamma/read"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_8Shapegradients/Switch_7:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_7/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_7Fillgradients/Shape_8gradients/zeros_7/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_7*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_8Switchbatch_normalization_3/beta/read"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_9Shapegradients/Switch_8:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_8/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    
j
gradients/zeros_8Fillgradients/Shape_9gradients/zeros_8/Const*
_output_shapes
:*
T0
�
Mgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_8*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_9Switchconv2d_4/Conv2D"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*J
_output_shapes8
6:���������:���������*
T0
d
gradients/Shape_10Shapegradients/Switch_9*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_9/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_9Fillgradients/Shape_10gradients/zeros_9/Const*/
_output_shapes
:���������*
T0
�
Igradients/batch_normalization_4/cond/FusedBatchNorm/Switch_grad/cond_gradMergeQgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_9*1
_output_shapes
:���������: *
T0*
N
�
gradients/Switch_10Switch batch_normalization_3/gamma/read"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_11Shapegradients/Switch_10*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_10/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_10Fillgradients/Shape_11gradients/zeros_10/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeSgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_10*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_11Switchbatch_normalization_3/beta/read"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_12Shapegradients/Switch_11*
out_type0*
_output_shapes
:*
T0
�
gradients/zeros_11/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    
m
gradients/zeros_11Fillgradients/Shape_12gradients/zeros_11/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeSgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_11*
T0*
N*
_output_shapes

:: 
�
gradients/AddN_6AddNKgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_grad/cond_grad*
N*/
_output_shapes
:���������*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_grad/cond_grad
�
%gradients/conv2d_4/Conv2D_grad/ShapeNShapeNRelu_2conv2d_3/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0*
out_type0*
N
�
2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_3/kernel/readgradients/AddN_6*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_2'gradients/conv2d_4/Conv2D_grad/ShapeN:1gradients/AddN_6*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
�
/gradients/conv2d_4/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/AddN_7AddNMgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:
�
gradients/AddN_8AddNMgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N
�
gradients/Relu_2_grad/ReluGradReluGrad7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyRelu_2*
T0*/
_output_shapes
:���������
�
9gradients/batch_normalization_3/cond/Merge_grad/cond_gradSwitchgradients/Relu_2_grad/ReluGrad"batch_normalization_3/cond/pred_id*
T0*1
_class'
%#loc:@gradients/Relu_2_grad/ReluGrad*J
_output_shapes8
6:���������:���������
�
@gradients/batch_normalization_3/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^gradients/batch_normalization_3/cond/Merge_grad/cond_grad
�
Hgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_3/cond/Merge_grad/cond_gradA^gradients/batch_normalization_3/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_2_grad/ReluGrad*/
_output_shapes
:���������
�
Jgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_3/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_3/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_2_grad/ReluGrad*/
_output_shapes
:���������
�
gradients/zeros_like_16	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_17	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_18	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_19	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency2batch_normalization_3/cond/FusedBatchNorm_1/Switch4batch_normalization_3/cond/FusedBatchNorm_1/Switch_14batch_normalization_3/cond/FusedBatchNorm_1/Switch_34batch_normalization_3/cond/FusedBatchNorm_1/Switch_4*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( 
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1N^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������*
T0
�
Ugradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Ugradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:
�
gradients/zeros_like_20	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_21	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_22	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_23	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency_12batch_normalization_3/cond/FusedBatchNorm/Switch:14batch_normalization_3/cond/FusedBatchNorm/Switch_1:1+batch_normalization_3/cond/FusedBatchNorm:3+batch_normalization_3/cond/FusedBatchNorm:4*C
_output_shapes1
/:���������::: : *
is_training(*
epsilon%o�:*
T0*
data_formatNHWC
�
Igradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
gradients/Switch_12Switchconv2d_3/Conv2D"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
g
gradients/Shape_13Shapegradients/Switch_12:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_12/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_12Fillgradients/Shape_13gradients/zeros_12/Const*
T0*/
_output_shapes
:���������
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_12*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_13Switch batch_normalization_2/gamma/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
g
gradients/Shape_14Shapegradients/Switch_13:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_13/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_13Fillgradients/Shape_14gradients/zeros_13/Const*
_output_shapes
:*
T0
�
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_13*
_output_shapes

:: *
T0*
N
�
gradients/Switch_14Switchbatch_normalization_2/beta/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
g
gradients/Shape_15Shapegradients/Switch_14:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_14/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    
m
gradients/zeros_14Fillgradients/Shape_15gradients/zeros_14/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_14*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_15Switchconv2d_3/Conv2D"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*J
_output_shapes8
6:���������:���������*
T0
e
gradients/Shape_16Shapegradients/Switch_15*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_15/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_15Fillgradients/Shape_16gradients/zeros_15/Const*/
_output_shapes
:���������*
T0
�
Igradients/batch_normalization_3/cond/FusedBatchNorm/Switch_grad/cond_gradMergeQgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_15*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_16Switch batch_normalization_2/gamma/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_17Shapegradients/Switch_16*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_16/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_16Fillgradients/Shape_17gradients/zeros_16/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeSgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_16*
_output_shapes

:: *
T0*
N
�
gradients/Switch_17Switchbatch_normalization_2/beta/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_18Shapegradients/Switch_17*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_17/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_17Fillgradients/Shape_18gradients/zeros_17/Const*
_output_shapes
:*
T0
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeSgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_17*
T0*
N*
_output_shapes

:: 
�
gradients/AddN_9AddNKgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*/
_output_shapes
:���������
�
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeNRelu_1conv2d_2/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
N* 
_output_shapes
::*
T0*
out_type0
�
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_2/kernel/readgradients/AddN_9*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_1'gradients/conv2d_3/Conv2D_grad/ShapeN:1gradients/AddN_9*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
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
�
gradients/AddN_10AddNMgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N
�
gradients/AddN_11AddNMgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N
�
gradients/Relu_1_grad/ReluGradReluGrad7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyRelu_1*
T0*/
_output_shapes
:���������
�
9gradients/batch_normalization_2/cond/Merge_grad/cond_gradSwitchgradients/Relu_1_grad/ReluGrad"batch_normalization_2/cond/pred_id*
T0*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad*J
_output_shapes8
6:���������:���������
�
@gradients/batch_normalization_2/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^gradients/batch_normalization_2/cond/Merge_grad/cond_grad
�
Hgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_2/cond/Merge_grad/cond_gradA^gradients/batch_normalization_2/cond/Merge_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad*/
_output_shapes
:���������*
T0
�
Jgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_2/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_2/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad*/
_output_shapes
:���������
�
gradients/zeros_like_24	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_25	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_26	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_27	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency2batch_normalization_2/cond/FusedBatchNorm_1/Switch4batch_normalization_2/cond/FusedBatchNorm_1/Switch_14batch_normalization_2/cond/FusedBatchNorm_1/Switch_34batch_normalization_2/cond/FusedBatchNorm_1/Switch_4*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( 
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1N^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Ugradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Ugradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
gradients/zeros_like_28	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_29	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_30	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_31	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency_12batch_normalization_2/cond/FusedBatchNorm/Switch:14batch_normalization_2/cond/FusedBatchNorm/Switch_1:1+batch_normalization_2/cond/FusedBatchNorm:3+batch_normalization_2/cond/FusedBatchNorm:4*
epsilon%o�:*
T0*
data_formatNHWC*C
_output_shapes1
/:���������::: : *
is_training(
�
Igradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
gradients/Switch_18Switchconv2d_2/Conv2D"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
g
gradients/Shape_19Shapegradients/Switch_18:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_18/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_18Fillgradients/Shape_19gradients/zeros_18/Const*/
_output_shapes
:���������*
T0
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_18*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_19Switch batch_normalization_1/gamma/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
g
gradients/Shape_20Shapegradients/Switch_19:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_19/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_19Fillgradients/Shape_20gradients/zeros_19/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_19*
N*
_output_shapes

:: *
T0
�
gradients/Switch_20Switchbatch_normalization_1/beta/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
g
gradients/Shape_21Shapegradients/Switch_20:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_20/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_20Fillgradients/Shape_21gradients/zeros_20/Const*
_output_shapes
:*
T0
�
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_20*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_21Switchconv2d_2/Conv2D"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
e
gradients/Shape_22Shapegradients/Switch_21*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_21/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_21Fillgradients/Shape_22gradients/zeros_21/Const*/
_output_shapes
:���������*
T0
�
Igradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_gradMergeQgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_21*
N*1
_output_shapes
:���������: *
T0
�
gradients/Switch_22Switch batch_normalization_1/gamma/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_23Shapegradients/Switch_22*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_22/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_22Fillgradients/Shape_23gradients/zeros_22/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeSgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_22*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_23Switchbatch_normalization_1/beta/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_24Shapegradients/Switch_23*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_23/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
valueB
 *    *
dtype0
m
gradients/zeros_23Fillgradients/Shape_24gradients/zeros_23/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeSgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_23*
T0*
N*
_output_shapes

:: 
�
gradients/AddN_12AddNKgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*/
_output_shapes
:���������
�
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeNReluconv2d_1/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
�
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_1/kernel/readgradients/AddN_12*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
�
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu'gradients/conv2d_2/Conv2D_grad/ShapeN:1gradients/AddN_12*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
�
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/AddN_13AddNMgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:
�
gradients/AddN_14AddNMgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_grad*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:*
T0
�
gradients/Relu_grad/ReluGradReluGrad7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyRelu*/
_output_shapes
:���������*
T0
�
7gradients/batch_normalization/cond/Merge_grad/cond_gradSwitchgradients/Relu_grad/ReluGrad batch_normalization/cond/pred_id*
T0*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*J
_output_shapes8
6:���������:���������
�
>gradients/batch_normalization/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_18^gradients/batch_normalization/cond/Merge_grad/cond_grad
�
Fgradients/batch_normalization/cond/Merge_grad/tuple/control_dependencyIdentity7gradients/batch_normalization/cond/Merge_grad/cond_grad?^gradients/batch_normalization/cond/Merge_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*/
_output_shapes
:���������
�
Hgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency_1Identity9gradients/batch_normalization/cond/Merge_grad/cond_grad:1?^gradients/batch_normalization/cond/Merge_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*/
_output_shapes
:���������
�
gradients/zeros_like_32	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_33	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_34	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_35	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
Kgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradFgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency0batch_normalization/cond/FusedBatchNorm_1/Switch2batch_normalization/cond/FusedBatchNorm_1/Switch_12batch_normalization/cond/FusedBatchNorm_1/Switch_32batch_normalization/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0
�
Igradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityKgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGradJ^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Sgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1J^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2J^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
gradients/zeros_like_36	ZerosLike)batch_normalization/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_37	ZerosLike)batch_normalization/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_38	ZerosLike)batch_normalization/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_39	ZerosLike)batch_normalization/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
Igradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency_10batch_normalization/cond/FusedBatchNorm/Switch:12batch_normalization/cond/FusedBatchNorm/Switch_1:1)batch_normalization/cond/FusedBatchNorm:3)batch_normalization/cond/FusedBatchNorm:4*
data_formatNHWC*C
_output_shapes1
/:���������::: : *
is_training(*
epsilon%o�:*
T0
�
Ggradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1J^gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Ogradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
:*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
gradients/Switch_24Switchconv2d/Conv2D batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
g
gradients/Shape_25Shapegradients/Switch_24:1*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_24/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    
�
gradients/zeros_24Fillgradients/Shape_25gradients/zeros_24/Const*
T0*/
_output_shapes
:���������
�
Igradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeQgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_24*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_25Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
g
gradients/Shape_26Shapegradients/Switch_25:1*
out_type0*
_output_shapes
:*
T0
�
gradients/zeros_25/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_25Fillgradients/Shape_26gradients/zeros_25/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeSgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_25*
N*
_output_shapes

:: *
T0
�
gradients/Switch_26Switchbatch_normalization/beta/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
g
gradients/Shape_27Shapegradients/Switch_26:1*
out_type0*
_output_shapes
:*
T0
�
gradients/zeros_26/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_26Fillgradients/Shape_27gradients/zeros_26/Const*
_output_shapes
:*
T0
�
Kgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeSgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_26*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_27Switchconv2d/Conv2D batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
e
gradients/Shape_28Shapegradients/Switch_27*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_27/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_27Fillgradients/Shape_28gradients/zeros_27/Const*
T0*/
_output_shapes
:���������
�
Ggradients/batch_normalization/cond/FusedBatchNorm/Switch_grad/cond_gradMergeOgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_27*
N*1
_output_shapes
:���������: *
T0
�
gradients/Switch_28Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_29Shapegradients/Switch_28*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_28/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_28Fillgradients/Shape_29gradients/zeros_28/Const*
T0*
_output_shapes
:
�
Igradients/batch_normalization/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeQgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_28*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_29Switchbatch_normalization/beta/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_30Shapegradients/Switch_29*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_29/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_29Fillgradients/Shape_30gradients/zeros_29/Const*
_output_shapes
:*
T0
�
Igradients/batch_normalization/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeQgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_29*
T0*
N*
_output_shapes

:: 
�
gradients/AddN_15AddNIgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_gradGgradients/batch_normalization/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*/
_output_shapes
:���������
�
#gradients/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderconv2d/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
�
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/readgradients/AddN_15*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides

�
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder%gradients/conv2d/Conv2D_grad/ShapeN:1gradients/AddN_15*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides

�
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_11^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput2^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter
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
�
gradients/AddN_16AddNKgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradIgradients/batch_normalization/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:
�
gradients/AddN_17AddNKgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradIgradients/batch_normalization/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:
�
GradientDescent/learning_rateConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *o;
�
9GradientDescent/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelGradientDescent/learning_rate7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
�
EGradientDescent/update_batch_normalization/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization/gammaGradientDescent/learning_rategradients/AddN_16*
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@batch_normalization/gamma
�
DGradientDescent/update_batch_normalization/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization/betaGradientDescent/learning_rategradients/AddN_17*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:*
use_locking( *
T0
�
;GradientDescent/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelGradientDescent/learning_rate9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
�
GGradientDescent/update_batch_normalization_1/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_1/gammaGradientDescent/learning_rategradients/AddN_13*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:
�
FGradientDescent/update_batch_normalization_1/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_1/betaGradientDescent/learning_rategradients/AddN_14*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:
�
;GradientDescent/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelGradientDescent/learning_rate9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@conv2d_2/kernel
�
GGradientDescent/update_batch_normalization_2/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_2/gammaGradientDescent/learning_rategradients/AddN_10*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:
�
FGradientDescent/update_batch_normalization_2/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_2/betaGradientDescent/learning_rategradients/AddN_11*
_output_shapes
:*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_2/beta
�
;GradientDescent/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelGradientDescent/learning_rate9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
use_locking( *
T0
�
GGradientDescent/update_batch_normalization_3/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_3/gammaGradientDescent/learning_rategradients/AddN_7*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:*
use_locking( 
�
FGradientDescent/update_batch_normalization_3/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_3/betaGradientDescent/learning_rategradients/AddN_8*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
:
�
;GradientDescent/update_conv2d_4/kernel/ApplyGradientDescentApplyGradientDescentconv2d_4/kernelGradientDescent/learning_rate9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
�
GGradientDescent/update_batch_normalization_4/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_4/gammaGradientDescent/learning_rategradients/AddN_4*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:
�
FGradientDescent/update_batch_normalization_4/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_4/betaGradientDescent/learning_rategradients/AddN_5*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:
�
8GradientDescent/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelGradientDescent/learning_rate6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
_output_shapes
:	�d
�
GGradientDescent/update_batch_normalization_5/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_5/gammaGradientDescent/learning_rateMgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes
:d
�
FGradientDescent/update_batch_normalization_5/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_5/betaGradientDescent/learning_rateKgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
:d
�
:GradientDescent/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelGradientDescent/learning_rate8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
_output_shapes

:d
*
use_locking( *
T0
�
8GradientDescent/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasGradientDescent/learning_rate9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
_output_shapes
:
*
use_locking( *
T0
�
GradientDescentNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^GradientDescent/update_conv2d/kernel/ApplyGradientDescentF^GradientDescent/update_batch_normalization/gamma/ApplyGradientDescentE^GradientDescent/update_batch_normalization/beta/ApplyGradientDescent<^GradientDescent/update_conv2d_1/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_1/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_1/beta/ApplyGradientDescent<^GradientDescent/update_conv2d_2/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_2/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_2/beta/ApplyGradientDescent<^GradientDescent/update_conv2d_3/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_3/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_3/beta/ApplyGradientDescent<^GradientDescent/update_conv2d_4/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_4/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_4/beta/ApplyGradientDescent9^GradientDescent/update_dense/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_5/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_5/beta/ApplyGradientDescent;^GradientDescent/update_dense_1/kernel/ApplyGradientDescent9^GradientDescent/update_dense_1/bias/ApplyGradientDescent
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
�
ArgMaxArgMaxdense_2/BiasAddArgMax/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
T
ArgMax_1/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
�
ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:���������
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
Mean_1MeanCastConst_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
N
Merge/MergeSummaryMergeSummary	conv_loss*
_output_shapes
: *
N" ��q:     �S�t	�숙�AJ��
�+�+
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
p
	AssignSub
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
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
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
�
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
epsilonfloat%��8"
data_formatstringNHWC"
is_trainingbool(
�
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
epsilonfloat%��8"
data_formatstringNHWC"
is_trainingbool(
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
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
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
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
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
-
Rsqrt
x"T
y"T"
Ttype:	
2
:
	RsqrtGrad
y"T
dy"T
z"T"
Ttype:	
2
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
F
SquaredDifference
x"T
y"T
z"T"
Ttype:
	2	�
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
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.4.12v1.4.0-19-ga52c8d9��
~
PlaceholderPlaceholder*
dtype0*/
_output_shapes
:���������*$
shape:���������
p
Placeholder_1Placeholder*
shape:���������
*
dtype0*'
_output_shapes
:���������

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
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
:
�
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
e
conv2d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
�
conv2d/Conv2DConv2DPlaceholderconv2d/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
�
*batch_normalization/gamma/Initializer/onesConst*,
_class"
 loc:@batch_normalization/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization/gamma
VariableV2*,
_class"
 loc:@batch_normalization/gamma*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
:
�
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
�
*batch_normalization/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*+
_class!
loc:@batch_normalization/beta*
valueB*    
�
batch_normalization/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape:
�
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(
�
batch_normalization/beta/readIdentitybatch_normalization/beta*
_output_shapes
:*
T0*+
_class!
loc:@batch_normalization/beta
�
1batch_normalization/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
	container *
shape:
�
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
�
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
T0
�
4batch_normalization/moving_variance/Initializer/onesConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
#batch_normalization/moving_variance
VariableV2*6
_class,
*(loc:@batch_normalization/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
�
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
n
batch_normalization/cond/SwitchSwitchPlaceholder_2Placeholder_2*
T0
*
_output_shapes

::
s
!batch_normalization/cond/switch_tIdentity!batch_normalization/cond/Switch:1*
T0
*
_output_shapes
:
q
!batch_normalization/cond/switch_fIdentitybatch_normalization/cond/Switch*
_output_shapes
:*
T0

^
 batch_normalization/cond/pred_idIdentityPlaceholder_2*
_output_shapes
:*
T0

�
batch_normalization/cond/ConstConst"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
 batch_normalization/cond/Const_1Const"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
.batch_normalization/cond/FusedBatchNorm/SwitchSwitchconv2d/Conv2D batch_normalization/cond/pred_id*
T0* 
_class
loc:@conv2d/Conv2D*J
_output_shapes8
6:���������:���������
�
0batch_normalization/cond/FusedBatchNorm/Switch_1Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id*
T0*,
_class"
 loc:@batch_normalization/gamma* 
_output_shapes
::
�
0batch_normalization/cond/FusedBatchNorm/Switch_2Switchbatch_normalization/beta/read batch_normalization/cond/pred_id* 
_output_shapes
::*
T0*+
_class!
loc:@batch_normalization/beta
�
'batch_normalization/cond/FusedBatchNormFusedBatchNorm0batch_normalization/cond/FusedBatchNorm/Switch:12batch_normalization/cond/FusedBatchNorm/Switch_1:12batch_normalization/cond/FusedBatchNorm/Switch_2:1batch_normalization/cond/Const batch_normalization/cond/Const_1*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(*
epsilon%o�:*
T0
�
0batch_normalization/cond/FusedBatchNorm_1/SwitchSwitchconv2d/Conv2D batch_normalization/cond/pred_id*
T0* 
_class
loc:@conv2d/Conv2D*J
_output_shapes8
6:���������:���������
�
2batch_normalization/cond/FusedBatchNorm_1/Switch_1Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id*
T0*,
_class"
 loc:@batch_normalization/gamma* 
_output_shapes
::
�
2batch_normalization/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization/beta/read batch_normalization/cond/pred_id*
T0*+
_class!
loc:@batch_normalization/beta* 
_output_shapes
::
�
2batch_normalization/cond/FusedBatchNorm_1/Switch_3Switch$batch_normalization/moving_mean/read batch_normalization/cond/pred_id* 
_output_shapes
::*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
�
2batch_normalization/cond/FusedBatchNorm_1/Switch_4Switch(batch_normalization/moving_variance/read batch_normalization/cond/pred_id*
T0*6
_class,
*(loc:@batch_normalization/moving_variance* 
_output_shapes
::
�
)batch_normalization/cond/FusedBatchNorm_1FusedBatchNorm0batch_normalization/cond/FusedBatchNorm_1/Switch2batch_normalization/cond/FusedBatchNorm_1/Switch_12batch_normalization/cond/FusedBatchNorm_1/Switch_22batch_normalization/cond/FusedBatchNorm_1/Switch_32batch_normalization/cond/FusedBatchNorm_1/Switch_4*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:
�
batch_normalization/cond/MergeMerge)batch_normalization/cond/FusedBatchNorm_1'batch_normalization/cond/FusedBatchNorm*
T0*
N*1
_output_shapes
:���������: 
�
 batch_normalization/cond/Merge_1Merge+batch_normalization/cond/FusedBatchNorm_1:1)batch_normalization/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
�
 batch_normalization/cond/Merge_2Merge+batch_normalization/cond/FusedBatchNorm_1:2)batch_normalization/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
i
$batch_normalization/ExpandDims/inputConst*
dtype0*
_output_shapes
: *
valueB
 *
�#<
d
"batch_normalization/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
batch_normalization/ExpandDims
ExpandDims$batch_normalization/ExpandDims/input"batch_normalization/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
k
&batch_normalization/ExpandDims_1/inputConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
$batch_normalization/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization/ExpandDims_1
ExpandDims&batch_normalization/ExpandDims_1/input$batch_normalization/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
k
!batch_normalization/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization/ReshapeReshapePlaceholder_2!batch_normalization/Reshape/shape*
_output_shapes
:*
T0
*
Tshape0
�
batch_normalization/SelectSelectbatch_normalization/Reshapebatch_normalization/ExpandDims batch_normalization/ExpandDims_1*
T0*
_output_shapes
:
z
batch_normalization/SqueezeSqueezebatch_normalization/Select*
_output_shapes
: *
squeeze_dims
 *
T0
�
(batch_normalization/AssignMovingAvg/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
T0
�
'batch_normalization/AssignMovingAvg/SubSub(batch_normalization/AssignMovingAvg/read batch_normalization/cond/Merge_1*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
T0
�
'batch_normalization/AssignMovingAvg/MulMul'batch_normalization/AssignMovingAvg/Subbatch_normalization/Squeeze*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
�
#batch_normalization/AssignMovingAvg	AssignSubbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/Mul*
use_locking( *
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
�
*batch_normalization/AssignMovingAvg_1/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/SubSub*batch_normalization/AssignMovingAvg_1/read batch_normalization/cond/Merge_2*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
�
)batch_normalization/AssignMovingAvg_1/MulMul)batch_normalization/AssignMovingAvg_1/Subbatch_normalization/Squeeze*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
�
%batch_normalization/AssignMovingAvg_1	AssignSub#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/Mul*
use_locking( *
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
f
ReluRelubatch_normalization/cond/Merge*
T0*/
_output_shapes
:���������
�
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*"
_class
loc:@conv2d_1/kernel*%
valueB"            
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
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
valueB
 *�[q>*
dtype0
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
VariableV2*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape:*
dtype0
�
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*&
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(
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
conv2d_2/Conv2DConv2DReluconv2d_1/kernel/read*
paddingSAME*/
_output_shapes
:���������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
,batch_normalization_1/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_1/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_1/gamma
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma
�
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:
�
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
_output_shapes
:*
T0*.
_class$
" loc:@batch_normalization_1/gamma
�
,batch_normalization_1/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_1/beta*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization_1/beta
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container 
�
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:
�
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:
�
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container *
shape:
�
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:
�
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
%batch_normalization_1/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:
�
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
�
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
p
!batch_normalization_2/cond/SwitchSwitchPlaceholder_2Placeholder_2*
_output_shapes

::*
T0

w
#batch_normalization_2/cond/switch_tIdentity#batch_normalization_2/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_2/cond/switch_fIdentity!batch_normalization_2/cond/Switch*
T0
*
_output_shapes
:
`
"batch_normalization_2/cond/pred_idIdentityPlaceholder_2*
T0
*
_output_shapes
:
�
 batch_normalization_2/cond/ConstConst$^batch_normalization_2/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
"batch_normalization_2/cond/Const_1Const$^batch_normalization_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB 
�
0batch_normalization_2/cond/FusedBatchNorm/SwitchSwitchconv2d_2/Conv2D"batch_normalization_2/cond/pred_id*
T0*"
_class
loc:@conv2d_2/Conv2D*J
_output_shapes8
6:���������:���������
�
2batch_normalization_2/cond/FusedBatchNorm/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_2/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
::
�
2batch_normalization_2/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_2/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
::
�
)batch_normalization_2/cond/FusedBatchNormFusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm/Switch:14batch_normalization_2/cond/FusedBatchNorm/Switch_1:14batch_normalization_2/cond/FusedBatchNorm/Switch_2:1 batch_normalization_2/cond/Const"batch_normalization_2/cond/Const_1*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(
�
2batch_normalization_2/cond/FusedBatchNorm_1/SwitchSwitchconv2d_2/Conv2D"batch_normalization_2/cond/pred_id*
T0*"
_class
loc:@conv2d_2/Conv2D*J
_output_shapes8
6:���������:���������
�
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_2/cond/pred_id* 
_output_shapes
::*
T0*.
_class$
" loc:@batch_normalization_1/gamma
�
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_2/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
::
�
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_1/moving_mean/read"batch_normalization_2/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean* 
_output_shapes
::
�
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_1/moving_variance/read"batch_normalization_2/cond/pred_id* 
_output_shapes
::*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
�
+batch_normalization_2/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm_1/Switch4batch_normalization_2/cond/FusedBatchNorm_1/Switch_14batch_normalization_2/cond/FusedBatchNorm_1/Switch_24batch_normalization_2/cond/FusedBatchNorm_1/Switch_34batch_normalization_2/cond/FusedBatchNorm_1/Switch_4*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0*
data_formatNHWC
�
 batch_normalization_2/cond/MergeMerge+batch_normalization_2/cond/FusedBatchNorm_1)batch_normalization_2/cond/FusedBatchNorm*
T0*
N*1
_output_shapes
:���������: 
�
"batch_normalization_2/cond/Merge_1Merge-batch_normalization_2/cond/FusedBatchNorm_1:1+batch_normalization_2/cond/FusedBatchNorm:1*
N*
_output_shapes

:: *
T0
�
"batch_normalization_2/cond/Merge_2Merge-batch_normalization_2/cond/FusedBatchNorm_1:2+batch_normalization_2/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
k
&batch_normalization_2/ExpandDims/inputConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
f
$batch_normalization_2/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization_2/ExpandDims
ExpandDims&batch_normalization_2/ExpandDims/input$batch_normalization_2/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
m
(batch_normalization_2/ExpandDims_1/inputConst*
dtype0*
_output_shapes
: *
valueB
 *    
h
&batch_normalization_2/ExpandDims_1/dimConst*
_output_shapes
: *
value	B : *
dtype0
�
"batch_normalization_2/ExpandDims_1
ExpandDims(batch_normalization_2/ExpandDims_1/input&batch_normalization_2/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
m
#batch_normalization_2/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_2/ReshapeReshapePlaceholder_2#batch_normalization_2/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_2/SelectSelectbatch_normalization_2/Reshape batch_normalization_2/ExpandDims"batch_normalization_2/ExpandDims_1*
T0*
_output_shapes
:
~
batch_normalization_2/SqueezeSqueezebatch_normalization_2/Select*
_output_shapes
: *
squeeze_dims
 *
T0
�
*batch_normalization_2/AssignMovingAvg/readIdentity!batch_normalization_1/moving_mean*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
)batch_normalization_2/AssignMovingAvg/SubSub*batch_normalization_2/AssignMovingAvg/read"batch_normalization_2/cond/Merge_1*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
�
)batch_normalization_2/AssignMovingAvg/MulMul)batch_normalization_2/AssignMovingAvg/Subbatch_normalization_2/Squeeze*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
�
%batch_normalization_2/AssignMovingAvg	AssignSub!batch_normalization_1/moving_mean)batch_normalization_2/AssignMovingAvg/Mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
�
,batch_normalization_2/AssignMovingAvg_1/readIdentity%batch_normalization_1/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
�
+batch_normalization_2/AssignMovingAvg_1/SubSub,batch_normalization_2/AssignMovingAvg_1/read"batch_normalization_2/cond/Merge_2*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
�
+batch_normalization_2/AssignMovingAvg_1/MulMul+batch_normalization_2/AssignMovingAvg_1/Subbatch_normalization_2/Squeeze*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
�
'batch_normalization_2/AssignMovingAvg_1	AssignSub%batch_normalization_1/moving_variance+batch_normalization_2/AssignMovingAvg_1/Mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
j
Relu_1Relu batch_normalization_2/cond/Merge*
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
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:
�
conv2d_2/kernel
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape:
�
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:
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
conv2d_3/Conv2DConv2DRelu_1conv2d_2/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
�
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_2/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
_output_shapes
:*
T0*.
_class$
" loc:@batch_normalization_2/gamma
�
,batch_normalization_2/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_2/beta*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization_2/beta
VariableV2*-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:
�
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:
�
3batch_normalization_2/moving_mean/Initializer/zerosConst*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB*    *
dtype0
�
!batch_normalization_2/moving_mean
VariableV2*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
�
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:
�
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
�
6batch_normalization_2/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
%batch_normalization_2/moving_variance
VariableV2*8
_class.
,*loc:@batch_normalization_2/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:
�
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
p
!batch_normalization_3/cond/SwitchSwitchPlaceholder_2Placeholder_2*
_output_shapes

::*
T0

w
#batch_normalization_3/cond/switch_tIdentity#batch_normalization_3/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_3/cond/switch_fIdentity!batch_normalization_3/cond/Switch*
_output_shapes
:*
T0

`
"batch_normalization_3/cond/pred_idIdentityPlaceholder_2*
T0
*
_output_shapes
:
�
 batch_normalization_3/cond/ConstConst$^batch_normalization_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB 
�
"batch_normalization_3/cond/Const_1Const$^batch_normalization_3/cond/switch_t*
_output_shapes
: *
valueB *
dtype0
�
0batch_normalization_3/cond/FusedBatchNorm/SwitchSwitchconv2d_3/Conv2D"batch_normalization_3/cond/pred_id*
T0*"
_class
loc:@conv2d_3/Conv2D*J
_output_shapes8
6:���������:���������
�
2batch_normalization_3/cond/FusedBatchNorm/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_3/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_2/gamma* 
_output_shapes
::
�
2batch_normalization_3/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_3/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_2/beta* 
_output_shapes
::
�
)batch_normalization_3/cond/FusedBatchNormFusedBatchNorm2batch_normalization_3/cond/FusedBatchNorm/Switch:14batch_normalization_3/cond/FusedBatchNorm/Switch_1:14batch_normalization_3/cond/FusedBatchNorm/Switch_2:1 batch_normalization_3/cond/Const"batch_normalization_3/cond/Const_1*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(*
epsilon%o�:
�
2batch_normalization_3/cond/FusedBatchNorm_1/SwitchSwitchconv2d_3/Conv2D"batch_normalization_3/cond/pred_id*
T0*"
_class
loc:@conv2d_3/Conv2D*J
_output_shapes8
6:���������:���������
�
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_3/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_2/gamma* 
_output_shapes
::
�
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_3/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_2/beta* 
_output_shapes
::
�
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_2/moving_mean/read"batch_normalization_3/cond/pred_id* 
_output_shapes
::*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
�
4batch_normalization_3/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_2/moving_variance/read"batch_normalization_3/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance* 
_output_shapes
::
�
+batch_normalization_3/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_3/cond/FusedBatchNorm_1/Switch4batch_normalization_3/cond/FusedBatchNorm_1/Switch_14batch_normalization_3/cond/FusedBatchNorm_1/Switch_24batch_normalization_3/cond/FusedBatchNorm_1/Switch_34batch_normalization_3/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0
�
 batch_normalization_3/cond/MergeMerge+batch_normalization_3/cond/FusedBatchNorm_1)batch_normalization_3/cond/FusedBatchNorm*
N*1
_output_shapes
:���������: *
T0
�
"batch_normalization_3/cond/Merge_1Merge-batch_normalization_3/cond/FusedBatchNorm_1:1+batch_normalization_3/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
�
"batch_normalization_3/cond/Merge_2Merge-batch_normalization_3/cond/FusedBatchNorm_1:2+batch_normalization_3/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:: 
k
&batch_normalization_3/ExpandDims/inputConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
f
$batch_normalization_3/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization_3/ExpandDims
ExpandDims&batch_normalization_3/ExpandDims/input$batch_normalization_3/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
m
(batch_normalization_3/ExpandDims_1/inputConst*
dtype0*
_output_shapes
: *
valueB
 *    
h
&batch_normalization_3/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_3/ExpandDims_1
ExpandDims(batch_normalization_3/ExpandDims_1/input&batch_normalization_3/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
m
#batch_normalization_3/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_3/ReshapeReshapePlaceholder_2#batch_normalization_3/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_3/SelectSelectbatch_normalization_3/Reshape batch_normalization_3/ExpandDims"batch_normalization_3/ExpandDims_1*
T0*
_output_shapes
:
~
batch_normalization_3/SqueezeSqueezebatch_normalization_3/Select*
squeeze_dims
 *
T0*
_output_shapes
: 
�
*batch_normalization_3/AssignMovingAvg/readIdentity!batch_normalization_2/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
�
)batch_normalization_3/AssignMovingAvg/SubSub*batch_normalization_3/AssignMovingAvg/read"batch_normalization_3/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
�
)batch_normalization_3/AssignMovingAvg/MulMul)batch_normalization_3/AssignMovingAvg/Subbatch_normalization_3/Squeeze*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:
�
%batch_normalization_3/AssignMovingAvg	AssignSub!batch_normalization_2/moving_mean)batch_normalization_3/AssignMovingAvg/Mul*
_output_shapes
:*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
�
,batch_normalization_3/AssignMovingAvg_1/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
�
+batch_normalization_3/AssignMovingAvg_1/SubSub,batch_normalization_3/AssignMovingAvg_1/read"batch_normalization_3/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
�
+batch_normalization_3/AssignMovingAvg_1/MulMul+batch_normalization_3/AssignMovingAvg_1/Subbatch_normalization_3/Squeeze*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:*
T0
�
'batch_normalization_3/AssignMovingAvg_1	AssignSub%batch_normalization_2/moving_variance+batch_normalization_3/AssignMovingAvg_1/Mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:
j
Relu_2Relu batch_normalization_3/cond/Merge*/
_output_shapes
:���������*
T0
�
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
.conv2d_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *"
_class
loc:@conv2d_3/kernel*
valueB
 *��*
dtype0
�
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_3/kernel*
valueB
 *�>
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
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_3/kernel
�
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_3/kernel*&
_output_shapes
:*
T0
�
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_3/kernel
�
conv2d_3/kernel
VariableV2*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:
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
conv2d_3/kernel/readIdentityconv2d_3/kernel*&
_output_shapes
:*
T0*"
_class
loc:@conv2d_3/kernel
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
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
,batch_normalization_3/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_3/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_3/gamma
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_3/gamma*
	container *
shape:*
dtype0*
_output_shapes
:
�
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
�
 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:
�
,batch_normalization_3/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_3/beta*
valueB*    *
dtype0*
_output_shapes
:
�
batch_normalization_3/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_3/beta*
	container *
shape:
�
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes
:
�
batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*
_output_shapes
:*
T0*-
_class#
!loc:@batch_normalization_3/beta
�
3batch_normalization_3/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
valueB*    *
dtype0*
_output_shapes
:
�
!batch_normalization_3/moving_mean
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_3/moving_mean*
	container 
�
(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(
�
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
�
6batch_normalization_3/moving_variance/Initializer/onesConst*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_3/moving_variance*
valueB*  �?*
dtype0
�
%batch_normalization_3/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *8
_class.
,*loc:@batch_normalization_3/moving_variance
�
,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
�
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:
p
!batch_normalization_4/cond/SwitchSwitchPlaceholder_2Placeholder_2*
T0
*
_output_shapes

::
w
#batch_normalization_4/cond/switch_tIdentity#batch_normalization_4/cond/Switch:1*
T0
*
_output_shapes
:
u
#batch_normalization_4/cond/switch_fIdentity!batch_normalization_4/cond/Switch*
T0
*
_output_shapes
:
`
"batch_normalization_4/cond/pred_idIdentityPlaceholder_2*
T0
*
_output_shapes
:
�
 batch_normalization_4/cond/ConstConst$^batch_normalization_4/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
"batch_normalization_4/cond/Const_1Const$^batch_normalization_4/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
0batch_normalization_4/cond/FusedBatchNorm/SwitchSwitchconv2d_4/Conv2D"batch_normalization_4/cond/pred_id*
T0*"
_class
loc:@conv2d_4/Conv2D*J
_output_shapes8
6:���������:���������
�
2batch_normalization_4/cond/FusedBatchNorm/Switch_1Switch batch_normalization_3/gamma/read"batch_normalization_4/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_3/gamma* 
_output_shapes
::
�
2batch_normalization_4/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_3/beta/read"batch_normalization_4/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_3/beta* 
_output_shapes
::
�
)batch_normalization_4/cond/FusedBatchNormFusedBatchNorm2batch_normalization_4/cond/FusedBatchNorm/Switch:14batch_normalization_4/cond/FusedBatchNorm/Switch_1:14batch_normalization_4/cond/FusedBatchNorm/Switch_2:1 batch_normalization_4/cond/Const"batch_normalization_4/cond/Const_1*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(*
epsilon%o�:*
T0
�
2batch_normalization_4/cond/FusedBatchNorm_1/SwitchSwitchconv2d_4/Conv2D"batch_normalization_4/cond/pred_id*
T0*"
_class
loc:@conv2d_4/Conv2D*J
_output_shapes8
6:���������:���������
�
4batch_normalization_4/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_3/gamma/read"batch_normalization_4/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_3/gamma* 
_output_shapes
::
�
4batch_normalization_4/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_3/beta/read"batch_normalization_4/cond/pred_id* 
_output_shapes
::*
T0*-
_class#
!loc:@batch_normalization_3/beta
�
4batch_normalization_4/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_3/moving_mean/read"batch_normalization_4/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean* 
_output_shapes
::
�
4batch_normalization_4/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_3/moving_variance/read"batch_normalization_4/cond/pred_id*8
_class.
,*loc:@batch_normalization_3/moving_variance* 
_output_shapes
::*
T0
�
+batch_normalization_4/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_4/cond/FusedBatchNorm_1/Switch4batch_normalization_4/cond/FusedBatchNorm_1/Switch_14batch_normalization_4/cond/FusedBatchNorm_1/Switch_24batch_normalization_4/cond/FusedBatchNorm_1/Switch_34batch_normalization_4/cond/FusedBatchNorm_1/Switch_4*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0*
data_formatNHWC
�
 batch_normalization_4/cond/MergeMerge+batch_normalization_4/cond/FusedBatchNorm_1)batch_normalization_4/cond/FusedBatchNorm*
T0*
N*1
_output_shapes
:���������: 
�
"batch_normalization_4/cond/Merge_1Merge-batch_normalization_4/cond/FusedBatchNorm_1:1+batch_normalization_4/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:: 
�
"batch_normalization_4/cond/Merge_2Merge-batch_normalization_4/cond/FusedBatchNorm_1:2+batch_normalization_4/cond/FusedBatchNorm:2*
N*
_output_shapes

:: *
T0
k
&batch_normalization_4/ExpandDims/inputConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
f
$batch_normalization_4/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
 batch_normalization_4/ExpandDims
ExpandDims&batch_normalization_4/ExpandDims/input$batch_normalization_4/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
m
(batch_normalization_4/ExpandDims_1/inputConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
&batch_normalization_4/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_4/ExpandDims_1
ExpandDims(batch_normalization_4/ExpandDims_1/input&batch_normalization_4/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
m
#batch_normalization_4/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_4/ReshapeReshapePlaceholder_2#batch_normalization_4/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_4/SelectSelectbatch_normalization_4/Reshape batch_normalization_4/ExpandDims"batch_normalization_4/ExpandDims_1*
T0*
_output_shapes
:
~
batch_normalization_4/SqueezeSqueezebatch_normalization_4/Select*
squeeze_dims
 *
T0*
_output_shapes
: 
�
*batch_normalization_4/AssignMovingAvg/readIdentity!batch_normalization_3/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
�
)batch_normalization_4/AssignMovingAvg/SubSub*batch_normalization_4/AssignMovingAvg/read"batch_normalization_4/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:
�
)batch_normalization_4/AssignMovingAvg/MulMul)batch_normalization_4/AssignMovingAvg/Subbatch_normalization_4/Squeeze*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean
�
%batch_normalization_4/AssignMovingAvg	AssignSub!batch_normalization_3/moving_mean)batch_normalization_4/AssignMovingAvg/Mul*
_output_shapes
:*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean
�
,batch_normalization_4/AssignMovingAvg_1/readIdentity%batch_normalization_3/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:
�
+batch_normalization_4/AssignMovingAvg_1/SubSub,batch_normalization_4/AssignMovingAvg_1/read"batch_normalization_4/cond/Merge_2*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance
�
+batch_normalization_4/AssignMovingAvg_1/MulMul+batch_normalization_4/AssignMovingAvg_1/Subbatch_normalization_4/Squeeze*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:
�
'batch_normalization_4/AssignMovingAvg_1	AssignSub%batch_normalization_3/moving_variance+batch_normalization_4/AssignMovingAvg_1/Mul*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:*
use_locking( 
j
Relu_3Relu batch_normalization_4/cond/Merge*/
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
dtype0*&
_output_shapes
:*

seed *
T0*"
_class
loc:@conv2d_4/kernel*
seed2 
�
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: *
T0
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
VariableV2*"
_class
loc:@conv2d_4/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
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
conv2d_4/kernel/readIdentityconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:*
T0
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv2d_5/Conv2DConv2DRelu_3conv2d_4/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
�
,batch_normalization_4/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_4/gamma*
valueB*  �?*
dtype0*
_output_shapes
:
�
batch_normalization_4/gamma
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *.
_class$
" loc:@batch_normalization_4/gamma
�
"batch_normalization_4/gamma/AssignAssignbatch_normalization_4/gamma,batch_normalization_4/gamma/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(
�
 batch_normalization_4/gamma/readIdentitybatch_normalization_4/gamma*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:
�
,batch_normalization_4/beta/Initializer/zerosConst*
_output_shapes
:*-
_class#
!loc:@batch_normalization_4/beta*
valueB*    *
dtype0
�
batch_normalization_4/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *-
_class#
!loc:@batch_normalization_4/beta*
	container *
shape:
�
!batch_normalization_4/beta/AssignAssignbatch_normalization_4/beta,batch_normalization_4/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_4/beta
�
batch_normalization_4/beta/readIdentitybatch_normalization_4/beta*
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:
�
3batch_normalization_4/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_4/moving_mean*
valueB*    
�
!batch_normalization_4/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *4
_class*
(&loc:@batch_normalization_4/moving_mean*
	container *
shape:
�
(batch_normalization_4/moving_mean/AssignAssign!batch_normalization_4/moving_mean3batch_normalization_4/moving_mean/Initializer/zeros*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
&batch_normalization_4/moving_mean/readIdentity!batch_normalization_4/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:
�
6batch_normalization_4/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_4/moving_variance*
valueB*  �?*
dtype0*
_output_shapes
:
�
%batch_normalization_4/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *8
_class.
,*loc:@batch_normalization_4/moving_variance
�
,batch_normalization_4/moving_variance/AssignAssign%batch_normalization_4/moving_variance6batch_normalization_4/moving_variance/Initializer/ones*
_output_shapes
:*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(
�
*batch_normalization_4/moving_variance/readIdentity%batch_normalization_4/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
p
!batch_normalization_5/cond/SwitchSwitchPlaceholder_2Placeholder_2*
T0
*
_output_shapes

::
w
#batch_normalization_5/cond/switch_tIdentity#batch_normalization_5/cond/Switch:1*
_output_shapes
:*
T0

u
#batch_normalization_5/cond/switch_fIdentity!batch_normalization_5/cond/Switch*
_output_shapes
:*
T0

`
"batch_normalization_5/cond/pred_idIdentityPlaceholder_2*
_output_shapes
:*
T0

�
 batch_normalization_5/cond/ConstConst$^batch_normalization_5/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
"batch_normalization_5/cond/Const_1Const$^batch_normalization_5/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
�
0batch_normalization_5/cond/FusedBatchNorm/SwitchSwitchconv2d_5/Conv2D"batch_normalization_5/cond/pred_id*J
_output_shapes8
6:���������:���������*
T0*"
_class
loc:@conv2d_5/Conv2D
�
2batch_normalization_5/cond/FusedBatchNorm/Switch_1Switch batch_normalization_4/gamma/read"batch_normalization_5/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_4/gamma* 
_output_shapes
::
�
2batch_normalization_5/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_5/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_4/beta* 
_output_shapes
::
�
)batch_normalization_5/cond/FusedBatchNormFusedBatchNorm2batch_normalization_5/cond/FusedBatchNorm/Switch:14batch_normalization_5/cond/FusedBatchNorm/Switch_1:14batch_normalization_5/cond/FusedBatchNorm/Switch_2:1 batch_normalization_5/cond/Const"batch_normalization_5/cond/Const_1*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training(*
epsilon%o�:
�
2batch_normalization_5/cond/FusedBatchNorm_1/SwitchSwitchconv2d_5/Conv2D"batch_normalization_5/cond/pred_id*"
_class
loc:@conv2d_5/Conv2D*J
_output_shapes8
6:���������:���������*
T0
�
4batch_normalization_5/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_4/gamma/read"batch_normalization_5/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_4/gamma* 
_output_shapes
::
�
4batch_normalization_5/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_5/cond/pred_id* 
_output_shapes
::*
T0*-
_class#
!loc:@batch_normalization_4/beta
�
4batch_normalization_5/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_4/moving_mean/read"batch_normalization_5/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean* 
_output_shapes
::
�
4batch_normalization_5/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_4/moving_variance/read"batch_normalization_5/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance* 
_output_shapes
::
�
+batch_normalization_5/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_5/cond/FusedBatchNorm_1/Switch4batch_normalization_5/cond/FusedBatchNorm_1/Switch_14batch_normalization_5/cond/FusedBatchNorm_1/Switch_24batch_normalization_5/cond/FusedBatchNorm_1/Switch_34batch_normalization_5/cond/FusedBatchNorm_1/Switch_4*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( 
�
 batch_normalization_5/cond/MergeMerge+batch_normalization_5/cond/FusedBatchNorm_1)batch_normalization_5/cond/FusedBatchNorm*
T0*
N*1
_output_shapes
:���������: 
�
"batch_normalization_5/cond/Merge_1Merge-batch_normalization_5/cond/FusedBatchNorm_1:1+batch_normalization_5/cond/FusedBatchNorm:1*
N*
_output_shapes

:: *
T0
�
"batch_normalization_5/cond/Merge_2Merge-batch_normalization_5/cond/FusedBatchNorm_1:2+batch_normalization_5/cond/FusedBatchNorm:2*
N*
_output_shapes

:: *
T0
k
&batch_normalization_5/ExpandDims/inputConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
f
$batch_normalization_5/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization_5/ExpandDims
ExpandDims&batch_normalization_5/ExpandDims/input$batch_normalization_5/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
m
(batch_normalization_5/ExpandDims_1/inputConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
&batch_normalization_5/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
"batch_normalization_5/ExpandDims_1
ExpandDims(batch_normalization_5/ExpandDims_1/input&batch_normalization_5/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
m
#batch_normalization_5/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
�
batch_normalization_5/ReshapeReshapePlaceholder_2#batch_normalization_5/Reshape/shape*
Tshape0*
_output_shapes
:*
T0

�
batch_normalization_5/SelectSelectbatch_normalization_5/Reshape batch_normalization_5/ExpandDims"batch_normalization_5/ExpandDims_1*
T0*
_output_shapes
:
~
batch_normalization_5/SqueezeSqueezebatch_normalization_5/Select*
T0*
_output_shapes
: *
squeeze_dims
 
�
*batch_normalization_5/AssignMovingAvg/readIdentity!batch_normalization_4/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:
�
)batch_normalization_5/AssignMovingAvg/SubSub*batch_normalization_5/AssignMovingAvg/read"batch_normalization_5/cond/Merge_1*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean
�
)batch_normalization_5/AssignMovingAvg/MulMul)batch_normalization_5/AssignMovingAvg/Subbatch_normalization_5/Squeeze*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:
�
%batch_normalization_5/AssignMovingAvg	AssignSub!batch_normalization_4/moving_mean)batch_normalization_5/AssignMovingAvg/Mul*
_output_shapes
:*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean
�
,batch_normalization_5/AssignMovingAvg_1/readIdentity%batch_normalization_4/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
�
+batch_normalization_5/AssignMovingAvg_1/SubSub,batch_normalization_5/AssignMovingAvg_1/read"batch_normalization_5/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
�
+batch_normalization_5/AssignMovingAvg_1/MulMul+batch_normalization_5/AssignMovingAvg_1/Subbatch_normalization_5/Squeeze*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
�
'batch_normalization_5/AssignMovingAvg_1	AssignSub%batch_normalization_4/moving_variance+batch_normalization_5/AssignMovingAvg_1/Mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:
j
Relu_4Relu batch_normalization_5/cond/Merge*
T0*/
_output_shapes
:���������
^
Reshape/shapeConst*
_output_shapes
:*
valueB"����P  *
dtype0
j
ReshapeReshapeRelu_4Reshape/shape*
T0*
Tshape0*(
_output_shapes
:����������
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
_class
loc:@dense/kernel*
valueB
 *>=*
dtype0*
_output_shapes
: 
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0*
_output_shapes
:	�d*

seed 
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
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	�d*
use_locking(*
T0
v
dense/kernel/readIdentitydense/kernel*
_output_shapes
:	�d*
T0*
_class
loc:@dense/kernel
�
dense/MatMulMatMulReshapedense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������d*
transpose_a( 
�
,batch_normalization_5/gamma/Initializer/onesConst*
_output_shapes
:d*.
_class$
" loc:@batch_normalization_5/gamma*
valueBd*  �?*
dtype0
�
batch_normalization_5/gamma
VariableV2*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name *.
_class$
" loc:@batch_normalization_5/gamma
�
"batch_normalization_5/gamma/AssignAssignbatch_normalization_5/gamma,batch_normalization_5/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes
:d*
use_locking(
�
 batch_normalization_5/gamma/readIdentitybatch_normalization_5/gamma*
_output_shapes
:d*
T0*.
_class$
" loc:@batch_normalization_5/gamma
�
,batch_normalization_5/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:d*-
_class#
!loc:@batch_normalization_5/beta*
valueBd*    
�
batch_normalization_5/beta
VariableV2*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name *-
_class#
!loc:@batch_normalization_5/beta
�
!batch_normalization_5/beta/AssignAssignbatch_normalization_5/beta,batch_normalization_5/beta/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes
:d
�
batch_normalization_5/beta/readIdentitybatch_normalization_5/beta*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
:d
�
3batch_normalization_5/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:d*4
_class*
(&loc:@batch_normalization_5/moving_mean*
valueBd*    
�
!batch_normalization_5/moving_mean
VariableV2*4
_class*
(&loc:@batch_normalization_5/moving_mean*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name 
�
(batch_normalization_5/moving_mean/AssignAssign!batch_normalization_5/moving_mean3batch_normalization_5/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes
:d
�
&batch_normalization_5/moving_mean/readIdentity!batch_normalization_5/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
:d
�
6batch_normalization_5/moving_variance/Initializer/onesConst*
_output_shapes
:d*8
_class.
,*loc:@batch_normalization_5/moving_variance*
valueBd*  �?*
dtype0
�
%batch_normalization_5/moving_variance
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *8
_class.
,*loc:@batch_normalization_5/moving_variance*
	container *
shape:d
�
,batch_normalization_5/moving_variance/AssignAssign%batch_normalization_5/moving_variance6batch_normalization_5/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance
�
*batch_normalization_5/moving_variance/readIdentity%batch_normalization_5/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
:d
~
4batch_normalization_6/moments/mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
�
"batch_normalization_6/moments/meanMeandense/MatMul4batch_normalization_6/moments/mean/reduction_indices*
T0*
_output_shapes

:d*
	keep_dims(*

Tidx0
�
*batch_normalization_6/moments/StopGradientStopGradient"batch_normalization_6/moments/mean*
T0*
_output_shapes

:d
�
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferencedense/MatMul*batch_normalization_6/moments/StopGradient*
T0*'
_output_shapes
:���������d
�
8batch_normalization_6/moments/variance/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
�
&batch_normalization_6/moments/varianceMean/batch_normalization_6/moments/SquaredDifference8batch_normalization_6/moments/variance/reduction_indices*
_output_shapes

:d*
	keep_dims(*

Tidx0*
T0
�
%batch_normalization_6/moments/SqueezeSqueeze"batch_normalization_6/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:d
�
'batch_normalization_6/moments/Squeeze_1Squeeze&batch_normalization_6/moments/variance*
T0*
_output_shapes
:d*
squeeze_dims
 
f
$batch_normalization_6/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
 batch_normalization_6/ExpandDims
ExpandDims%batch_normalization_6/moments/Squeeze$batch_normalization_6/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:d
h
&batch_normalization_6/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_6/ExpandDims_1
ExpandDims&batch_normalization_5/moving_mean/read&batch_normalization_6/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:d
m
#batch_normalization_6/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_6/ReshapeReshapePlaceholder_2#batch_normalization_6/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_6/SelectSelectbatch_normalization_6/Reshape batch_normalization_6/ExpandDims"batch_normalization_6/ExpandDims_1*
T0*
_output_shapes

:d
�
batch_normalization_6/SqueezeSqueezebatch_normalization_6/Select*
squeeze_dims
 *
T0*
_output_shapes
:d
h
&batch_normalization_6/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_6/ExpandDims_2
ExpandDims'batch_normalization_6/moments/Squeeze_1&batch_normalization_6/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes

:d
h
&batch_normalization_6/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
"batch_normalization_6/ExpandDims_3
ExpandDims*batch_normalization_5/moving_variance/read&batch_normalization_6/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes

:d
o
%batch_normalization_6/Reshape_1/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_6/Reshape_1ReshapePlaceholder_2%batch_normalization_6/Reshape_1/shape*
_output_shapes
:*
T0
*
Tshape0
�
batch_normalization_6/Select_1Selectbatch_normalization_6/Reshape_1"batch_normalization_6/ExpandDims_2"batch_normalization_6/ExpandDims_3*
T0*
_output_shapes

:d
�
batch_normalization_6/Squeeze_1Squeezebatch_normalization_6/Select_1*
_output_shapes
:d*
squeeze_dims
 *
T0
m
(batch_normalization_6/ExpandDims_4/inputConst*
dtype0*
_output_shapes
: *
valueB
 *�p}?
h
&batch_normalization_6/ExpandDims_4/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
"batch_normalization_6/ExpandDims_4
ExpandDims(batch_normalization_6/ExpandDims_4/input&batch_normalization_6/ExpandDims_4/dim*

Tdim0*
T0*
_output_shapes
:
m
(batch_normalization_6/ExpandDims_5/inputConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
h
&batch_normalization_6/ExpandDims_5/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"batch_normalization_6/ExpandDims_5
ExpandDims(batch_normalization_6/ExpandDims_5/input&batch_normalization_6/ExpandDims_5/dim*

Tdim0*
T0*
_output_shapes
:
o
%batch_normalization_6/Reshape_2/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
batch_normalization_6/Reshape_2ReshapePlaceholder_2%batch_normalization_6/Reshape_2/shape*
T0
*
Tshape0*
_output_shapes
:
�
batch_normalization_6/Select_2Selectbatch_normalization_6/Reshape_2"batch_normalization_6/ExpandDims_4"batch_normalization_6/ExpandDims_5*
T0*
_output_shapes
:
�
batch_normalization_6/Squeeze_2Squeezebatch_normalization_6/Select_2*
_output_shapes
: *
squeeze_dims
 *
T0
�
+batch_normalization_6/AssignMovingAvg/sub/xConst*
valueB
 *  �?*4
_class*
(&loc:@batch_normalization_5/moving_mean*
dtype0*
_output_shapes
: 
�
)batch_normalization_6/AssignMovingAvg/subSub+batch_normalization_6/AssignMovingAvg/sub/xbatch_normalization_6/Squeeze_2*
_output_shapes
: *
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean
�
+batch_normalization_6/AssignMovingAvg/sub_1Sub&batch_normalization_5/moving_mean/readbatch_normalization_6/Squeeze*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
:d
�
)batch_normalization_6/AssignMovingAvg/mulMul+batch_normalization_6/AssignMovingAvg/sub_1)batch_normalization_6/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
:d
�
%batch_normalization_6/AssignMovingAvg	AssignSub!batch_normalization_5/moving_mean)batch_normalization_6/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
:d
�
-batch_normalization_6/AssignMovingAvg_1/sub/xConst*
valueB
 *  �?*8
_class.
,*loc:@batch_normalization_5/moving_variance*
dtype0*
_output_shapes
: 
�
+batch_normalization_6/AssignMovingAvg_1/subSub-batch_normalization_6/AssignMovingAvg_1/sub/xbatch_normalization_6/Squeeze_2*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
: 
�
-batch_normalization_6/AssignMovingAvg_1/sub_1Sub*batch_normalization_5/moving_variance/readbatch_normalization_6/Squeeze_1*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
:d
�
+batch_normalization_6/AssignMovingAvg_1/mulMul-batch_normalization_6/AssignMovingAvg_1/sub_1+batch_normalization_6/AssignMovingAvg_1/sub*
_output_shapes
:d*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance
�
'batch_normalization_6/AssignMovingAvg_1	AssignSub%batch_normalization_5/moving_variance+batch_normalization_6/AssignMovingAvg_1/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
:d
j
%batch_normalization_6/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
�
#batch_normalization_6/batchnorm/addAddbatch_normalization_6/Squeeze_1%batch_normalization_6/batchnorm/add/y*
T0*
_output_shapes
:d
x
%batch_normalization_6/batchnorm/RsqrtRsqrt#batch_normalization_6/batchnorm/add*
T0*
_output_shapes
:d
�
#batch_normalization_6/batchnorm/mulMul%batch_normalization_6/batchnorm/Rsqrt batch_normalization_5/gamma/read*
T0*
_output_shapes
:d
�
%batch_normalization_6/batchnorm/mul_1Muldense/MatMul#batch_normalization_6/batchnorm/mul*
T0*'
_output_shapes
:���������d
�
%batch_normalization_6/batchnorm/mul_2Mulbatch_normalization_6/Squeeze#batch_normalization_6/batchnorm/mul*
_output_shapes
:d*
T0
�
#batch_normalization_6/batchnorm/subSubbatch_normalization_5/beta/read%batch_normalization_6/batchnorm/mul_2*
_output_shapes
:d*
T0
�
%batch_normalization_6/batchnorm/add_1Add%batch_normalization_6/batchnorm/mul_1#batch_normalization_6/batchnorm/sub*
T0*'
_output_shapes
:���������d
g
Relu_5Relu%batch_normalization_6/batchnorm/add_1*
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
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
�
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
_output_shapes

:d
*
T0
�
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

:d
*
T0*!
_class
loc:@dense_1/kernel
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
dtype0*
_output_shapes
:
*
_class
loc:@dense_1/bias*
valueB
*    
�
dense_1/bias
VariableV2*
dtype0*
_output_shapes
:
*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:

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
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

�
dense_2/MatMulMatMulRelu_5dense_1/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
�
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
data_formatNHWC*'
_output_shapes
:���������
*
T0
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
logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/Negdense_2/BiasAdd*'
_output_shapes
:���������
*
T0
j
logistic_loss/mulMuldense_2/BiasAddPlaceholder_1*'
_output_shapes
:���������
*
T0
s
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*'
_output_shapes
:���������
*
T0
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
MeanMeanlogistic_lossConst*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
�
gradients/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
�
gradients/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
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
�
!gradients/Mean_grad/Reshape/shapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
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
�
gradients/Mean_grad/ShapeShapelogistic_loss$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
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

�
gradients/Mean_grad/Shape_1Shapelogistic_loss$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
gradients/Mean_grad/Shape_2Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
�
gradients/Mean_grad/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
�
gradients/Mean_grad/Const_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1*
dtype0*
_output_shapes
:
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
gradients/Mean_grad/Maximum/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
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
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*'
_output_shapes
:���������

�
"gradients/logistic_loss_grad/ShapeShapelogistic_loss/sub$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
out_type0*
_output_shapes
:*
T0
�
$gradients/logistic_loss_grad/Shape_1Shapelogistic_loss/Log1p$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
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
$gradients/logistic_loss_grad/ReshapeReshape gradients/logistic_loss_grad/Sum"gradients/logistic_loss_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
"gradients/logistic_loss_grad/Sum_1Sumgradients/Mean_grad/truediv4gradients/logistic_loss_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
&gradients/logistic_loss_grad/Reshape_1Reshape"gradients/logistic_loss_grad/Sum_1$gradients/logistic_loss_grad/Shape_1*'
_output_shapes
:���������
*
T0*
Tshape0
�
-gradients/logistic_loss_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1%^gradients/logistic_loss_grad/Reshape'^gradients/logistic_loss_grad/Reshape_1
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
�
&gradients/logistic_loss/sub_grad/ShapeShapelogistic_loss/Select$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
(gradients/logistic_loss/sub_grad/Shape_1Shapelogistic_loss/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
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
(gradients/logistic_loss/sub_grad/ReshapeReshape$gradients/logistic_loss/sub_grad/Sum&gradients/logistic_loss/sub_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
&gradients/logistic_loss/sub_grad/Sum_1Sum5gradients/logistic_loss_grad/tuple/control_dependency8gradients/logistic_loss/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
v
$gradients/logistic_loss/sub_grad/NegNeg&gradients/logistic_loss/sub_grad/Sum_1*
_output_shapes
:*
T0
�
*gradients/logistic_loss/sub_grad/Reshape_1Reshape$gradients/logistic_loss/sub_grad/Neg(gradients/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������

�
1gradients/logistic_loss/sub_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1)^gradients/logistic_loss/sub_grad/Reshape+^gradients/logistic_loss/sub_grad/Reshape_1
�
9gradients/logistic_loss/sub_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/sub_grad/Reshape2^gradients/logistic_loss/sub_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/logistic_loss/sub_grad/Reshape*'
_output_shapes
:���������

�
;gradients/logistic_loss/sub_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/sub_grad/Reshape_12^gradients/logistic_loss/sub_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/sub_grad/Reshape_1*'
_output_shapes
:���������

�
(gradients/logistic_loss/Log1p_grad/add/xConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_18^gradients/logistic_loss_grad/tuple/control_dependency_1*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
&gradients/logistic_loss/Log1p_grad/addAdd(gradients/logistic_loss/Log1p_grad/add/xlogistic_loss/Exp*
T0*'
_output_shapes
:���������

�
-gradients/logistic_loss/Log1p_grad/Reciprocal
Reciprocal&gradients/logistic_loss/Log1p_grad/add*
T0*'
_output_shapes
:���������

�
&gradients/logistic_loss/Log1p_grad/mulMul7gradients/logistic_loss_grad/tuple/control_dependency_1-gradients/logistic_loss/Log1p_grad/Reciprocal*'
_output_shapes
:���������
*
T0
�
.gradients/logistic_loss/Select_grad/zeros_like	ZerosLikedense_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*'
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
,gradients/logistic_loss/Select_grad/Select_1Selectlogistic_loss/GreaterEqual.gradients/logistic_loss/Select_grad/zeros_like9gradients/logistic_loss/sub_grad/tuple/control_dependency*'
_output_shapes
:���������
*
T0
�
4gradients/logistic_loss/Select_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1+^gradients/logistic_loss/Select_grad/Select-^gradients/logistic_loss/Select_grad/Select_1
�
<gradients/logistic_loss/Select_grad/tuple/control_dependencyIdentity*gradients/logistic_loss/Select_grad/Select5^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*'
_output_shapes
:���������

�
>gradients/logistic_loss/Select_grad/tuple/control_dependency_1Identity,gradients/logistic_loss/Select_grad/Select_15^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_grad/Select_1*'
_output_shapes
:���������

�
&gradients/logistic_loss/mul_grad/ShapeShapedense_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
(gradients/logistic_loss/mul_grad/Shape_1ShapePlaceholder_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
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
$gradients/logistic_loss/mul_grad/SumSum$gradients/logistic_loss/mul_grad/mul6gradients/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
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
&gradients/logistic_loss/mul_grad/Sum_1Sum&gradients/logistic_loss/mul_grad/mul_18gradients/logistic_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
*gradients/logistic_loss/mul_grad/Reshape_1Reshape&gradients/logistic_loss/mul_grad/Sum_1(gradients/logistic_loss/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������

�
1gradients/logistic_loss/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1)^gradients/logistic_loss/mul_grad/Reshape+^gradients/logistic_loss/mul_grad/Reshape_1
�
9gradients/logistic_loss/mul_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/mul_grad/Reshape2^gradients/logistic_loss/mul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/logistic_loss/mul_grad/Reshape*'
_output_shapes
:���������

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
�
0gradients/logistic_loss/Select_1_grad/zeros_like	ZerosLikelogistic_loss/Neg$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*'
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
�
6gradients/logistic_loss/Select_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1-^gradients/logistic_loss/Select_1_grad/Select/^gradients/logistic_loss/Select_1_grad/Select_1
�
>gradients/logistic_loss/Select_1_grad/tuple/control_dependencyIdentity,gradients/logistic_loss/Select_1_grad/Select7^gradients/logistic_loss/Select_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_1_grad/Select*'
_output_shapes
:���������

�
@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1Identity.gradients/logistic_loss/Select_1_grad/Select_17^gradients/logistic_loss/Select_1_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/logistic_loss/Select_1_grad/Select_1*'
_output_shapes
:���������

�
$gradients/logistic_loss/Neg_grad/NegNeg>gradients/logistic_loss/Select_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������

�
gradients/AddNAddN<gradients/logistic_loss/Select_grad/tuple/control_dependency9gradients/logistic_loss/mul_grad/tuple/control_dependency@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1$gradients/logistic_loss/Neg_grad/Neg*
N*'
_output_shapes
:���������
*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select
�
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN*
T0*
data_formatNHWC*
_output_shapes
:

�
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1^gradients/AddN+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
�
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*'
_output_shapes
:���������

�
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

�
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(*
T0
�
&gradients/dense_2/MatMul_grad/MatMul_1MatMulRelu_57gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:d
*
transpose_a(*
transpose_b( 
�
.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
�
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
�
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:d

�
gradients/Relu_5_grad/ReluGradReluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependencyRelu_5*
T0*'
_output_shapes
:���������d
�
:gradients/batch_normalization_6/batchnorm/add_1_grad/ShapeShape%batch_normalization_6/batchnorm/mul_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Jgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_6/batchnorm/add_1_grad/Shape<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
8gradients/batch_normalization_6/batchnorm/add_1_grad/SumSumgradients/Relu_5_grad/ReluGradJgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization_6/batchnorm/add_1_grad/ReshapeReshape8gradients/batch_normalization_6/batchnorm/add_1_grad/Sum:gradients/batch_normalization_6/batchnorm/add_1_grad/Shape*
Tshape0*'
_output_shapes
:���������d*
T0
�
:gradients/batch_normalization_6/batchnorm/add_1_grad/Sum_1Sumgradients/Relu_5_grad/ReluGradLgradients/batch_normalization_6/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
>gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1Reshape:gradients/batch_normalization_6/batchnorm/add_1_grad/Sum_1<gradients/batch_normalization_6/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
Egradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1=^gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape?^gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1
�
Mgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_6/batchnorm/add_1_grad/ReshapeF^gradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape
�
Ogradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1F^gradients/batch_normalization_6/batchnorm/add_1_grad/tuple/group_deps*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:d*
T0
�
:gradients/batch_normalization_6/batchnorm/mul_1_grad/ShapeShapedense/MatMul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Jgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_6/batchnorm/mul_1_grad/mulMulMgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency#batch_normalization_6/batchnorm/mul*
T0*'
_output_shapes
:���������d
�
8gradients/batch_normalization_6/batchnorm/mul_1_grad/SumSum8gradients/batch_normalization_6/batchnorm/mul_1_grad/mulJgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization_6/batchnorm/mul_1_grad/ReshapeReshape8gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum:gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������d
�
:gradients/batch_normalization_6/batchnorm/mul_1_grad/mul_1Muldense/MatMulMgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������d
�
:gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum_1Sum:gradients/batch_normalization_6/batchnorm/mul_1_grad/mul_1Lgradients/batch_normalization_6/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
>gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1Reshape:gradients/batch_normalization_6/batchnorm/mul_1_grad/Sum_1<gradients/batch_normalization_6/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
Egradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1=^gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape?^gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1
�
Mgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_6/batchnorm/mul_1_grad/ReshapeF^gradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������d
�
Ogradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1F^gradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/sub_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
:gradients/batch_normalization_6/batchnorm/sub_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization_6/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_6/batchnorm/sub_grad/Shape:gradients/batch_normalization_6/batchnorm/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_6/batchnorm/sub_grad/SumSumOgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1Hgradients/batch_normalization_6/batchnorm/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
:gradients/batch_normalization_6/batchnorm/sub_grad/ReshapeReshape6gradients/batch_normalization_6/batchnorm/sub_grad/Sum8gradients/batch_normalization_6/batchnorm/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/sub_grad/Sum_1SumOgradients/batch_normalization_6/batchnorm/add_1_grad/tuple/control_dependency_1Jgradients/batch_normalization_6/batchnorm/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6gradients/batch_normalization_6/batchnorm/sub_grad/NegNeg8gradients/batch_normalization_6/batchnorm/sub_grad/Sum_1*
T0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/sub_grad/Reshape_1Reshape6gradients/batch_normalization_6/batchnorm/sub_grad/Neg:gradients/batch_normalization_6/batchnorm/sub_grad/Shape_1*
_output_shapes
:d*
T0*
Tshape0
�
Cgradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1;^gradients/batch_normalization_6/batchnorm/sub_grad/Reshape=^gradients/batch_normalization_6/batchnorm/sub_grad/Reshape_1
�
Kgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependencyIdentity:gradients/batch_normalization_6/batchnorm/sub_grad/ReshapeD^gradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization_6/batchnorm/sub_grad/Reshape*
_output_shapes
:d
�
Mgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1Identity<gradients/batch_normalization_6/batchnorm/sub_grad/Reshape_1D^gradients/batch_normalization_6/batchnorm/sub_grad/tuple/group_deps*
_output_shapes
:d*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/sub_grad/Reshape_1
�
:gradients/batch_normalization_6/batchnorm/mul_2_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Jgradients/batch_normalization_6/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape<gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
8gradients/batch_normalization_6/batchnorm/mul_2_grad/mulMulMgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1#batch_normalization_6/batchnorm/mul*
T0*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/mul_2_grad/SumSum8gradients/batch_normalization_6/batchnorm/mul_2_grad/mulJgradients/batch_normalization_6/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization_6/batchnorm/mul_2_grad/ReshapeReshape8gradients/batch_normalization_6/batchnorm/mul_2_grad/Sum:gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
:gradients/batch_normalization_6/batchnorm/mul_2_grad/mul_1Mulbatch_normalization_6/SqueezeMgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:d*
T0
�
:gradients/batch_normalization_6/batchnorm/mul_2_grad/Sum_1Sum:gradients/batch_normalization_6/batchnorm/mul_2_grad/mul_1Lgradients/batch_normalization_6/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
>gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape_1Reshape:gradients/batch_normalization_6/batchnorm/mul_2_grad/Sum_1<gradients/batch_normalization_6/batchnorm/mul_2_grad/Shape_1*
_output_shapes
:d*
T0*
Tshape0
�
Egradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1=^gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape?^gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape_1
�
Mgradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependencyIdentity<gradients/batch_normalization_6/batchnorm/mul_2_grad/ReshapeF^gradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape*
_output_shapes
:d
�
Ogradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependency_1Identity>gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape_1F^gradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/mul_2_grad/Reshape_1*
_output_shapes
:d
�
2gradients/batch_normalization_6/Squeeze_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
valueB"   d   *
dtype0
�
4gradients/batch_normalization_6/Squeeze_grad/ReshapeReshapeMgradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependency2gradients/batch_normalization_6/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
�
gradients/AddN_1AddNOgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependency_1Ogradients/batch_normalization_6/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*Q
_classG
ECloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
:gradients/batch_normalization_6/batchnorm/mul_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
Hgradients/batch_normalization_6/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_6/batchnorm/mul_grad/Shape:gradients/batch_normalization_6/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
6gradients/batch_normalization_6/batchnorm/mul_grad/mulMulgradients/AddN_1 batch_normalization_5/gamma/read*
_output_shapes
:d*
T0
�
6gradients/batch_normalization_6/batchnorm/mul_grad/SumSum6gradients/batch_normalization_6/batchnorm/mul_grad/mulHgradients/batch_normalization_6/batchnorm/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
:gradients/batch_normalization_6/batchnorm/mul_grad/ReshapeReshape6gradients/batch_normalization_6/batchnorm/mul_grad/Sum8gradients/batch_normalization_6/batchnorm/mul_grad/Shape*
_output_shapes
:d*
T0*
Tshape0
�
8gradients/batch_normalization_6/batchnorm/mul_grad/mul_1Mul%batch_normalization_6/batchnorm/Rsqrtgradients/AddN_1*
T0*
_output_shapes
:d
�
8gradients/batch_normalization_6/batchnorm/mul_grad/Sum_1Sum8gradients/batch_normalization_6/batchnorm/mul_grad/mul_1Jgradients/batch_normalization_6/batchnorm/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
<gradients/batch_normalization_6/batchnorm/mul_grad/Reshape_1Reshape8gradients/batch_normalization_6/batchnorm/mul_grad/Sum_1:gradients/batch_normalization_6/batchnorm/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
Cgradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1;^gradients/batch_normalization_6/batchnorm/mul_grad/Reshape=^gradients/batch_normalization_6/batchnorm/mul_grad/Reshape_1
�
Kgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependencyIdentity:gradients/batch_normalization_6/batchnorm/mul_grad/ReshapeD^gradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_deps*M
_classC
A?loc:@gradients/batch_normalization_6/batchnorm/mul_grad/Reshape*
_output_shapes
:d*
T0
�
Mgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependency_1Identity<gradients/batch_normalization_6/batchnorm/mul_grad/Reshape_1D^gradients/batch_normalization_6/batchnorm/mul_grad/tuple/group_deps*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_grad/Reshape_1*
_output_shapes
:d*
T0
�
6gradients/batch_normalization_6/Select_grad/zeros_likeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueBd*    *
dtype0*
_output_shapes

:d
�
2gradients/batch_normalization_6/Select_grad/SelectSelectbatch_normalization_6/Reshape4gradients/batch_normalization_6/Squeeze_grad/Reshape6gradients/batch_normalization_6/Select_grad/zeros_like*
T0*
_output_shapes

:d
�
4gradients/batch_normalization_6/Select_grad/Select_1Selectbatch_normalization_6/Reshape6gradients/batch_normalization_6/Select_grad/zeros_like4gradients/batch_normalization_6/Squeeze_grad/Reshape*
T0*
_output_shapes

:d
�
<gradients/batch_normalization_6/Select_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/batch_normalization_6/Select_grad/Select5^gradients/batch_normalization_6/Select_grad/Select_1
�
Dgradients/batch_normalization_6/Select_grad/tuple/control_dependencyIdentity2gradients/batch_normalization_6/Select_grad/Select=^gradients/batch_normalization_6/Select_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/batch_normalization_6/Select_grad/Select*
_output_shapes

:d
�
Fgradients/batch_normalization_6/Select_grad/tuple/control_dependency_1Identity4gradients/batch_normalization_6/Select_grad/Select_1=^gradients/batch_normalization_6/Select_grad/tuple/group_deps*G
_class=
;9loc:@gradients/batch_normalization_6/Select_grad/Select_1*
_output_shapes

:d*
T0
�
>gradients/batch_normalization_6/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad%batch_normalization_6/batchnorm/RsqrtKgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependency*
_output_shapes
:d*
T0
�
5gradients/batch_normalization_6/ExpandDims_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
7gradients/batch_normalization_6/ExpandDims_grad/ReshapeReshapeDgradients/batch_normalization_6/Select_grad/tuple/control_dependency5gradients/batch_normalization_6/ExpandDims_grad/Shape*
_output_shapes
:d*
T0*
Tshape0
�
8gradients/batch_normalization_6/batchnorm/add_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
:*
valueB:d
�
:gradients/batch_normalization_6/batchnorm/add_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB 
�
Hgradients/batch_normalization_6/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/batch_normalization_6/batchnorm/add_grad/Shape:gradients/batch_normalization_6/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients/batch_normalization_6/batchnorm/add_grad/SumSum>gradients/batch_normalization_6/batchnorm/Rsqrt_grad/RsqrtGradHgradients/batch_normalization_6/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
:gradients/batch_normalization_6/batchnorm/add_grad/ReshapeReshape6gradients/batch_normalization_6/batchnorm/add_grad/Sum8gradients/batch_normalization_6/batchnorm/add_grad/Shape*
_output_shapes
:d*
T0*
Tshape0
�
8gradients/batch_normalization_6/batchnorm/add_grad/Sum_1Sum>gradients/batch_normalization_6/batchnorm/Rsqrt_grad/RsqrtGradJgradients/batch_normalization_6/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
<gradients/batch_normalization_6/batchnorm/add_grad/Reshape_1Reshape8gradients/batch_normalization_6/batchnorm/add_grad/Sum_1:gradients/batch_normalization_6/batchnorm/add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
�
Cgradients/batch_normalization_6/batchnorm/add_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1;^gradients/batch_normalization_6/batchnorm/add_grad/Reshape=^gradients/batch_normalization_6/batchnorm/add_grad/Reshape_1
�
Kgradients/batch_normalization_6/batchnorm/add_grad/tuple/control_dependencyIdentity:gradients/batch_normalization_6/batchnorm/add_grad/ReshapeD^gradients/batch_normalization_6/batchnorm/add_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/batch_normalization_6/batchnorm/add_grad/Reshape*
_output_shapes
:d
�
Mgradients/batch_normalization_6/batchnorm/add_grad/tuple/control_dependency_1Identity<gradients/batch_normalization_6/batchnorm/add_grad/Reshape_1D^gradients/batch_normalization_6/batchnorm/add_grad/tuple/group_deps*
_output_shapes
: *
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/add_grad/Reshape_1
�
:gradients/batch_normalization_6/moments/Squeeze_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
<gradients/batch_normalization_6/moments/Squeeze_grad/ReshapeReshape7gradients/batch_normalization_6/ExpandDims_grad/Reshape:gradients/batch_normalization_6/moments/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
�
4gradients/batch_normalization_6/Squeeze_1_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
6gradients/batch_normalization_6/Squeeze_1_grad/ReshapeReshapeKgradients/batch_normalization_6/batchnorm/add_grad/tuple/control_dependency4gradients/batch_normalization_6/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
�
8gradients/batch_normalization_6/Select_1_grad/zeros_likeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueBd*    *
dtype0*
_output_shapes

:d
�
4gradients/batch_normalization_6/Select_1_grad/SelectSelectbatch_normalization_6/Reshape_16gradients/batch_normalization_6/Squeeze_1_grad/Reshape8gradients/batch_normalization_6/Select_1_grad/zeros_like*
T0*
_output_shapes

:d
�
6gradients/batch_normalization_6/Select_1_grad/Select_1Selectbatch_normalization_6/Reshape_18gradients/batch_normalization_6/Select_1_grad/zeros_like6gradients/batch_normalization_6/Squeeze_1_grad/Reshape*
T0*
_output_shapes

:d
�
>gradients/batch_normalization_6/Select_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_15^gradients/batch_normalization_6/Select_1_grad/Select7^gradients/batch_normalization_6/Select_1_grad/Select_1
�
Fgradients/batch_normalization_6/Select_1_grad/tuple/control_dependencyIdentity4gradients/batch_normalization_6/Select_1_grad/Select?^gradients/batch_normalization_6/Select_1_grad/tuple/group_deps*
_output_shapes

:d*
T0*G
_class=
;9loc:@gradients/batch_normalization_6/Select_1_grad/Select
�
Hgradients/batch_normalization_6/Select_1_grad/tuple/control_dependency_1Identity6gradients/batch_normalization_6/Select_1_grad/Select_1?^gradients/batch_normalization_6/Select_1_grad/tuple/group_deps*
_output_shapes

:d*
T0*I
_class?
=;loc:@gradients/batch_normalization_6/Select_1_grad/Select_1
�
7gradients/batch_normalization_6/ExpandDims_2_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:d*
dtype0*
_output_shapes
:
�
9gradients/batch_normalization_6/ExpandDims_2_grad/ReshapeReshapeFgradients/batch_normalization_6/Select_1_grad/tuple/control_dependency7gradients/batch_normalization_6/ExpandDims_2_grad/Shape*
_output_shapes
:d*
T0*
Tshape0
�
<gradients/batch_normalization_6/moments/Squeeze_1_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
>gradients/batch_normalization_6/moments/Squeeze_1_grad/ReshapeReshape9gradients/batch_normalization_6/ExpandDims_2_grad/Reshape<gradients/batch_normalization_6/moments/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
�
;gradients/batch_normalization_6/moments/variance_grad/ShapeShape/batch_normalization_6/moments/SquaredDifference$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
:gradients/batch_normalization_6/moments/variance_grad/SizeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
9gradients/batch_normalization_6/moments/variance_grad/addAdd8batch_normalization_6/moments/variance/reduction_indices:gradients/batch_normalization_6/moments/variance_grad/Size*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
_output_shapes
:*
T0
�
9gradients/batch_normalization_6/moments/variance_grad/modFloorMod9gradients/batch_normalization_6/moments/variance_grad/add:gradients/batch_normalization_6/moments/variance_grad/Size*
_output_shapes
:*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape
�
=gradients/batch_normalization_6/moments/variance_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
:
�
Agradients/batch_normalization_6/moments/variance_grad/range/startConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B : *N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
Agradients/batch_normalization_6/moments/variance_grad/range/deltaConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
;gradients/batch_normalization_6/moments/variance_grad/rangeRangeAgradients/batch_normalization_6/moments/variance_grad/range/start:gradients/batch_normalization_6/moments/variance_grad/SizeAgradients/batch_normalization_6/moments/variance_grad/range/delta*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
_output_shapes
:*

Tidx0
�
@gradients/batch_normalization_6/moments/variance_grad/Fill/valueConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
:gradients/batch_normalization_6/moments/variance_grad/FillFill=gradients/batch_normalization_6/moments/variance_grad/Shape_1@gradients/batch_normalization_6/moments/variance_grad/Fill/value*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
_output_shapes
:
�
Cgradients/batch_normalization_6/moments/variance_grad/DynamicStitchDynamicStitch;gradients/batch_normalization_6/moments/variance_grad/range9gradients/batch_normalization_6/moments/variance_grad/mod;gradients/batch_normalization_6/moments/variance_grad/Shape:gradients/batch_normalization_6/moments/variance_grad/Fill*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
N*#
_output_shapes
:���������
�
?gradients/batch_normalization_6/moments/variance_grad/Maximum/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
=gradients/batch_normalization_6/moments/variance_grad/MaximumMaximumCgradients/batch_normalization_6/moments/variance_grad/DynamicStitch?gradients/batch_normalization_6/moments/variance_grad/Maximum/y*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape*#
_output_shapes
:���������*
T0
�
>gradients/batch_normalization_6/moments/variance_grad/floordivFloorDiv;gradients/batch_normalization_6/moments/variance_grad/Shape=gradients/batch_normalization_6/moments/variance_grad/Maximum*
_output_shapes
:*
T0*N
_classD
B@loc:@gradients/batch_normalization_6/moments/variance_grad/Shape
�
=gradients/batch_normalization_6/moments/variance_grad/ReshapeReshape>gradients/batch_normalization_6/moments/Squeeze_1_grad/ReshapeCgradients/batch_normalization_6/moments/variance_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
�
:gradients/batch_normalization_6/moments/variance_grad/TileTile=gradients/batch_normalization_6/moments/variance_grad/Reshape>gradients/batch_normalization_6/moments/variance_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������
�
=gradients/batch_normalization_6/moments/variance_grad/Shape_2Shape/batch_normalization_6/moments/SquaredDifference$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
=gradients/batch_normalization_6/moments/variance_grad/Shape_3Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
;gradients/batch_normalization_6/moments/variance_grad/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
:*
valueB: *P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2
�
:gradients/batch_normalization_6/moments/variance_grad/ProdProd=gradients/batch_normalization_6/moments/variance_grad/Shape_2;gradients/batch_normalization_6/moments/variance_grad/Const*
T0*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
_output_shapes
: *
	keep_dims( *

Tidx0
�
=gradients/batch_normalization_6/moments/variance_grad/Const_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB: *P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
dtype0*
_output_shapes
:
�
<gradients/batch_normalization_6/moments/variance_grad/Prod_1Prod=gradients/batch_normalization_6/moments/variance_grad/Shape_3=gradients/batch_normalization_6/moments/variance_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2
�
Agradients/batch_normalization_6/moments/variance_grad/Maximum_1/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2*
dtype0*
_output_shapes
: 
�
?gradients/batch_normalization_6/moments/variance_grad/Maximum_1Maximum<gradients/batch_normalization_6/moments/variance_grad/Prod_1Agradients/batch_normalization_6/moments/variance_grad/Maximum_1/y*
_output_shapes
: *
T0*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2
�
@gradients/batch_normalization_6/moments/variance_grad/floordiv_1FloorDiv:gradients/batch_normalization_6/moments/variance_grad/Prod?gradients/batch_normalization_6/moments/variance_grad/Maximum_1*
_output_shapes
: *
T0*P
_classF
DBloc:@gradients/batch_normalization_6/moments/variance_grad/Shape_2
�
:gradients/batch_normalization_6/moments/variance_grad/CastCast@gradients/batch_normalization_6/moments/variance_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
=gradients/batch_normalization_6/moments/variance_grad/truedivRealDiv:gradients/batch_normalization_6/moments/variance_grad/Tile:gradients/batch_normalization_6/moments/variance_grad/Cast*'
_output_shapes
:���������d*
T0
�
Dgradients/batch_normalization_6/moments/SquaredDifference_grad/ShapeShapedense/MatMul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
�
Fgradients/batch_normalization_6/moments/SquaredDifference_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB"   d   *
dtype0*
_output_shapes
:
�
Tgradients/batch_normalization_6/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/batch_normalization_6/moments/SquaredDifference_grad/ShapeFgradients/batch_normalization_6/moments/SquaredDifference_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Egradients/batch_normalization_6/moments/SquaredDifference_grad/scalarConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1>^gradients/batch_normalization_6/moments/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
Bgradients/batch_normalization_6/moments/SquaredDifference_grad/mulMulEgradients/batch_normalization_6/moments/SquaredDifference_grad/scalar=gradients/batch_normalization_6/moments/variance_grad/truediv*'
_output_shapes
:���������d*
T0
�
Bgradients/batch_normalization_6/moments/SquaredDifference_grad/subSubdense/MatMul*batch_normalization_6/moments/StopGradient$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1>^gradients/batch_normalization_6/moments/variance_grad/truediv*'
_output_shapes
:���������d*
T0
�
Dgradients/batch_normalization_6/moments/SquaredDifference_grad/mul_1MulBgradients/batch_normalization_6/moments/SquaredDifference_grad/mulBgradients/batch_normalization_6/moments/SquaredDifference_grad/sub*'
_output_shapes
:���������d*
T0
�
Bgradients/batch_normalization_6/moments/SquaredDifference_grad/SumSumDgradients/batch_normalization_6/moments/SquaredDifference_grad/mul_1Tgradients/batch_normalization_6/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Fgradients/batch_normalization_6/moments/SquaredDifference_grad/ReshapeReshapeBgradients/batch_normalization_6/moments/SquaredDifference_grad/SumDgradients/batch_normalization_6/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������d
�
Dgradients/batch_normalization_6/moments/SquaredDifference_grad/Sum_1SumDgradients/batch_normalization_6/moments/SquaredDifference_grad/mul_1Vgradients/batch_normalization_6/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
Hgradients/batch_normalization_6/moments/SquaredDifference_grad/Reshape_1ReshapeDgradients/batch_normalization_6/moments/SquaredDifference_grad/Sum_1Fgradients/batch_normalization_6/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:d
�
Bgradients/batch_normalization_6/moments/SquaredDifference_grad/NegNegHgradients/batch_normalization_6/moments/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:d
�
Ogradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1G^gradients/batch_normalization_6/moments/SquaredDifference_grad/ReshapeC^gradients/batch_normalization_6/moments/SquaredDifference_grad/Neg
�
Wgradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/control_dependencyIdentityFgradients/batch_normalization_6/moments/SquaredDifference_grad/ReshapeP^gradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/batch_normalization_6/moments/SquaredDifference_grad/Reshape*'
_output_shapes
:���������d*
T0
�
Ygradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/control_dependency_1IdentityBgradients/batch_normalization_6/moments/SquaredDifference_grad/NegP^gradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/group_deps*U
_classK
IGloc:@gradients/batch_normalization_6/moments/SquaredDifference_grad/Neg*
_output_shapes

:d*
T0
�
7gradients/batch_normalization_6/moments/mean_grad/ShapeShapedense/MatMul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
6gradients/batch_normalization_6/moments/mean_grad/SizeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
5gradients/batch_normalization_6/moments/mean_grad/addAdd4batch_normalization_6/moments/mean/reduction_indices6gradients/batch_normalization_6/moments/mean_grad/Size*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:
�
5gradients/batch_normalization_6/moments/mean_grad/modFloorMod5gradients/batch_normalization_6/moments/mean_grad/add6gradients/batch_normalization_6/moments/mean_grad/Size*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:
�
9gradients/batch_normalization_6/moments/mean_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB:*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
:
�
=gradients/batch_normalization_6/moments/mean_grad/range/startConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B : *J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
=gradients/batch_normalization_6/moments/mean_grad/range/deltaConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
value	B :*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0
�
7gradients/batch_normalization_6/moments/mean_grad/rangeRange=gradients/batch_normalization_6/moments/mean_grad/range/start6gradients/batch_normalization_6/moments/mean_grad/Size=gradients/batch_normalization_6/moments/mean_grad/range/delta*

Tidx0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:
�
<gradients/batch_normalization_6/moments/mean_grad/Fill/valueConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
value	B :*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0
�
6gradients/batch_normalization_6/moments/mean_grad/FillFill9gradients/batch_normalization_6/moments/mean_grad/Shape_1<gradients/batch_normalization_6/moments/mean_grad/Fill/value*
_output_shapes
:*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape
�
?gradients/batch_normalization_6/moments/mean_grad/DynamicStitchDynamicStitch7gradients/batch_normalization_6/moments/mean_grad/range5gradients/batch_normalization_6/moments/mean_grad/mod7gradients/batch_normalization_6/moments/mean_grad/Shape6gradients/batch_normalization_6/moments/mean_grad/Fill*
N*#
_output_shapes
:���������*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape
�
;gradients/batch_normalization_6/moments/mean_grad/Maximum/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
value	B :*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
9gradients/batch_normalization_6/moments/mean_grad/MaximumMaximum?gradients/batch_normalization_6/moments/mean_grad/DynamicStitch;gradients/batch_normalization_6/moments/mean_grad/Maximum/y*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*#
_output_shapes
:���������
�
:gradients/batch_normalization_6/moments/mean_grad/floordivFloorDiv7gradients/batch_normalization_6/moments/mean_grad/Shape9gradients/batch_normalization_6/moments/mean_grad/Maximum*
T0*J
_class@
><loc:@gradients/batch_normalization_6/moments/mean_grad/Shape*
_output_shapes
:
�
9gradients/batch_normalization_6/moments/mean_grad/ReshapeReshape<gradients/batch_normalization_6/moments/Squeeze_grad/Reshape?gradients/batch_normalization_6/moments/mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
6gradients/batch_normalization_6/moments/mean_grad/TileTile9gradients/batch_normalization_6/moments/mean_grad/Reshape:gradients/batch_normalization_6/moments/mean_grad/floordiv*0
_output_shapes
:������������������*

Tmultiples0*
T0
�
9gradients/batch_normalization_6/moments/mean_grad/Shape_2Shapedense/MatMul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
9gradients/batch_normalization_6/moments/mean_grad/Shape_3Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
valueB"   d   *
dtype0
�
7gradients/batch_normalization_6/moments/mean_grad/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB: *L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
dtype0*
_output_shapes
:
�
6gradients/batch_normalization_6/moments/mean_grad/ProdProd9gradients/batch_normalization_6/moments/mean_grad/Shape_27gradients/batch_normalization_6/moments/mean_grad/Const*
T0*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
_output_shapes
: *
	keep_dims( *

Tidx0
�
9gradients/batch_normalization_6/moments/mean_grad/Const_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
valueB: *L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
dtype0
�
8gradients/batch_normalization_6/moments/mean_grad/Prod_1Prod9gradients/batch_normalization_6/moments/mean_grad/Shape_39gradients/batch_normalization_6/moments/mean_grad/Const_1*
T0*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
_output_shapes
: *
	keep_dims( *

Tidx0
�
=gradients/batch_normalization_6/moments/mean_grad/Maximum_1/yConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
value	B :*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2*
dtype0
�
;gradients/batch_normalization_6/moments/mean_grad/Maximum_1Maximum8gradients/batch_normalization_6/moments/mean_grad/Prod_1=gradients/batch_normalization_6/moments/mean_grad/Maximum_1/y*
_output_shapes
: *
T0*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2
�
<gradients/batch_normalization_6/moments/mean_grad/floordiv_1FloorDiv6gradients/batch_normalization_6/moments/mean_grad/Prod;gradients/batch_normalization_6/moments/mean_grad/Maximum_1*
_output_shapes
: *
T0*L
_classB
@>loc:@gradients/batch_normalization_6/moments/mean_grad/Shape_2
�
6gradients/batch_normalization_6/moments/mean_grad/CastCast<gradients/batch_normalization_6/moments/mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
9gradients/batch_normalization_6/moments/mean_grad/truedivRealDiv6gradients/batch_normalization_6/moments/mean_grad/Tile6gradients/batch_normalization_6/moments/mean_grad/Cast*
T0*'
_output_shapes
:���������d
�
gradients/AddN_2AddNMgradients/batch_normalization_6/batchnorm/mul_1_grad/tuple/control_dependencyWgradients/batch_normalization_6/moments/SquaredDifference_grad/tuple/control_dependency9gradients/batch_normalization_6/moments/mean_grad/truediv*
T0*O
_classE
CAloc:@gradients/batch_normalization_6/batchnorm/mul_1_grad/Reshape*
N*'
_output_shapes
:���������d
�
"gradients/dense/MatMul_grad/MatMulMatMulgradients/AddN_2dense/kernel/read*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
�
$gradients/dense/MatMul_grad/MatMul_1MatMulReshapegradients/AddN_2*
transpose_b( *
T0*
_output_shapes
:	�d*
transpose_a(
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes
:	�d*
T0
�
gradients/Reshape_grad/ShapeShapeRelu_4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
�
gradients/Reshape_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*/
_output_shapes
:���������*
T0*
Tshape0
�
gradients/Relu_4_grad/ReluGradReluGradgradients/Reshape_grad/ReshapeRelu_4*/
_output_shapes
:���������*
T0
�
9gradients/batch_normalization_5/cond/Merge_grad/cond_gradSwitchgradients/Relu_4_grad/ReluGrad"batch_normalization_5/cond/pred_id*1
_class'
%#loc:@gradients/Relu_4_grad/ReluGrad*J
_output_shapes8
6:���������:���������*
T0
�
@gradients/batch_normalization_5/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^gradients/batch_normalization_5/cond/Merge_grad/cond_grad
�
Hgradients/batch_normalization_5/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_5/cond/Merge_grad/cond_gradA^gradients/batch_normalization_5/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_4_grad/ReluGrad*/
_output_shapes
:���������
�
Jgradients/batch_normalization_5/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_5/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_5/cond/Merge_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*1
_class'
%#loc:@gradients/Relu_4_grad/ReluGrad
�
gradients/zeros_like	ZerosLike-batch_normalization_5/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_1	ZerosLike-batch_normalization_5/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_2	ZerosLike-batch_normalization_5/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_3	ZerosLike-batch_normalization_5/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
Mgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_5/cond/Merge_grad/tuple/control_dependency2batch_normalization_5/cond/FusedBatchNorm_1/Switch4batch_normalization_5/cond/FusedBatchNorm_1/Switch_14batch_normalization_5/cond/FusedBatchNorm_1/Switch_34batch_normalization_5/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1N^gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Ugradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/group_deps*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:*
T0
�
Ugradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:
�
gradients/zeros_like_4	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_5	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_6	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_7	ZerosLike+batch_normalization_5/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_5/cond/Merge_grad/tuple/control_dependency_12batch_normalization_5/cond/FusedBatchNorm/Switch:14batch_normalization_5/cond/FusedBatchNorm/Switch_1:1+batch_normalization_5/cond/FusedBatchNorm:3+batch_normalization_5/cond/FusedBatchNorm:4*
data_formatNHWC*C
_output_shapes1
/:���������::: : *
is_training(*
epsilon%o�:*
T0
�
Igradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/group_deps*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: *
T0
�
gradients/SwitchSwitchconv2d_5/Conv2D"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
c
gradients/Shape_1Shapegradients/Switch:1*
out_type0*
_output_shapes
:*
T0
�
gradients/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
valueB
 *    *
dtype0
{
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*/
_output_shapes
:���������*
T0
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros*
N*1
_output_shapes
:���������: *
T0
�
gradients/Switch_1Switch batch_normalization_4/gamma/read"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_2Shapegradients/Switch_1:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_1/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_1*
N*
_output_shapes

:: *
T0
�
gradients/Switch_2Switchbatch_normalization_4/beta/read"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_3Shapegradients/Switch_2:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_2/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_5/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_2*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_3Switchconv2d_5/Conv2D"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
c
gradients/Shape_4Shapegradients/Switch_3*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_3/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
T0*/
_output_shapes
:���������
�
Igradients/batch_normalization_5/cond/FusedBatchNorm/Switch_grad/cond_gradMergeQgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_3*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_4Switch batch_normalization_4/gamma/read"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
c
gradients/Shape_5Shapegradients/Switch_4*
out_type0*
_output_shapes
:*
T0
�
gradients/zeros_4/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*
_output_shapes
:*
T0
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeSgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_4*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_5Switchbatch_normalization_4/beta/read"batch_normalization_5/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
c
gradients/Shape_6Shapegradients/Switch_5*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_5/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
valueB
 *    *
dtype0
j
gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*
_output_shapes
:*
T0
�
Kgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeSgradients/batch_normalization_5/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_5*
T0*
N*
_output_shapes

:: 
�
gradients/AddN_3AddNKgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_grad/cond_grad*
N*/
_output_shapes
:���������*
T0*^
_classT
RPloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_grad/cond_grad
�
%gradients/conv2d_5/Conv2D_grad/ShapeNShapeNRelu_3conv2d_4/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
�
2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_4/kernel/readgradients/AddN_3*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_3'gradients/conv2d_5/Conv2D_grad/ShapeN:1gradients/AddN_3*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
/gradients/conv2d_5/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter
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
�
gradients/AddN_4AddNMgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
N*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad
�
gradients/AddN_5AddNMgradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_5/cond/FusedBatchNorm/Switch_2_grad/cond_grad*`
_classV
TRloc:@gradients/batch_normalization_5/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:*
T0
�
gradients/Relu_3_grad/ReluGradReluGrad7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyRelu_3*
T0*/
_output_shapes
:���������
�
9gradients/batch_normalization_4/cond/Merge_grad/cond_gradSwitchgradients/Relu_3_grad/ReluGrad"batch_normalization_4/cond/pred_id*1
_class'
%#loc:@gradients/Relu_3_grad/ReluGrad*J
_output_shapes8
6:���������:���������*
T0
�
@gradients/batch_normalization_4/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^gradients/batch_normalization_4/cond/Merge_grad/cond_grad
�
Hgradients/batch_normalization_4/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_4/cond/Merge_grad/cond_gradA^gradients/batch_normalization_4/cond/Merge_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Relu_3_grad/ReluGrad*/
_output_shapes
:���������*
T0
�
Jgradients/batch_normalization_4/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_4/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_4/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_3_grad/ReluGrad*/
_output_shapes
:���������
�
gradients/zeros_like_8	ZerosLike-batch_normalization_4/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_9	ZerosLike-batch_normalization_4/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_10	ZerosLike-batch_normalization_4/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_11	ZerosLike-batch_normalization_4/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
Mgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_4/cond/Merge_grad/tuple/control_dependency2batch_normalization_4/cond/FusedBatchNorm_1/Switch4batch_normalization_4/cond/FusedBatchNorm_1/Switch_14batch_normalization_4/cond/FusedBatchNorm_1/Switch_34batch_normalization_4/cond/FusedBatchNorm_1/Switch_4*
epsilon%o�:*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( 
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1N^gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Ugradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:
�
Ugradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:
�
gradients/zeros_like_12	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_13	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_14	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_15	ZerosLike+batch_normalization_4/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_4/cond/Merge_grad/tuple/control_dependency_12batch_normalization_4/cond/FusedBatchNorm/Switch:14batch_normalization_4/cond/FusedBatchNorm/Switch_1:1+batch_normalization_4/cond/FusedBatchNorm:3+batch_normalization_4/cond/FusedBatchNorm:4*
epsilon%o�:*
T0*
data_formatNHWC*C
_output_shapes1
/:���������::: : *
is_training(
�
Igradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
gradients/Switch_6Switchconv2d_4/Conv2D"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*J
_output_shapes8
6:���������:���������*
T0
e
gradients/Shape_7Shapegradients/Switch_6:1*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_6/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    

gradients/zeros_6Fillgradients/Shape_7gradients/zeros_6/Const*
T0*/
_output_shapes
:���������
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_6*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_7Switch batch_normalization_3/gamma/read"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_8Shapegradients/Switch_7:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_7/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_7Fillgradients/Shape_8gradients/zeros_7/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_7*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_8Switchbatch_normalization_3/beta/read"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_9Shapegradients/Switch_8:1*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_8/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
j
gradients/zeros_8Fillgradients/Shape_9gradients/zeros_8/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_4/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_8*
N*
_output_shapes

:: *
T0
�
gradients/Switch_9Switchconv2d_4/Conv2D"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
d
gradients/Shape_10Shapegradients/Switch_9*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_9/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_9Fillgradients/Shape_10gradients/zeros_9/Const*
T0*/
_output_shapes
:���������
�
Igradients/batch_normalization_4/cond/FusedBatchNorm/Switch_grad/cond_gradMergeQgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_9*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_10Switch batch_normalization_3/gamma/read"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_11Shapegradients/Switch_10*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_10/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
valueB
 *    *
dtype0
m
gradients/zeros_10Fillgradients/Shape_11gradients/zeros_10/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeSgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_10*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_11Switchbatch_normalization_3/beta/read"batch_normalization_4/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_12Shapegradients/Switch_11*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_11/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_11Fillgradients/Shape_12gradients/zeros_11/Const*
_output_shapes
:*
T0
�
Kgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeSgradients/batch_normalization_4/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_11*
T0*
N*
_output_shapes

:: 
�
gradients/AddN_6AddNKgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*/
_output_shapes
:���������
�
%gradients/conv2d_4/Conv2D_grad/ShapeNShapeNRelu_2conv2d_3/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
out_type0*
N* 
_output_shapes
::*
T0
�
2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_3/kernel/readgradients/AddN_6*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_2'gradients/conv2d_4/Conv2D_grad/ShapeN:1gradients/AddN_6*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
/gradients/conv2d_4/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/AddN_7AddNMgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:
�
gradients/AddN_8AddNMgradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_4/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_4/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:
�
gradients/Relu_2_grad/ReluGradReluGrad7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyRelu_2*
T0*/
_output_shapes
:���������
�
9gradients/batch_normalization_3/cond/Merge_grad/cond_gradSwitchgradients/Relu_2_grad/ReluGrad"batch_normalization_3/cond/pred_id*J
_output_shapes8
6:���������:���������*
T0*1
_class'
%#loc:@gradients/Relu_2_grad/ReluGrad
�
@gradients/batch_normalization_3/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^gradients/batch_normalization_3/cond/Merge_grad/cond_grad
�
Hgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_3/cond/Merge_grad/cond_gradA^gradients/batch_normalization_3/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_2_grad/ReluGrad*/
_output_shapes
:���������
�
Jgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_3/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_3/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_2_grad/ReluGrad*/
_output_shapes
:���������
�
gradients/zeros_like_16	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_17	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_18	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_19	ZerosLike-batch_normalization_3/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency2batch_normalization_3/cond/FusedBatchNorm_1/Switch4batch_normalization_3/cond/FusedBatchNorm_1/Switch_14batch_normalization_3/cond/FusedBatchNorm_1/Switch_34batch_normalization_3/cond/FusedBatchNorm_1/Switch_4*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0*
data_formatNHWC
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1N^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Ugradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:
�
Ugradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:
�
gradients/zeros_like_20	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_21	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_22	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_23	ZerosLike+batch_normalization_3/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_3/cond/Merge_grad/tuple/control_dependency_12batch_normalization_3/cond/FusedBatchNorm/Switch:14batch_normalization_3/cond/FusedBatchNorm/Switch_1:1+batch_normalization_3/cond/FusedBatchNorm:3+batch_normalization_3/cond/FusedBatchNorm:4*C
_output_shapes1
/:���������::: : *
is_training(*
epsilon%o�:*
T0*
data_formatNHWC
�
Igradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
:*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
:*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
Sgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
gradients/Switch_12Switchconv2d_3/Conv2D"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*J
_output_shapes8
6:���������:���������*
T0
g
gradients/Shape_13Shapegradients/Switch_12:1*
out_type0*
_output_shapes
:*
T0
�
gradients/zeros_12/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_12Fillgradients/Shape_13gradients/zeros_12/Const*/
_output_shapes
:���������*
T0
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_12*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_13Switch batch_normalization_2/gamma/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
g
gradients/Shape_14Shapegradients/Switch_13:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_13/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_13Fillgradients/Shape_14gradients/zeros_13/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_13*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_14Switchbatch_normalization_2/beta/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
g
gradients/Shape_15Shapegradients/Switch_14:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_14/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *    
m
gradients/zeros_14Fillgradients/Shape_15gradients/zeros_14/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_3/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_14*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_15Switchconv2d_3/Conv2D"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
e
gradients/Shape_16Shapegradients/Switch_15*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_15/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_15Fillgradients/Shape_16gradients/zeros_15/Const*
T0*/
_output_shapes
:���������
�
Igradients/batch_normalization_3/cond/FusedBatchNorm/Switch_grad/cond_gradMergeQgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_15*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_16Switch batch_normalization_2/gamma/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_17Shapegradients/Switch_16*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_16/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
valueB
 *    *
dtype0
m
gradients/zeros_16Fillgradients/Shape_17gradients/zeros_16/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeSgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_16*
N*
_output_shapes

:: *
T0
�
gradients/Switch_17Switchbatch_normalization_2/beta/read"batch_normalization_3/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_18Shapegradients/Switch_17*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_17/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_17Fillgradients/Shape_18gradients/zeros_17/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeSgradients/batch_normalization_3/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_17*
T0*
N*
_output_shapes

:: 
�
gradients/AddN_9AddNKgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*/
_output_shapes
:���������
�
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeNRelu_1conv2d_2/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0*
out_type0*
N
�
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_2/kernel/readgradients/AddN_9*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu_1'gradients/conv2d_3/Conv2D_grad/ShapeN:1gradients/AddN_9*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
�
9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
gradients/AddN_10AddNMgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:
�
gradients/AddN_11AddNMgradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_3/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_3/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:
�
gradients/Relu_1_grad/ReluGradReluGrad7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyRelu_1*/
_output_shapes
:���������*
T0
�
9gradients/batch_normalization_2/cond/Merge_grad/cond_gradSwitchgradients/Relu_1_grad/ReluGrad"batch_normalization_2/cond/pred_id*
T0*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad*J
_output_shapes8
6:���������:���������
�
@gradients/batch_normalization_2/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^gradients/batch_normalization_2/cond/Merge_grad/cond_grad
�
Hgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_2/cond/Merge_grad/cond_gradA^gradients/batch_normalization_2/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad*/
_output_shapes
:���������
�
Jgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_2/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_2/cond/Merge_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad
�
gradients/zeros_like_24	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_25	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_26	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_27	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency2batch_normalization_2/cond/FusedBatchNorm_1/Switch4batch_normalization_2/cond/FusedBatchNorm_1/Switch_14batch_normalization_2/cond/FusedBatchNorm_1/Switch_34batch_normalization_2/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:*
T0
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1N^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Ugradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Ugradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:*
T0
�
gradients/zeros_like_28	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_29	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_30	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_31	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency_12batch_normalization_2/cond/FusedBatchNorm/Switch:14batch_normalization_2/cond/FusedBatchNorm/Switch_1:1+batch_normalization_2/cond/FusedBatchNorm:3+batch_normalization_2/cond/FusedBatchNorm:4*
data_formatNHWC*C
_output_shapes1
/:���������::: : *
is_training(*
epsilon%o�:*
T0
�
Igradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*/
_output_shapes
:���������*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: *
T0
�
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
gradients/Switch_18Switchconv2d_2/Conv2D"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
g
gradients/Shape_19Shapegradients/Switch_18:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_18/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_18Fillgradients/Shape_19gradients/zeros_18/Const*
T0*/
_output_shapes
:���������
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_18*1
_output_shapes
:���������: *
T0*
N
�
gradients/Switch_19Switch batch_normalization_1/gamma/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
g
gradients/Shape_20Shapegradients/Switch_19:1*
_output_shapes
:*
T0*
out_type0
�
gradients/zeros_19/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
: *
valueB
 *    *
dtype0
m
gradients/zeros_19Fillgradients/Shape_20gradients/zeros_19/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_19*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_20Switchbatch_normalization_1/beta/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
g
gradients/Shape_21Shapegradients/Switch_20:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_20/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_20Fillgradients/Shape_21gradients/zeros_20/Const*
T0*
_output_shapes
:
�
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_20*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_21Switchconv2d_2/Conv2D"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
e
gradients/Shape_22Shapegradients/Switch_21*
out_type0*
_output_shapes
:*
T0
�
gradients/zeros_21/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_21Fillgradients/Shape_22gradients/zeros_21/Const*/
_output_shapes
:���������*
T0
�
Igradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_gradMergeQgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_21*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_22Switch batch_normalization_1/gamma/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_23Shapegradients/Switch_22*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_22/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_22Fillgradients/Shape_23gradients/zeros_22/Const*
_output_shapes
:*
T0
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeSgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_22*
_output_shapes

:: *
T0*
N
�
gradients/Switch_23Switchbatch_normalization_1/beta/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_24Shapegradients/Switch_23*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_23/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_23Fillgradients/Shape_24gradients/zeros_23/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeSgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_23*
_output_shapes

:: *
T0*
N
�
gradients/AddN_12AddNKgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*/
_output_shapes
:���������
�
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeNReluconv2d_1/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
out_type0*
N* 
_output_shapes
::*
T0
�
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_1/kernel/readgradients/AddN_12*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterRelu'gradients/conv2d_2/Conv2D_grad/ShapeN:1gradients/AddN_12*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_13^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput4^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
�
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
�
gradients/AddN_13AddNMgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:
�
gradients/AddN_14AddNMgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:
�
gradients/Relu_grad/ReluGradReluGrad7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyRelu*
T0*/
_output_shapes
:���������
�
7gradients/batch_normalization/cond/Merge_grad/cond_gradSwitchgradients/Relu_grad/ReluGrad batch_normalization/cond/pred_id*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*J
_output_shapes8
6:���������:���������*
T0
�
>gradients/batch_normalization/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_18^gradients/batch_normalization/cond/Merge_grad/cond_grad
�
Fgradients/batch_normalization/cond/Merge_grad/tuple/control_dependencyIdentity7gradients/batch_normalization/cond/Merge_grad/cond_grad?^gradients/batch_normalization/cond/Merge_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*/
_output_shapes
:���������
�
Hgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency_1Identity9gradients/batch_normalization/cond/Merge_grad/cond_grad:1?^gradients/batch_normalization/cond/Merge_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*/
_output_shapes
:���������
�
gradients/zeros_like_32	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_33	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_34	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_35	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Kgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradFgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency0batch_normalization/cond/FusedBatchNorm_1/Switch2batch_normalization/cond/FusedBatchNorm_1/Switch_12batch_normalization/cond/FusedBatchNorm_1/Switch_32batch_normalization/cond/FusedBatchNorm_1/Switch_4*
T0*
data_formatNHWC*G
_output_shapes5
3:���������::::*
is_training( *
epsilon%o�:
�
Igradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1L^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityKgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGradJ^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Sgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1J^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
�
Sgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2J^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:*
T0
�
gradients/zeros_like_36	ZerosLike)batch_normalization/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
_output_shapes
:*
T0
�
gradients/zeros_like_37	ZerosLike)batch_normalization/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_38	ZerosLike)batch_normalization/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
gradients/zeros_like_39	ZerosLike)batch_normalization/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes
:
�
Igradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency_10batch_normalization/cond/FusedBatchNorm/Switch:12batch_normalization/cond/FusedBatchNorm/Switch_1:1)batch_normalization/cond/FusedBatchNorm:3)batch_normalization/cond/FusedBatchNorm:4*
data_formatNHWC*C
_output_shapes1
/:���������::: : *
is_training(*
epsilon%o�:*
T0
�
Ggradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1J^gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Ogradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*/
_output_shapes
:���������
�
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
:*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
�
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:
�
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
�
gradients/Switch_24Switchconv2d/Conv2D batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
g
gradients/Shape_25Shapegradients/Switch_24:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_24/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_24Fillgradients/Shape_25gradients/zeros_24/Const*/
_output_shapes
:���������*
T0
�
Igradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeQgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_24*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_25Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
g
gradients/Shape_26Shapegradients/Switch_25:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_25/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_25Fillgradients/Shape_26gradients/zeros_25/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeSgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_25*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_26Switchbatch_normalization/beta/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
g
gradients/Shape_27Shapegradients/Switch_26:1*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_26/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_26Fillgradients/Shape_27gradients/zeros_26/Const*
T0*
_output_shapes
:
�
Kgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeSgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_26*
T0*
N*
_output_shapes

:: 
�
gradients/Switch_27Switchconv2d/Conv2D batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*J
_output_shapes8
6:���������:���������
e
gradients/Shape_28Shapegradients/Switch_27*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_27/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
gradients/zeros_27Fillgradients/Shape_28gradients/zeros_27/Const*/
_output_shapes
:���������*
T0
�
Ggradients/batch_normalization/cond/FusedBatchNorm/Switch_grad/cond_gradMergeOgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependencygradients/zeros_27*
T0*
N*1
_output_shapes
:���������: 
�
gradients/Switch_28Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1* 
_output_shapes
::*
T0
e
gradients/Shape_29Shapegradients/Switch_28*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_28/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_28Fillgradients/Shape_29gradients/zeros_28/Const*
T0*
_output_shapes
:
�
Igradients/batch_normalization/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergeQgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_1gradients/zeros_28*
N*
_output_shapes

:: *
T0
�
gradients/Switch_29Switchbatch_normalization/beta/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0* 
_output_shapes
::
e
gradients/Shape_30Shapegradients/Switch_29*
T0*
out_type0*
_output_shapes
:
�
gradients/zeros_29/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
m
gradients/zeros_29Fillgradients/Shape_30gradients/zeros_29/Const*
_output_shapes
:*
T0
�
Igradients/batch_normalization/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergeQgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_2gradients/zeros_29*
_output_shapes

:: *
T0*
N
�
gradients/AddN_15AddNIgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_gradGgradients/batch_normalization/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*/
_output_shapes
:���������
�
#gradients/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderconv2d/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
�
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/readgradients/AddN_15*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������*
T0
�
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder%gradients/conv2d/Conv2D_grad/ShapeN:1gradients/AddN_15*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4������������������������������������
�
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_11^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput2^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter
�
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������
�
7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter
�
gradients/AddN_16AddNKgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradIgradients/batch_normalization/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:
�
gradients/AddN_17AddNKgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradIgradients/batch_normalization/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:
�
GradientDescent/learning_rateConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
valueB
 *o;*
dtype0*
_output_shapes
: 
�
9GradientDescent/update_conv2d/kernel/ApplyGradientDescentApplyGradientDescentconv2d/kernelGradientDescent/learning_rate7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
:
�
EGradientDescent/update_batch_normalization/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization/gammaGradientDescent/learning_rategradients/AddN_16*
_output_shapes
:*
use_locking( *
T0*,
_class"
 loc:@batch_normalization/gamma
�
DGradientDescent/update_batch_normalization/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization/betaGradientDescent/learning_rategradients/AddN_17*
_output_shapes
:*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta
�
;GradientDescent/update_conv2d_1/kernel/ApplyGradientDescentApplyGradientDescentconv2d_1/kernelGradientDescent/learning_rate9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
:
�
GGradientDescent/update_batch_normalization_1/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_1/gammaGradientDescent/learning_rategradients/AddN_13*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:*
use_locking( *
T0
�
FGradientDescent/update_batch_normalization_1/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_1/betaGradientDescent/learning_rategradients/AddN_14*
_output_shapes
:*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_1/beta
�
;GradientDescent/update_conv2d_2/kernel/ApplyGradientDescentApplyGradientDescentconv2d_2/kernelGradientDescent/learning_rate9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:*
use_locking( 
�
GGradientDescent/update_batch_normalization_2/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_2/gammaGradientDescent/learning_rategradients/AddN_10*
_output_shapes
:*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_2/gamma
�
FGradientDescent/update_batch_normalization_2/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_2/betaGradientDescent/learning_rategradients/AddN_11*
_output_shapes
:*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_2/beta
�
;GradientDescent/update_conv2d_3/kernel/ApplyGradientDescentApplyGradientDescentconv2d_3/kernelGradientDescent/learning_rate9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
:*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel
�
GGradientDescent/update_batch_normalization_3/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_3/gammaGradientDescent/learning_rategradients/AddN_7*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:
�
FGradientDescent/update_batch_normalization_3/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_3/betaGradientDescent/learning_rategradients/AddN_8*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
:
�
;GradientDescent/update_conv2d_4/kernel/ApplyGradientDescentApplyGradientDescentconv2d_4/kernelGradientDescent/learning_rate9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@conv2d_4/kernel*&
_output_shapes
:
�
GGradientDescent/update_batch_normalization_4/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_4/gammaGradientDescent/learning_rategradients/AddN_4*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:
�
FGradientDescent/update_batch_normalization_4/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_4/betaGradientDescent/learning_rategradients/AddN_5*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:
�
8GradientDescent/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kernelGradientDescent/learning_rate6gradients/dense/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	�d*
use_locking( *
T0*
_class
loc:@dense/kernel
�
GGradientDescent/update_batch_normalization_5/gamma/ApplyGradientDescentApplyGradientDescentbatch_normalization_5/gammaGradientDescent/learning_rateMgradients/batch_normalization_6/batchnorm/mul_grad/tuple/control_dependency_1*
_output_shapes
:d*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_5/gamma
�
FGradientDescent/update_batch_normalization_5/beta/ApplyGradientDescentApplyGradientDescentbatch_normalization_5/betaGradientDescent/learning_rateKgradients/batch_normalization_6/batchnorm/sub_grad/tuple/control_dependency*
T0*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
:d*
use_locking( 
�
:GradientDescent/update_dense_1/kernel/ApplyGradientDescentApplyGradientDescentdense_1/kernelGradientDescent/learning_rate8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:d

�
8GradientDescent/update_dense_1/bias/ApplyGradientDescentApplyGradientDescentdense_1/biasGradientDescent/learning_rate9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

�
GradientDescentNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1&^batch_normalization_3/AssignMovingAvg(^batch_normalization_3/AssignMovingAvg_1&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1:^GradientDescent/update_conv2d/kernel/ApplyGradientDescentF^GradientDescent/update_batch_normalization/gamma/ApplyGradientDescentE^GradientDescent/update_batch_normalization/beta/ApplyGradientDescent<^GradientDescent/update_conv2d_1/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_1/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_1/beta/ApplyGradientDescent<^GradientDescent/update_conv2d_2/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_2/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_2/beta/ApplyGradientDescent<^GradientDescent/update_conv2d_3/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_3/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_3/beta/ApplyGradientDescent<^GradientDescent/update_conv2d_4/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_4/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_4/beta/ApplyGradientDescent9^GradientDescent/update_dense/kernel/ApplyGradientDescentH^GradientDescent/update_batch_normalization_5/gamma/ApplyGradientDescentG^GradientDescent/update_batch_normalization_5/beta/ApplyGradientDescent;^GradientDescent/update_dense_1/kernel/ApplyGradientDescent9^GradientDescent/update_dense_1/bias/ApplyGradientDescent
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
ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:���������
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
Merge/MergeSummaryMergeSummary	conv_loss*
N*
_output_shapes
: ""
	summaries

conv_loss:0"�
trainable_variables��
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:0
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
�
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:0
�
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
�
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:0
�
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
�
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02.batch_normalization_3/gamma/Initializer/ones:0
�
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02.batch_normalization_3/beta/Initializer/zeros:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
�
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:02.batch_normalization_4/gamma/Initializer/ones:0
�
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:02.batch_normalization_4/beta/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
�
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign"batch_normalization_5/gamma/read:02.batch_normalization_5/gamma/Initializer/ones:0
�
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign!batch_normalization_5/beta/read:02.batch_normalization_5/beta/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0"�&
	variables�&�&
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
�
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:0
�
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:0
�
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
�
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
�
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:0
�
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:0
�
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:025batch_normalization_1/moving_mean/Initializer/zeros:0
�
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:028batch_normalization_1/moving_variance/Initializer/ones:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
�
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:0
�
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:0
�
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:025batch_normalization_2/moving_mean/Initializer/zeros:0
�
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:028batch_normalization_2/moving_variance/Initializer/ones:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
�
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02.batch_normalization_3/gamma/Initializer/ones:0
�
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02.batch_normalization_3/beta/Initializer/zeros:0
�
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign(batch_normalization_3/moving_mean/read:025batch_normalization_3/moving_mean/Initializer/zeros:0
�
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign,batch_normalization_3/moving_variance/read:028batch_normalization_3/moving_variance/Initializer/ones:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
�
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:02.batch_normalization_4/gamma/Initializer/ones:0
�
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:02.batch_normalization_4/beta/Initializer/zeros:0
�
#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign(batch_normalization_4/moving_mean/read:025batch_normalization_4/moving_mean/Initializer/zeros:0
�
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign,batch_normalization_4/moving_variance/read:028batch_normalization_4/moving_variance/Initializer/ones:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
�
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign"batch_normalization_5/gamma/read:02.batch_normalization_5/gamma/Initializer/ones:0
�
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign!batch_normalization_5/beta/read:02.batch_normalization_5/beta/Initializer/zeros:0
�
#batch_normalization_5/moving_mean:0(batch_normalization_5/moving_mean/Assign(batch_normalization_5/moving_mean/read:025batch_normalization_5/moving_mean/Initializer/zeros:0
�
'batch_normalization_5/moving_variance:0,batch_normalization_5/moving_variance/Assign,batch_normalization_5/moving_variance/read:028batch_normalization_5/moving_variance/Initializer/ones:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0"�

update_ops�
�
%batch_normalization/AssignMovingAvg:0
'batch_normalization/AssignMovingAvg_1:0
'batch_normalization_2/AssignMovingAvg:0
)batch_normalization_2/AssignMovingAvg_1:0
'batch_normalization_3/AssignMovingAvg:0
)batch_normalization_3/AssignMovingAvg_1:0
'batch_normalization_4/AssignMovingAvg:0
)batch_normalization_4/AssignMovingAvg_1:0
'batch_normalization_5/AssignMovingAvg:0
)batch_normalization_5/AssignMovingAvg_1:0
'batch_normalization_6/AssignMovingAvg:0
)batch_normalization_6/AssignMovingAvg_1:0"�[
cond_context�[�[
�
"batch_normalization/cond/cond_text"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_t:0 *�
batch_normalization/beta/read:0
 batch_normalization/cond/Const:0
"batch_normalization/cond/Const_1:0
0batch_normalization/cond/FusedBatchNorm/Switch:1
2batch_normalization/cond/FusedBatchNorm/Switch_1:1
2batch_normalization/cond/FusedBatchNorm/Switch_2:1
)batch_normalization/cond/FusedBatchNorm:0
)batch_normalization/cond/FusedBatchNorm:1
)batch_normalization/cond/FusedBatchNorm:2
)batch_normalization/cond/FusedBatchNorm:3
)batch_normalization/cond/FusedBatchNorm:4
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_t:0
 batch_normalization/gamma/read:0
conv2d/Conv2D:0V
 batch_normalization/gamma/read:02batch_normalization/cond/FusedBatchNorm/Switch_1:1U
batch_normalization/beta/read:02batch_normalization/cond/FusedBatchNorm/Switch_2:1C
conv2d/Conv2D:00batch_normalization/cond/FusedBatchNorm/Switch:1
�

$batch_normalization/cond/cond_text_1"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_f:0*�	
batch_normalization/beta/read:0
2batch_normalization/cond/FusedBatchNorm_1/Switch:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_1:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_2:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_3:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_4:0
+batch_normalization/cond/FusedBatchNorm_1:0
+batch_normalization/cond/FusedBatchNorm_1:1
+batch_normalization/cond/FusedBatchNorm_1:2
+batch_normalization/cond/FusedBatchNorm_1:3
+batch_normalization/cond/FusedBatchNorm_1:4
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_f:0
 batch_normalization/gamma/read:0
&batch_normalization/moving_mean/read:0
*batch_normalization/moving_variance/read:0
conv2d/Conv2D:0^
&batch_normalization/moving_mean/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_3:0b
*batch_normalization/moving_variance/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_4:0X
 batch_normalization/gamma/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_1:0W
batch_normalization/beta/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_2:0E
conv2d/Conv2D:02batch_normalization/cond/FusedBatchNorm_1/Switch:0
�
$batch_normalization_2/cond/cond_text$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_t:0 *�
!batch_normalization_1/beta/read:0
"batch_normalization_1/gamma/read:0
"batch_normalization_2/cond/Const:0
$batch_normalization_2/cond/Const_1:0
2batch_normalization_2/cond/FusedBatchNorm/Switch:1
4batch_normalization_2/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_2/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_2/cond/FusedBatchNorm:0
+batch_normalization_2/cond/FusedBatchNorm:1
+batch_normalization_2/cond/FusedBatchNorm:2
+batch_normalization_2/cond/FusedBatchNorm:3
+batch_normalization_2/cond/FusedBatchNorm:4
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_t:0
conv2d_2/Conv2D:0G
conv2d_2/Conv2D:02batch_normalization_2/cond/FusedBatchNorm/Switch:1Z
"batch_normalization_1/gamma/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_1:1Y
!batch_normalization_1/beta/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_2:1
�

&batch_normalization_2/cond/cond_text_1$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_f:0*�	
!batch_normalization_1/beta/read:0
"batch_normalization_1/gamma/read:0
(batch_normalization_1/moving_mean/read:0
,batch_normalization_1/moving_variance/read:0
4batch_normalization_2/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_2/cond/FusedBatchNorm_1:0
-batch_normalization_2/cond/FusedBatchNorm_1:1
-batch_normalization_2/cond/FusedBatchNorm_1:2
-batch_normalization_2/cond/FusedBatchNorm_1:3
-batch_normalization_2/cond/FusedBatchNorm_1:4
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_f:0
conv2d_2/Conv2D:0I
conv2d_2/Conv2D:04batch_normalization_2/cond/FusedBatchNorm_1/Switch:0\
"batch_normalization_1/gamma/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_1:0[
!batch_normalization_1/beta/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_2:0b
(batch_normalization_1/moving_mean/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_3:0f
,batch_normalization_1/moving_variance/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_4:0
�
$batch_normalization_3/cond/cond_text$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_t:0 *�
!batch_normalization_2/beta/read:0
"batch_normalization_2/gamma/read:0
"batch_normalization_3/cond/Const:0
$batch_normalization_3/cond/Const_1:0
2batch_normalization_3/cond/FusedBatchNorm/Switch:1
4batch_normalization_3/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_3/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_3/cond/FusedBatchNorm:0
+batch_normalization_3/cond/FusedBatchNorm:1
+batch_normalization_3/cond/FusedBatchNorm:2
+batch_normalization_3/cond/FusedBatchNorm:3
+batch_normalization_3/cond/FusedBatchNorm:4
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_t:0
conv2d_3/Conv2D:0Y
!batch_normalization_2/beta/read:04batch_normalization_3/cond/FusedBatchNorm/Switch_2:1G
conv2d_3/Conv2D:02batch_normalization_3/cond/FusedBatchNorm/Switch:1Z
"batch_normalization_2/gamma/read:04batch_normalization_3/cond/FusedBatchNorm/Switch_1:1
�

&batch_normalization_3/cond/cond_text_1$batch_normalization_3/cond/pred_id:0%batch_normalization_3/cond/switch_f:0*�	
!batch_normalization_2/beta/read:0
"batch_normalization_2/gamma/read:0
(batch_normalization_2/moving_mean/read:0
,batch_normalization_2/moving_variance/read:0
4batch_normalization_3/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_3/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_3/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_3/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_3/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_3/cond/FusedBatchNorm_1:0
-batch_normalization_3/cond/FusedBatchNorm_1:1
-batch_normalization_3/cond/FusedBatchNorm_1:2
-batch_normalization_3/cond/FusedBatchNorm_1:3
-batch_normalization_3/cond/FusedBatchNorm_1:4
$batch_normalization_3/cond/pred_id:0
%batch_normalization_3/cond/switch_f:0
conv2d_3/Conv2D:0[
!batch_normalization_2/beta/read:06batch_normalization_3/cond/FusedBatchNorm_1/Switch_2:0f
,batch_normalization_2/moving_variance/read:06batch_normalization_3/cond/FusedBatchNorm_1/Switch_4:0b
(batch_normalization_2/moving_mean/read:06batch_normalization_3/cond/FusedBatchNorm_1/Switch_3:0I
conv2d_3/Conv2D:04batch_normalization_3/cond/FusedBatchNorm_1/Switch:0\
"batch_normalization_2/gamma/read:06batch_normalization_3/cond/FusedBatchNorm_1/Switch_1:0
�
$batch_normalization_4/cond/cond_text$batch_normalization_4/cond/pred_id:0%batch_normalization_4/cond/switch_t:0 *�
!batch_normalization_3/beta/read:0
"batch_normalization_3/gamma/read:0
"batch_normalization_4/cond/Const:0
$batch_normalization_4/cond/Const_1:0
2batch_normalization_4/cond/FusedBatchNorm/Switch:1
4batch_normalization_4/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_4/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_4/cond/FusedBatchNorm:0
+batch_normalization_4/cond/FusedBatchNorm:1
+batch_normalization_4/cond/FusedBatchNorm:2
+batch_normalization_4/cond/FusedBatchNorm:3
+batch_normalization_4/cond/FusedBatchNorm:4
$batch_normalization_4/cond/pred_id:0
%batch_normalization_4/cond/switch_t:0
conv2d_4/Conv2D:0Y
!batch_normalization_3/beta/read:04batch_normalization_4/cond/FusedBatchNorm/Switch_2:1G
conv2d_4/Conv2D:02batch_normalization_4/cond/FusedBatchNorm/Switch:1Z
"batch_normalization_3/gamma/read:04batch_normalization_4/cond/FusedBatchNorm/Switch_1:1
�

&batch_normalization_4/cond/cond_text_1$batch_normalization_4/cond/pred_id:0%batch_normalization_4/cond/switch_f:0*�	
!batch_normalization_3/beta/read:0
"batch_normalization_3/gamma/read:0
(batch_normalization_3/moving_mean/read:0
,batch_normalization_3/moving_variance/read:0
4batch_normalization_4/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_4/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_4/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_4/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_4/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_4/cond/FusedBatchNorm_1:0
-batch_normalization_4/cond/FusedBatchNorm_1:1
-batch_normalization_4/cond/FusedBatchNorm_1:2
-batch_normalization_4/cond/FusedBatchNorm_1:3
-batch_normalization_4/cond/FusedBatchNorm_1:4
$batch_normalization_4/cond/pred_id:0
%batch_normalization_4/cond/switch_f:0
conv2d_4/Conv2D:0f
,batch_normalization_3/moving_variance/read:06batch_normalization_4/cond/FusedBatchNorm_1/Switch_4:0b
(batch_normalization_3/moving_mean/read:06batch_normalization_4/cond/FusedBatchNorm_1/Switch_3:0I
conv2d_4/Conv2D:04batch_normalization_4/cond/FusedBatchNorm_1/Switch:0\
"batch_normalization_3/gamma/read:06batch_normalization_4/cond/FusedBatchNorm_1/Switch_1:0[
!batch_normalization_3/beta/read:06batch_normalization_4/cond/FusedBatchNorm_1/Switch_2:0
�
$batch_normalization_5/cond/cond_text$batch_normalization_5/cond/pred_id:0%batch_normalization_5/cond/switch_t:0 *�
!batch_normalization_4/beta/read:0
"batch_normalization_4/gamma/read:0
"batch_normalization_5/cond/Const:0
$batch_normalization_5/cond/Const_1:0
2batch_normalization_5/cond/FusedBatchNorm/Switch:1
4batch_normalization_5/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_5/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_5/cond/FusedBatchNorm:0
+batch_normalization_5/cond/FusedBatchNorm:1
+batch_normalization_5/cond/FusedBatchNorm:2
+batch_normalization_5/cond/FusedBatchNorm:3
+batch_normalization_5/cond/FusedBatchNorm:4
$batch_normalization_5/cond/pred_id:0
%batch_normalization_5/cond/switch_t:0
conv2d_5/Conv2D:0Y
!batch_normalization_4/beta/read:04batch_normalization_5/cond/FusedBatchNorm/Switch_2:1G
conv2d_5/Conv2D:02batch_normalization_5/cond/FusedBatchNorm/Switch:1Z
"batch_normalization_4/gamma/read:04batch_normalization_5/cond/FusedBatchNorm/Switch_1:1
�

&batch_normalization_5/cond/cond_text_1$batch_normalization_5/cond/pred_id:0%batch_normalization_5/cond/switch_f:0*�	
!batch_normalization_4/beta/read:0
"batch_normalization_4/gamma/read:0
(batch_normalization_4/moving_mean/read:0
,batch_normalization_4/moving_variance/read:0
4batch_normalization_5/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_5/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_5/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_5/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_5/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_5/cond/FusedBatchNorm_1:0
-batch_normalization_5/cond/FusedBatchNorm_1:1
-batch_normalization_5/cond/FusedBatchNorm_1:2
-batch_normalization_5/cond/FusedBatchNorm_1:3
-batch_normalization_5/cond/FusedBatchNorm_1:4
$batch_normalization_5/cond/pred_id:0
%batch_normalization_5/cond/switch_f:0
conv2d_5/Conv2D:0I
conv2d_5/Conv2D:04batch_normalization_5/cond/FusedBatchNorm_1/Switch:0\
"batch_normalization_4/gamma/read:06batch_normalization_5/cond/FusedBatchNorm_1/Switch_1:0b
(batch_normalization_4/moving_mean/read:06batch_normalization_5/cond/FusedBatchNorm_1/Switch_3:0[
!batch_normalization_4/beta/read:06batch_normalization_5/cond/FusedBatchNorm_1/Switch_2:0f
,batch_normalization_4/moving_variance/read:06batch_normalization_5/cond/FusedBatchNorm_1/Switch_4:0"
train_op

GradientDescent%��       `/�#	�RB숙�A*

	conv_lossr�??��{m       QKD	�VI숙�A*

	conv_lossXw=?ѱB       QKD	d�I숙�A*

	conv_lossf#??!��       QKD	��I숙�A*

	conv_loss�P=?
"T       QKD	�"J숙�A*

	conv_lossI�:?-�Ũ       QKD	�bJ숙�A*

	conv_loss,L>?���       QKD	֨J숙�A*

	conv_loss�<?G!�y       QKD	��J숙�A*

	conv_lossM�<?�"       QKD	1.K숙�A*

	conv_loss~�<?���       QKD	osK숙�A	*

	conv_losse�7?]s�s       QKD	�K숙�A
*

	conv_lossj�;?Fx^U       QKD	L숙�A*

	conv_loss�:?h��	       QKD	�FL숙�A*

	conv_loss�	<?/��P       QKD	��L숙�A*

	conv_loss��9?g4t�       QKD	p�L숙�A*

	conv_loss{t9?��#g       QKD	�M숙�A*

	conv_loss�X9?�l�       QKD	XFM숙�A*

	conv_loss��=?����       QKD	�M숙�A*

	conv_loss�68?��=|       QKD	��M숙�A*

	conv_loss�%7?�`�:       QKD	�N숙�A*

	conv_lossPu:?��U       QKD	�SN숙�A*

	conv_loss^;?K␅       QKD	��N숙�A*

	conv_lossz38?9�h6       QKD	D�N숙�A*

	conv_lossc�7?62�       QKD	�O숙�A*

	conv_loss=�8?49��       QKD	MO숙�A*

	conv_losst�7?����       QKD	k�O숙�A*

	conv_loss4�9?��       QKD	1�O숙�A*

	conv_loss�9?�k?<       QKD	�P숙�A*

	conv_loss��5?�2       QKD	�CP숙�A*

	conv_loss�u5?��Z3       QKD	��P숙�A*

	conv_loss"%5?�s̬       QKD	��P숙�A*

	conv_lossկ7?����       QKD	� Q숙�A*

	conv_loss��6?L�fM       QKD	�>Q숙�A *

	conv_loss@�6?Nl�       QKD	|Q숙�A!*

	conv_lossC�8?��^       QKD	c�Q숙�A"*

	conv_loss� 7?Q%��       QKD	�Q숙�A#*

	conv_lossU7?b�2       QKD	F8R숙�A$*

	conv_loss<O:?�Ȥ[       QKD	muR숙�A%*

	conv_loss�9?�I��       QKD	��R숙�A&*

	conv_lossa�4?��t       QKD	?�R숙�A'*

	conv_loss��6?:m�       QKD	0S숙�A(*

	conv_loss��6?O�q�       QKD	YnS숙�A)*

	conv_loss�6?�M�*       QKD	�S숙�A**

	conv_loss��4?ߓ��       QKD	��S숙�A+*

	conv_lossh�5?+H       QKD	�'T숙�A,*

	conv_losst�4?����       QKD	dT숙�A-*

	conv_loss�v7?��U�       QKD	ޠT숙�A.*

	conv_lossÑ7?��C       QKD	?�T숙�A/*

	conv_loss�3?{�?�       QKD	oU숙�A0*

	conv_lossk�6?P��       QKD	�WU숙�A1*

	conv_loss�~1?�%u       QKD	J�U숙�A2*

	conv_loss�R9?�!*�       QKD	��U숙�A3*

	conv_loss�26?V�p       QKD	Y"V숙�A4*

	conv_loss�q6?k���       QKD	p_V숙�A5*

	conv_lossF�4?>G�@       QKD	��V숙�A6*

	conv_loss�G7?��ۍ       QKD	�V숙�A7*

	conv_loss`G3?�༳       QKD	.W숙�A8*

	conv_lossy�4?Ӛ��       QKD	�uW숙�A9*

	conv_loss=j4?����       QKD	�W숙�A:*

	conv_loss_@1?g�#        QKD	��W숙�A;*

	conv_loss�01?����       QKD	�AX숙�A<*

	conv_loss"3?��C�       QKD	߁X숙�A=*

	conv_lossq&0?�+��       QKD		�X숙�A>*

	conv_loss14?����       QKD	P�X숙�A?*

	conv_lossD�2?���       QKD	:=Y숙�A@*

	conv_loss�H.?1��       QKD	�{Y숙�AA*

	conv_loss�/?Ή�       QKD	j�Y숙�AB*

	conv_loss��0?o�Y       QKD	��Y숙�AC*

	conv_lossi/?��x       QKD	H5Z숙�AD*

	conv_loss�.?l("�       QKD	�qZ숙�AE*

	conv_loss{�.?6��       QKD	ͯZ숙�AF*

	conv_loss?�0?��X       QKD	2�Z숙�AG*

	conv_loss1{/?�(       QKD	�)[숙�AH*

	conv_loss��-?p6�       QKD	�f[숙�AI*

	conv_lossŞ0?D�       QKD	;�[숙�AJ*

	conv_loss^/?��<n       QKD	D�[숙�AK*

	conv_loss�l/?.=       QKD	d \숙�AL*

	conv_loss�r.?j�>       QKD	�_\숙�AM*

	conv_loss��1?� /�       QKD		�\숙�AN*

	conv_lossţ/?�e%       QKD	�\숙�AO*

	conv_loss�"/?	@b�       QKD	]숙�AP*

	conv_loss��0?�%%       QKD	[g]숙�AQ*

	conv_loss�<-?�W�       QKD	K�]숙�AR*

	conv_loss��-?m�Q�       QKD	��]숙�AS*

	conv_loss39.?��d�       QKD	d"^숙�AT*

	conv_loss�T,?�x��       QKD	�_^숙�AU*

	conv_loss�/?^k.�       QKD	'�^숙�AV*

	conv_loss��+?�3�       QKD	��^숙�AW*

	conv_lossȶ(?���       QKD	�)_숙�AX*

	conv_loss�L-?����       QKD	Ph_숙�AY*

	conv_loss�e.?UE��       QKD	W�_숙�AZ*

	conv_loss�0?�mC'       QKD	�_숙�A[*

	conv_loss�,?�,�       QKD	�#`숙�A\*

	conv_loss��+?/˖       QKD	�a`숙�A]*

	conv_losskE.?}��       QKD	��`숙�A^*

	conv_loss�*?N|�F       QKD	D�`숙�A_*

	conv_loss�o'?�EP�       QKD	�a숙�A`*

	conv_loss��*?���       QKD	Wa숙�Aa*

	conv_loss�@-?_4l        QKD		�a숙�Ab*

	conv_loss��-?��_�       QKD	f�a숙�Ac*

	conv_loss}�,?���       QKD	Sb숙�Ad*

	conv_loss:�-?�4       QKD	bb숙�Ae*

	conv_loss�+?J���       QKD	�b숙�Af*

	conv_loss�'?���G       QKD	&�b숙�Ag*

	conv_loss��+?�#��       QKD	�*c숙�Ah*

	conv_loss�J+?�d�       QKD	�hc숙�Ai*

	conv_loss�Y+?��T?       QKD	/�c숙�Aj*

	conv_loss[�+?`�       QKD	��c숙�Ak*

	conv_loss�'?KjAQ       QKD	�>d숙�Al*

	conv_loss�q)?�g�       QKD	d숙�Am*

	conv_lossB@+?���       QKD	C�d숙�An*

	conv_loss��&?����       QKD		e숙�Ao*

	conv_lossy&?���       QKD	 Fe숙�Ap*

	conv_loss��(?�|�       QKD	�e숙�Aq*

	conv_loss3�)?�U�       QKD	��e숙�Ar*

	conv_loss��)?��6�       QKD	,f숙�As*

	conv_loss5�'?ѫ�O       QKD	�Df숙�At*

	conv_loss?�,?���       QKD	ցf숙�Au*

	conv_loss�O)?��)       QKD	ſf숙�Av*

	conv_loss�(? /��       QKD	�f숙�Aw*

	conv_loss��&?^(=       QKD	=?g숙�Ax*

	conv_lossG�&?҇%n       QKD	2}g숙�Ay*

	conv_loss�&?'��       QKD	2�g숙�Az*

	conv_loss�:(?P(6(       QKD	W�g숙�A{*

	conv_loss�0'?�t�       QKD	57h숙�A|*

	conv_loss?�%?�/F       QKD	"th숙�A}*

	conv_loss�%?�y       QKD	X�h숙�A~*

	conv_loss=&?��Z       QKD	)�h숙�A*

	conv_loss@b)??�/        )��P	�+i숙�A�*

	conv_loss��&?c��,        )��P	?ji숙�A�*

	conv_loss)X'?���        )��P	8�i숙�A�*

	conv_loss.j$?q*        )��P	��i숙�A�*

	conv_lossT�'?+���        )��P	�#j숙�A�*

	conv_loss؊&?2�#�        )��P	zaj숙�A�*

	conv_loss=�#?Q��        )��P	��j숙�A�*

	conv_lossgD'?���3        )��P	 �j숙�A�*

	conv_lossuz%?��4e        )��P	xk숙�A�*

	conv_loss`�?��4u        )��P	�Wk숙�A�*

	conv_loss�I(?���        )��P	��k숙�A�*

	conv_loss�a'?�O��        )��P	R�k숙�A�*

	conv_loss/�'?�I#�        )��P	�l숙�A�*

	conv_loss�&?���        )��P	�Ml숙�A�*

	conv_loss}�&?Z:N        )��P	��l숙�A�*

	conv_loss��#?T�>7        )��P	��l숙�A�*

	conv_loss��$?B���        )��P	R
m숙�A�*

	conv_lossq^$?��Fo        )��P	5Jm숙�A�*

	conv_loss�T)?:%�T        )��P	H�m숙�A�*

	conv_lossW)"?<�C/        )��P	�m숙�A�*

	conv_loss9#%?�B��        )��P	0	n숙�A�*

	conv_loss?�#?���        )��P	 Hn숙�A�*

	conv_lossՀ%?WJ�        )��P	�n숙�A�*

	conv_loss��$?���        )��P	��n숙�A�*

	conv_loss�"#?�ٕh        )��P	io숙�A�*

	conv_loss��$?ʾ�        )��P	\Xo숙�A�*

	conv_loss�W?��Uf        )��P	�o숙�A�*

	conv_lossi#?X9T        )��P	(�o숙�A�*

	conv_loss�$?�u�u        )��P	�p숙�A�*

	conv_loss��#?	HH�        )��P	;cp숙�A�*

	conv_loss5"?/,-�        )��P	��p숙�A�*

	conv_loss[#?��I        )��P	��p숙�A�*

	conv_loss��?�?�
        )��P	o0q숙�A�*

	conv_loss��?�X�        )��P	�wq숙�A�*

	conv_loss�?7�>        )��P	O�q숙�A�*

	conv_loss��?�0��        )��P	��q숙�A�*

	conv_lossKz"?, 5�        )��P	<r숙�A�*

	conv_loss�I!?KT��        )��P	K}r숙�A�*

	conv_loss��?��HO        )��P	��r숙�A�*

	conv_loss��!?G).>        )��P	ys숙�A�*

	conv_loss�H ?fП�        )��P	�Cs숙�A�*

	conv_loss�#?��p�        )��P	��s숙�A�*

	conv_loss� ?��˕        )��P	��s숙�A�*

	conv_loss��?��r        )��P	t숙�A�*

	conv_loss?k���        )��P	R\t숙�A�*

	conv_loss_�?2Uc        )��P	��t숙�A�*

	conv_lossE!?�ۨ        )��P	�t숙�A�*

	conv_loss�?]�G^        )��P	�u숙�A�*

	conv_loss��?bX4�        )��P	�[u숙�A�*

	conv_loss��?mb��        )��P	��u숙�A�*

	conv_loss��?R��        )��P	��u숙�A�*

	conv_lossYu?Of�        )��P	�v숙�A�*

	conv_loss��?x�&�        )��P	�Wv숙�A�*

	conv_loss� ?O8��        )��P	��v숙�A�*

	conv_loss�+?�	��        )��P	
�v숙�A�*

	conv_loss��?:��        )��P	`w숙�A�*

	conv_losszv?(<��        )��P	YVw숙�A�*

	conv_loss�$?��0"        )��P	�w숙�A�*

	conv_loss?��C�        )��P	��w숙�A�*

	conv_lossj?c~�        )��P	Rx숙�A�*

	conv_lossN)?w�+        )��P	�Px숙�A�*

	conv_loss�o?�`!�        )��P	�x숙�A�*

	conv_loss�=?w�u�        )��P	��x숙�A�*

	conv_loss��?O� �        )��P	>y숙�A�*

	conv_loss�`!?�K��        )��P	�My숙�A�*

	conv_loss�\?CA�F        )��P	l�y숙�A�*

	conv_lossQ?��Y        )��P	��y숙�A�*

	conv_loss-b?�K6�        )��P	�	z숙�A�*

	conv_lossZ�?�^o        )��P	[Iz숙�A�*

	conv_loss1�?5e[�        )��P	�z숙�A�*

	conv_loss��?5���        )��P	��z숙�A�*

	conv_loss j?k�M        )��P	i{숙�A�*

	conv_loss%�?��        )��P	�E{숙�A�*

	conv_loss�g?��X        )��P	�[}숙�A�*

	conv_lossȵ?�        )��P	T�}숙�A�*

	conv_loss�?�.pW        )��P	��}숙�A�*

	conv_loss�!?(�        )��P	�~숙�A�*

	conv_loss��?�4l7        )��P	�Z~숙�A�*

	conv_loss&Y?p��        )��P	˘~숙�A�*

	conv_lossr�?��{�        )��P	Y�~숙�A�*

	conv_loss�r?Xo        )��P	�/숙�A�*

	conv_loss�?��fF        )��P	n숙�A�*

	conv_loss�i?g9�        )��P	�숙�A�*

	conv_lossj?���l        )��P	��숙�A�*

	conv_loss�?��        )��P	�3�숙�A�*

	conv_loss?�?��A         )��P	�y�숙�A�*

	conv_loss�.?�C�K        )��P	���숙�A�*

	conv_loss��?�ƮD        )��P	���숙�A�*

	conv_loss5�?xe��        )��P	;<�숙�A�*

	conv_loss��?�$'        )��P	�x�숙�A�*

	conv_loss�+?��        )��P	Ϸ�숙�A�*

	conv_lossh2?�D�V        )��P	��숙�A�*

	conv_loss�g?��.c        )��P	�1�숙�A�*

	conv_loss�?ő��        )��P	�n�숙�A�*

	conv_loss��?U�w!        )��P	��숙�A�*

	conv_lossa??'Nn�        )��P	��숙�A�*

	conv_loss�:?d��+        )��P	A)�숙�A�*

	conv_loss��?��        )��P	�g�숙�A�*

	conv_loss�w?��Ù        )��P	���숙�A�*

	conv_lossm�?�IE~        )��P	p�숙�A�*

	conv_loss�V?39�        )��P	� �숙�A�*

	conv_loss'�?h�~�        )��P	�^�숙�A�*

	conv_loss��?9�?�        )��P	���숙�A�*

	conv_loss0?a��         )��P	�ۄ숙�A�*

	conv_loss��?�uK        )��P	��숙�A�*

	conv_loss��?���        )��P	�X�숙�A�*

	conv_loss��?d�o�        )��P	6��숙�A�*

	conv_lossѿ?P��        )��P	+҅숙�A�*

	conv_loss�I?�վ$        )��P	��숙�A�*

	conv_loss�i?�g��        )��P	-L�숙�A�*

	conv_loss9�?7W{�        )��P	���숙�A�*

	conv_lossm?%*$C        )��P	�Ɇ숙�A�*

	conv_loss$?^�gg        )��P	J	�숙�A�*

	conv_loss0�?�T��        )��P	�F�숙�A�*

	conv_loss��?����        )��P	���숙�A�*

	conv_loss�7?�d        )��P	�숙�A�*

	conv_loss��?�~�3        )��P	��숙�A�*

	conv_loss�?ܼ߅        )��P	?�숙�A�*

	conv_loss`d?J��	        )��P	t}�숙�A�*

	conv_loss�?��Y@        )��P	f��숙�A�*

	conv_loss�?�Jb        )��P	}��숙�A�*

	conv_loss|�?��s        )��P	�8�숙�A�*

	conv_lossg?����        )��P	�w�숙�A�*

	conv_loss�z?hX�        )��P	�ʉ숙�A�*

	conv_loss�R?E�        )��P	��숙�A�*

	conv_loss}�?�(��        )��P	aG�숙�A�*

	conv_loss;�?%B�        )��P	щ�숙�A�*

	conv_loss��?�Њ-        )��P	�Ȋ숙�A�*

	conv_loss�?�c	(        )��P	��숙�A�*

	conv_loss~�?�!�        )��P	[�숙�A�*

	conv_loss��?e,�        )��P	蜋숙�A�*

	conv_loss��?ak^�        )��P	j܋숙�A�*

	conv_loss�?dM        )��P	��숙�A�*

	conv_loss-�?!��        )��P	Ka�숙�A�*

	conv_loss��?4��        )��P	`��숙�A�*

	conv_loss�!?]a�e        )��P	��숙�A�*

	conv_loss��?�,�        )��P	f+�숙�A�*

	conv_loss�K?�/z�        )��P	Cl�숙�A�*

	conv_loss4�?�T�        )��P	ɫ�숙�A�*

	conv_loss�?Y�N�        )��P	��숙�A�*

	conv_lossY�?��        )��P	I(�숙�A�*

	conv_loss:?q�-        )��P	Uf�숙�A�*

	conv_loss�q?�埑        )��P	8��숙�A�*

	conv_lossx�?��Z�        )��P	��숙�A�*

	conv_loss�?�QML        )��P	�#�숙�A�*

	conv_loss��?�<@        )��P	vc�숙�A�*

	conv_loss�P?6W�        )��P	U��숙�A�*

	conv_loss�5?m�<        )��P	o�숙�A�*

	conv_loss �?.G�j        )��P	��숙�A�*

	conv_lossn�?����        )��P	�\�숙�A�*

	conv_loss_?myS        )��P	���숙�A�*

	conv_loss$?����        )��P	�ܐ숙�A�*

	conv_loss��?,6z^        )��P	�숙�A�*

	conv_loss�q?�w        )��P	�X�숙�A�*

	conv_loss��?���        )��P	?��숙�A�*

	conv_lossTv?��        )��P	�֑숙�A�*

	conv_loss+�?�Ϥ�        )��P	��숙�A�*

	conv_lossxu?��{�        )��P	�U�숙�A�*

	conv_loss#�?i��        )��P	��숙�A�*

	conv_loss�?lm�        )��P	�Ғ숙�A�*

	conv_loss�F?$�X]        )��P	I�숙�A�*

	conv_lossP�?e��        )��P	N�숙�A�*

	conv_loss�W?�Z�        )��P	|��숙�A�*

	conv_lossŐ?*	U        )��P	˓숙�A�*

	conv_loss�?bPU        )��P	�숙�A�*

	conv_lossq�?x�a        )��P	�G�숙�A�*

	conv_loss<X?lc�        )��P	���숙�A�*

	conv_loss,1?	��U        )��P	�Ĕ숙�A�*

	conv_lossXT?����        )��P	��숙�A�*

	conv_loss�?NG        )��P	�D�숙�A�*

	conv_loss�?�/!�        )��P	���숙�A�*

	conv_lossR�?�=�        )��P	���숙�A�*

	conv_loss�-?��>        )��P	`��숙�A�*

	conv_lossM�?��"        )��P	7O�숙�A�*

	conv_loss��?:���        )��P	���숙�A�*

	conv_loss�
?~@�
        )��P	�˖숙�A�*

	conv_loss��?�b�<        )��P	�숙�A�*

	conv_loss-?TŪ         )��P	�Q�숙�A�*

	conv_loss]?;\A]        )��P	v��숙�A�*

	conv_lossL�?��        )��P	��숙�A�*

	conv_loss_-?!��=        )��P	#%�숙�A�*

	conv_lossZ?��ba        )��P	�d�숙�A�*

	conv_lossB?x�k        )��P	\��숙�A�*

	conv_loss)�?��?>        )��P	��숙�A�*

	conv_loss�_?#D>�        )��P	�%�숙�A�*

	conv_lossWi?�9��        )��P	�h�숙�A�*

	conv_loss�?K�O        )��P	���숙�A�*

	conv_lossfT?�R�c        )��P	���숙�A�*

	conv_loss�	?��8�        )��P	�5�숙�A�*

	conv_loss��?:�        )��P	Uu�숙�A�*

	conv_loss~�?X�        )��P	���숙�A�*

	conv_loss��
?��^        )��P	���숙�A�*

	conv_loss�=?b<        )��P	9�숙�A�*

	conv_loss��	?�t[:        )��P	}x�숙�A�*

	conv_loss9~
?a=��        )��P	Z��숙�A�*

	conv_loss�?7�        )��P	��숙�A�*

	conv_loss/6
?�W�        )��P	N�숙�A�*

	conv_loss]�?����        )��P	;��숙�A�*

	conv_loss��?J8E        )��P	�˜숙�A�*

	conv_loss��
?E�d        )��P	7
�숙�A�*

	conv_loss��
?�F��        )��P	I�숙�A�*

	conv_loss3b
?\f�        )��P	���숙�A�*

	conv_loss�l?HUU0        )��P	`ǝ숙�A�*

	conv_loss*>?:�         )��P	�숙�A�*

	conv_loss,T?T[Yd        )��P	�E�숙�A�*

	conv_lossq�
?X�Ѹ        )��P	H��숙�A�*

	conv_loss��?�ع�        )��P	�숙�A�*

	conv_loss%�
?����        )��P	F�숙�A�*

	conv_losse�?���        )��P	�>�숙�A�*

	conv_lossO�
?�H        )��P	�|�숙�A�*

	conv_loss?���        )��P	?��숙�A�*

	conv_lossT
?�&�        )��P	;��숙�A�*

	conv_lossj�?�	�        )��P	{7�숙�A�*

	conv_loss�?��k�        )��P	v�숙�A�*

	conv_loss<N?u)�`        )��P	���숙�A�*

	conv_loss�k	?8�v        )��P	��숙�A�*

	conv_loss�.? �f�        )��P	E1�숙�A�*

	conv_lossn	?�A�        )��P	�n�숙�A�*

	conv_loss�X
?�d��        )��P	m��숙�A�*

	conv_lossk?Gپ�        )��P	*�숙�A�*

	conv_lossO�
?�'+�        )��P	)�숙�A�*

	conv_lossV�?�.        )��P	Fh�숙�A�*

	conv_lossܘ?��³        )��P	���숙�A�*

	conv_lossG�?D�h�        )��P	V��숙�A�*

	conv_lossH
?b�[�        )��P	�2�숙�A�*

	conv_loss'?:1�}        )��P	Rq�숙�A�*

	conv_loss��?��        )��P	I��숙�A�*

	conv_loss̩?���        )��P	@��숙�A�*

	conv_loss8*?$�D�        )��P	�9�숙�A�*

	conv_loss��?R+�o        )��P	`��숙�A�*

	conv_loss��?"`�u        )��P	�ä숙�A�*

	conv_lossI?�xs�        )��P	K�숙�A�*

	conv_loss�?�g�M        )��P	�J�숙�A�*

	conv_loss}?}�        )��P	���숙�A�*

	conv_loss6w	?���        )��P	dǥ숙�A�*

	conv_loss�Y?��K-        )��P	��숙�A�*

	conv_lossi
?����        )��P	�S�숙�A�*

	conv_loss��?ea�        )��P	��숙�A�*

	conv_loss�N?�f~9        )��P	2զ숙�A�*

	conv_loss��?DP͡        )��P	��숙�A�*

	conv_loss�*?�<�        )��P	�R�숙�A�*

	conv_lossp1?P�        )��P	됧숙�A�*

	conv_loss��?�U��        )��P	cΧ숙�A�*

	conv_loss$?�V�        )��P	��숙�A�*

	conv_loss��?ȅu)        )��P	KK�숙�A�*

	conv_lossU	?�}�        )��P	9��숙�A�*

	conv_lossTk?Re��        )��P	�Ǩ숙�A�*

	conv_loss7�?� ��        )��P	��숙�A�*

	conv_loss�$	?�d?        )��P	~D�숙�A�*

	conv_lossJ{?�� �        )��P	ꅩ숙�A�*

	conv_loss�d?���        )��P	�ǩ숙�A�*

	conv_loss�?��        )��P	��숙�A�*

	conv_loss_�?9f�        )��P	C�숙�A�*

	conv_loss6?ē�        )��P	���숙�A�*

	conv_lossa�?q��        )��P	CЪ숙�A�*

	conv_loss��?���        )��P	��숙�A�*

	conv_loss�5?�r�        )��P	�L�숙�A�*

	conv_lossR�?dv        )��P	g��숙�A�*

	conv_lossP?|1�{        )��P	�ȫ숙�A�*

	conv_loss~@?���        )��P	��숙�A�*

	conv_loss(d?���         )��P	�F�숙�A�*

	conv_loss�?�M�q        )��P	~��숙�A�*

	conv_loss�X?=،        )��P	���숙�A�*

	conv_loss��?�Vv        )��P	f �숙�A�*

	conv_loss�?�9��        )��P	�=�숙�A�*

	conv_lossX-?qb &        )��P	�|�숙�A�*

	conv_loss??�;��        )��P	H��숙�A�*

	conv_loss��?�^�        )��P	���숙�A�*

	conv_loss)?�u6        )��P	�:�숙�A�*

	conv_loss�"?�BҸ        )��P	�x�숙�A�*

	conv_loss'P?�~�        )��P	$��숙�A�*

	conv_loss��?*�r         )��P	���숙�A�*

	conv_losss ?W�w        )��P	(8�숙�A�*

	conv_loss��?��G        )��P	;M�숙�A�*

	conv_loss�s?^_K        )��P	�숙�A�*

	conv_loss��?�yR�        )��P	�˱숙�A�*

	conv_loss8�?l�B�        )��P	��숙�A�*

	conv_loss�?=���        )��P	M�숙�A�*

	conv_loss�?0�        )��P	���숙�A�*

	conv_lossg�?M}�        )��P	m��숙�A�*

	conv_loss�N?c<(�        )��P	�-�숙�A�*

	conv_lossv?���R        )��P	z�숙�A�*

	conv_loss��?v�:        )��P	���숙�A�*

	conv_loss���>ִ�        )��P	v��숙�A�*

	conv_loss:,?�G��        )��P	\5�숙�A�*

	conv_loss��?:bZ�        )��P	;t�숙�A�*

	conv_loss23?hO��        )��P	���숙�A�*

	conv_loss��?�<��        )��P	��숙�A�*

	conv_lossl?���8        )��P	�;�숙�A�*

	conv_lossŝ?r�P�        )��P	$�숙�A�*

	conv_loss�?&h<�        )��P	¾�숙�A�*

	conv_loss�?��`�        )��P	1��숙�A�*

	conv_loss���>�gA        )��P	�8�숙�A�*

	conv_loss�� ?zQ�        )��P	�v�숙�A�*

	conv_loss�E?��        )��P	���숙�A�*

	conv_loss$�?�[x        )��P	I�숙�A�*

	conv_loss�� ?��Z        )��P	P0�숙�A�*

	conv_lossy�?�I        )��P	�o�숙�A�*

	conv_loss�)?�b        )��P	G��숙�A�*

	conv_lossXM?0���        )��P	��숙�A�*

	conv_loss�V�>HY�        )��P	),�숙�A�*

	conv_loss_D�>���        )��P	�i�숙�A�*

	conv_loss���>�n�-        )��P	��숙�A�*

	conv_loss�d�>4�,U        )��P	��숙�A�*

	conv_loss�>����        )��P	�!�숙�A�*

	conv_loss��>_���        )��P	`�숙�A�*

	conv_lossC
�>���        )��P	K��숙�A�*

	conv_loss���>�$        )��P	�۹숙�A�*

	conv_loss��?8p�Z        )��P	[�숙�A�*

	conv_loss���>pi��        )��P	�W�숙�A�*

	conv_lossR�?��6�        )��P	���숙�A�*

	conv_loss�?�7R        )��P	�Һ숙�A�*

	conv_loss>��>z%�        )��P	�숙�A�*

	conv_loss��>'��j        )��P	�M�숙�A�*

	conv_loss]\�>$ٱ        )��P		��숙�A�*

	conv_loss�]�>�t3        )��P	�˻숙�A�*

	conv_loss���>z��        )��P	�	�숙�A�*

	conv_loss�E�>S36c        )��P	H�숙�A�*

	conv_loss��>�;��        )��P	���숙�A�*

	conv_loss� �>�3        )��P	�ļ숙�A�*

	conv_lossy�>m5U        )��P	��숙�A�*

	conv_loss���>q��        )��P	A�숙�A�*

	conv_loss���>)hd�        )��P	V��숙�A�*

	conv_loss>Y�>�U�'        )��P	�ӽ숙�A�*

	conv_loss���>ë�        )��P	��숙�A�*

	conv_loss��>�j�        )��P	N�숙�A�*

	conv_lossz��>Sq(�        )��P	R��숙�A�*

	conv_loss�b�>�e.z        )��P	1پ숙�A�*

	conv_loss��>{|�        )��P	�숙�A�*

	conv_losst!�>7�(        )��P	�e�숙�A�*

	conv_loss���>F�S        )��P	���숙�A�*

	conv_loss&?ZD�H        )��P	�숙�A�*

	conv_loss1�>W�q        )��P	-�숙�A�*

	conv_loss�0�>g7fx        )��P	�j�숙�A�*

	conv_loss��>���        )��P	���숙�A�*

	conv_loss�?�>�]3�        )��P	���숙�A�*

	conv_lossW�>Ы�        )��P	�#�숙�A�*

	conv_lossJ\�>�A        )��P	ik�숙�A�*

	conv_loss.��>�?��        )��P	T��숙�A�*

	conv_loss��>E���        )��P	���숙�A�*

	conv_loss���>n/�`        )��P	�B�숙�A�*

	conv_loss� ?K��        )��P	���숙�A�*

	conv_loss�>��        )��P	���숙�A�*

	conv_loss/0�>Q�@        )��P	��숙�A�*

	conv_loss~��>S�-        )��P	sA�숙�A�*

	conv_loss���>[Y��        )��P	�~�숙�A�*

	conv_loss���>��F        )��P	��숙�A�*

	conv_lossN��>����        )��P	���숙�A�*

	conv_loss�i�>���        )��P	39�숙�A�*

	conv_loss���>;�!        )��P	}x�숙�A�*

	conv_loss�@�>��'�        )��P	[��숙�A�*

	conv_loss�>�>5�[�        )��P	��숙�A�*

	conv_loss��>���:        )��P	�2�숙�A�*

	conv_loss�M�>#d��        )��P	�q�숙�A�*

	conv_losst�>�-        )��P	���숙�A�*

	conv_loss���>�#��        )��P	���숙�A�*

	conv_loss{��>N�r�        )��P	Y/�숙�A�*

	conv_loss��>>��         )��P	�l�숙�A�*

	conv_lossެ�>�/"�        )��P	���숙�A�*

	conv_lossKW�>���        )��P	���숙�A�*

	conv_losst��>�ڤ        )��P	�,�숙�A�*

	conv_loss$7�>,�!{        )��P	Pk�숙�A�*

	conv_loss���>_`}        )��P	���숙�A�*

	conv_loss��>��W        )��P	���숙�A�*

	conv_loss�
�>�.        )��P	�%�숙�A�*

	conv_lossp��>�l�9        )��P	�d�숙�A�*

	conv_loss��>� 4�        )��P	���숙�A�*

	conv_loss�	�>{��        )��P	���숙�A�*

	conv_loss���>�̜�        )��P	}�숙�A�*

	conv_loss	��>���        )��P	0\�숙�A�*

	conv_loss\K�>�.R        )��P	4��숙�A�*

	conv_lossy��>։$�        )��P	���숙�A�*

	conv_lossG�>آYk        )��P	sW�숙�A�*

	conv_lossD�>?�(�        )��P	��숙�A�*

	conv_lossQ��>���        )��P	j��숙�A�*

	conv_loss�i�>�"�U        )��P	�+�숙�A�*

	conv_loss���>?E�         )��P	;m�숙�A�*

	conv_loss>��>��|        )��P	���숙�A�*

	conv_loss΅�>_:)1        )��P	{��숙�A�*

	conv_loss͇�>&�.        )��P	(�숙�A�*

	conv_lossk��>�O�        )��P	Jw�숙�A�*

	conv_loss��>Ɩ�        )��P	��숙�A�*

	conv_loss��>�	�        )��P	���숙�A�*

	conv_loss9��>ۨo        )��P	yA�숙�A�*

	conv_loss��>�n��        )��P	��숙�A�*

	conv_loss���>�7m        )��P	<��숙�A�*

	conv_loss�0�>�-�k        )��P	��숙�A�*

	conv_loss�%�>Y޷\        )��P	[?�숙�A�*

	conv_loss��>���/        )��P	�|�숙�A�*

	conv_lossj��>W�"7        )��P	J��숙�A�*

	conv_loss���>Տh�        )��P	���숙�A�*

	conv_loss���>J{��        )��P	�6�숙�A�*

	conv_loss�#�>h�_        )��P	u�숙�A�*

	conv_lossJ-�>�3�        )��P	&��숙�A�*

	conv_losss��>����        )��P	��숙�A�*

	conv_loss.Q�>jyɡ        )��P	r0�숙�A�*

	conv_loss�-�>�Ƞ�        )��P	Bn�숙�A�*

	conv_loss�b�>a�\�        )��P	6��숙�A�*

	conv_loss��>KLB�        )��P	(��숙�A�*

	conv_loss<�>�=|        )��P	�(�숙�A�*

	conv_loss���>T���        )��P	af�숙�A�*

	conv_loss�1�>)8TK        )��P	a��숙�A�*

	conv_lossc�>��         )��P	a��숙�A�*

	conv_loss�o�>ax�        )��P	��숙�A�*

	conv_loss�d�>�k�'        )��P	"Z�숙�A�*

	conv_lossH�>���*        )��P	���숙�A�*

	conv_loss� �>�
��        )��P	���숙�A�*

	conv_loss�z�>7&Rb        )��P	��숙�A�*

	conv_loss���>]�C4        )��P	�Q�숙�A�*

	conv_loss��>�a�.        )��P	���숙�A�*

	conv_lossV�>*	R�        )��P	$��숙�A�*

	conv_loss���>%A��        )��P	 �숙�A�*

	conv_loss���>j��        )��P	UH�숙�A�*

	conv_loss%}�>�h��        )��P	v��숙�A�*

	conv_lossxF�>3�zm        )��P	���숙�A�*

	conv_lossJ��>�.�c        )��P	��숙�A�*

	conv_loss���>@��        )��P	�>�숙�A�*

	conv_loss/��>�S�!        )��P	�{�숙�A�*

	conv_lossGf�>����        )��P	���숙�A�*

	conv_lossm��>	�)'        )��P	���숙�A�*

	conv_loss(�>�H��        )��P	�1�숙�A�*

	conv_loss��>/X7|        )��P	Xo�숙�A�*

	conv_loss���>f/        )��P	C��숙�A�*

	conv_loss7��>_�r"        )��P	S��숙�A�*

	conv_lossL��>�f��        )��P	&:�숙�A�*

	conv_lossW��>*�Ɖ        )��P	Wx�숙�A�*

	conv_loss�'�>����        )��P	O��숙�A�*

	conv_loss$�>v�j�        )��P	���숙�A�*

	conv_loss���>8��        )��P	�6�숙�A�*

	conv_loss��> ���        )��P	�t�숙�A�*

	conv_loss�*�>�S        )��P	��숙�A�*

	conv_loss���>�O�        )��P	v��숙�A�*

	conv_loss6D�>����        )��P	|<�숙�A�*

	conv_loss�+�>r���        )��P	���숙�A�*

	conv_loss�K�>Q*Jc        )��P	���숙�A�*

	conv_loss�2�>����        )��P	
!�숙�A�*

	conv_lossAV�>EB,        )��P	+_�숙�A�*

	conv_loss�>={E        )��P	���숙�A�*

	conv_loss�x�>��%        )��P	 ��숙�A�*

	conv_loss���>���E        )��P	�숙�A�*

	conv_loss���>J�        )��P	�S�숙�A�*

	conv_loss���>�;�        )��P	/��숙�A�*

	conv_loss��>ki�U        )��P	4��숙�A�*

	conv_loss� �>��7        )��P	��숙�A�*

	conv_loss��>���m        )��P	�L�숙�A�*

	conv_loss>�>u�!�        )��P	r��숙�A�*

	conv_loss!��>#M��        )��P	���숙�A�*

	conv_loss�T�>�@�.        )��P	��숙�A�*

	conv_loss��>]�P�        )��P	?C�숙�A�*

	conv_loss0��>��;�        )��P	���숙�A�*

	conv_loss��>Vƻ        )��P	ۿ�숙�A�*

	conv_lossq��>¨i        )��P	���숙�A�*

	conv_loss�A�>|fq        )��P	5;�숙�A�*

	conv_loss��>�2a        )��P	�y�숙�A�*

	conv_loss�Y�>-ĭ�        )��P	o��숙�A�*

	conv_loss4c�>��uA        )��P	r��숙�A�*

	conv_lossi��>Gr�        )��P	o4�숙�A�*

	conv_loss>��> tn�        )��P	�r�숙�A�*

	conv_loss���>�>�        )��P	n��숙�A�*

	conv_loss�>�>�        )��P	��숙�A�*

	conv_loss�>�O(Z        )��P	G.�숙�A�*

	conv_loss�G�>��ɶ        )��P	�j�숙�A�*

	conv_loss�M�>,���        )��P	ʧ�숙�A�*

	conv_lossi��>,�w�        )��P	���숙�A�*

	conv_loss���>��        )��P	�$�숙�A�*

	conv_lossѯ�>j��        )��P	�c�숙�A�*

	conv_lossE��>��X�        )��P	���숙�A�*

	conv_loss~W�>�E�X        )��P	���숙�A�*

	conv_loss~��>�w        )��P	S�숙�A�*

	conv_loss�/�>�.�B        )��P	�]�숙�A�*

	conv_loss���>{ �O        )��P	���숙�A�*

	conv_lossx��>&KA�        )��P	O��숙�A�*

	conv_loss&��>���T        )��P	��숙�A�*

	conv_loss�f�>�7Ӓ        )��P	�B�숙�A�*

	conv_loss�>M�~�        )��P	ـ�숙�A�*

	conv_loss���>�C��        )��P	]��숙�A�*

	conv_lossA�>�M�/        )��P	=�숙�A�*

	conv_lossa��>Mv        )��P	G�숙�A�*

	conv_loss��>��?A        )��P	ۄ�숙�A�*

	conv_loss���>��|D        )��P	b��숙�A�*

	conv_loss!o�>t�C9        )��P	6�숙�A�*

	conv_losse��>7;+u        )��P	�S�숙�A�*

	conv_loss2��>�o$        )��P	8��숙�A�*

	conv_loss�x�>2�_        )��P	���숙�A�*

	conv_lossb*�>���        )��P	
�숙�A�*

	conv_loss���>�3�3        )��P	6H�숙�A�*

	conv_loss�|�>M�|	        )��P	܉�숙�A�*

	conv_lossMW�>�?�J        )��P	o��숙�A�*

	conv_lossb��>���P        )��P	��숙�A�*

	conv_loss/��>l(1        )��P	�L�숙�A�*

	conv_loss!��>��"�        )��P	���숙�A�*

	conv_loss��>���        )��P	K��숙�A�*

	conv_loss�y�>]�2�        )��P	@�숙�A�*

	conv_lossp�> ���        )��P	�D�숙�A�*

	conv_loss��>̏        )��P	d��숙�A�*

	conv_lossX�>P��        )��P	���숙�A�*

	conv_loss��>���*        )��P	���숙�A�*

	conv_loss���>�/        )��P	�=�숙�A�*

	conv_loss���>
�D�        )��P	�{�숙�A�*

	conv_loss"�>4�A�        )��P	h��숙�A�*

	conv_lossH�>�7��        )��P	g��숙�A�*

	conv_loss���>���        )��P	�6�숙�A�*

	conv_loss%��>�Ek�        )��P	u�숙�A�*

	conv_loss���>C�.        )��P	&��숙�A�*

	conv_losse��>�ȳT        )��P	��숙�A�*

	conv_loss�+�>�u��        )��P	9-�숙�A�*

	conv_loss��>�Vy�        )��P	kj�숙�A�*

	conv_lossdC�>�w��        )��P	G��숙�A�*

	conv_loss�d�>���        )��P	(��숙�A�*

	conv_lossc�>x ��        )��P	%�숙�A�*

	conv_loss�[�><:NK        )��P	�b�숙�A�*

	conv_loss���>��K�        )��P	ݟ�숙�A�*

	conv_loss5��>AHe�        )��P	���숙�A�*

	conv_loss� �>;��z        )��P	��숙�A�*

	conv_loss07�>S�pt        )��P	�Y�숙�A�*

	conv_loss-J�>J��O        )��P	���숙�A�*

	conv_loss~�>��        )��P	��숙�A�*

	conv_loss��>����        )��P	u�숙�A�*

	conv_loss���>3�Y        )��P	.P�숙�A�*

	conv_losse��>7���        )��P	���숙�A�*

	conv_loss��>��P�        )��P	u��숙�A�*

	conv_loss���>�I]�        )��P	��숙�A�*

	conv_loss��>�� E        )��P	zU�숙�A�*

	conv_lossH��>T��        )��P	a��숙�A�*

	conv_loss�}�>�_�        )��P	W��숙�A�*

	conv_loss���>_D��        )��P	S"�숙�A�*

	conv_loss=��>{G&z        )��P	e�숙�A�*

	conv_loss���>����        )��P	���숙�A�*

	conv_loss�Y�>4���        )��P	��숙�A�*

	conv_loss��>����        )��P	�>�숙�A�*

	conv_lossz�>�8o�        )��P	�~�숙�A�*

	conv_loss7i�>ʶ;�        )��P	���숙�A�*

	conv_loss���>�D�d        )��P	�
�숙�A�*

	conv_losse�>��        )��P	�I�숙�A�*

	conv_loss���>��        )��P	9��숙�A�*

	conv_loss��>ki.�        )��P	��숙�A�*

	conv_loss���>!���        )��P	T�숙�A�*

	conv_lossj�>�;�        )��P	�G�숙�A�*

	conv_loss��>�f7        )��P	h��숙�A�*

	conv_losscV�>5I��        )��P	���숙�A�*

	conv_lossA^�>^J�        )��P	��숙�A�*

	conv_lossҪ�>�r�        )��P	�E�숙�A�*

	conv_loss u�> 9\        )��P	���숙�A�*

	conv_loss��>1W`-        )��P	��숙�A�*

	conv_loss�8�>�Ī        )��P	p��숙�A�*

	conv_loss��>R2�        )��P	�<�숙�A�*

	conv_loss���>;5��        )��P	6{�숙�A�*

	conv_lossDn�>N���        )��P	r��숙�A�*

	conv_loss-��>�!C        )��P	���숙�A�*

	conv_loss�Z�>�:��        )��P	y5�숙�A�*

	conv_loss�K�>��/        )��P	�r�숙�A�*

	conv_loss��>���M        )��P	���숙�A�*

	conv_loss���>�&9         )��P	���숙�A�*

	conv_loss���>0�N        )��P	�-�숙�A�*

	conv_loss^�>�G�        )��P	�m�숙�A�*

	conv_loss��>�S�c        )��P	,��숙�A�*

	conv_loss���>�r��        )��P	���숙�A�*

	conv_lossE��>f��
        )��P	F*�숙�A�*

	conv_loss���>s�"O        )��P	�i�숙�A�*

	conv_loss�[�>��-1        )��P	���숙�A�*

	conv_loss�	�>g��+        )��P	1��숙�A�*

	conv_loss���>i_4        )��P	�#�숙�A�*

	conv_loss���>��B        )��P	�a�숙�A�*

	conv_loss*%�>��*K        )��P	���숙�A�*

	conv_loss�P�>�h�        )��P	~��숙�A�*

	conv_loss,��>нr�        )��P	% 툙�A�*

	conv_loss�>�lC        )��P	SV 툙�A�*

	conv_loss.�>��_        )��P	�� 툙�A�*

	conv_loss;��>�e        )��P	Y� 툙�A�*

	conv_loss�W�>��s        )��P	툙�A�*

	conv_loss9!�>5��1        )��P	FL툙�A�*

	conv_loss��>NT�5        )��P	��툙�A�*

	conv_loss�3�>�'d�        )��P	��툙�A�*

	conv_loss�i�>��p�        )��P	$툙�A�*

	conv_loss��>�ģ�        )��P	OV툙�A�*

	conv_loss �>@��        )��P	]�툙�A�*

	conv_loss��>pk\�        )��P	��툙�A�*

	conv_loss9��>-E�4        )��P	"툙�A�*

	conv_lossK��>����        )��P	�h툙�A�*

	conv_lossو�>�s        )��P	$�툙�A�*

	conv_lossr�>�ʱ        )��P	�툙�A�*

	conv_loss���>z��        )��P	15툙�A�*

	conv_lossE�>pt��        )��P	�q툙�A�*

	conv_loss|��>I�`        )��P	��툙�A�*

	conv_loss7�>r}�        )��P	��툙�A�*

	conv_lossq�>,Y�        )��P	�,툙�A�*

	conv_lossJ��>]��        )��P	�j툙�A�*

	conv_lossQ/�>V�dX        )��P	��툙�A�*

	conv_loss�?�>\��        )��P	(�툙�A�*

	conv_lossǢ�>��"Y        )��P	�5툙�A�*

	conv_loss%��>��         )��P	�r툙�A�*

	conv_lossG��>��m        )��P	��툙�A�*

	conv_loss���>ƴW        )��P	��툙�A�*

	conv_loss���>)�v�        )��P	�,툙�A�*

	conv_loss8��>x�'        )��P	�i툙�A�*

	conv_loss��>˲,        )��P	��툙�A�*

	conv_loss��>"o        )��P	r�툙�A�*

	conv_loss��>��u        )��P	"툙�A�*

	conv_loss��>�@Q�        )��P	)`툙�A�*

	conv_lossU��>.C��        )��P	�툙�A�*

	conv_loss���>#�u�        )��P	��툙�A�*

	conv_loss�;�>�3        )��P	�	툙�A�*

	conv_loss��>�.�        )��P	cV	툙�A�*

	conv_lossY2�>¢{�        )��P	 �	툙�A�*

	conv_lossY�>��~        )��P	��	툙�A�*

	conv_loss�h�>�ֽ        )��P	A
툙�A�*

	conv_loss;U�>B���        )��P	�M
툙�A�*

	conv_lossQN�>�<�        )��P	?�
툙�A�*

	conv_lossXh�>L�}�        )��P	1�
툙�A�*

	conv_loss^H�>9[[F        )��P	툙�A�*

	conv_lossc�>��9/        )��P	�C툙�A�*

	conv_lossI��>�{F�        )��P	��툙�A�*

	conv_loss��>��Q�        )��P	�툙�A�*

	conv_lossw��>�R1�        )��P	��툙�A�*

	conv_loss���>aW![        )��P	�;툙�A�*

	conv_loss�>UL3        )��P	z툙�A�*

	conv_loss�n�>T��        )��P	��툙�A�*

	conv_lossvJ�>o���        )��P	p�툙�A�*

	conv_loss��>�G�        )��P	;K툙�A�*

	conv_lossw��>z2\u        )��P	�툙�A�*

	conv_loss�>�yA�        )��P	/�툙�A�*

	conv_loss�!�>�x        )��P	�툙�A�*

	conv_loss\�>�lݵ        )��P	�M툙�A�*

	conv_loss�D�>=���        )��P	ؠ툙�A�*

	conv_loss��>�U�        )��P	s�툙�A�*

	conv_loss���>�f&j        )��P	�툙�A�*

	conv_loss���>����        )��P	�_툙�A�*

	conv_loss��>C�7�        )��P	S�툙�A�*

	conv_loss� �>o�k        )��P	��툙�A�*

	conv_lossS�>wYZ�        )��P	5툙�A�*

	conv_loss	U�>iNÉ        )��P	(|툙�A�*

	conv_loss�#�>��ڔ        )��P	2�툙�A�*

	conv_loss�T�>��4        )��P	T�툙�A�*

	conv_loss~��>����        )��P	�:툙�A�*

	conv_lossN��>U��        )��P	ׄ툙�A�*

	conv_loss��>a���        )��P	��툙�A�*

	conv_loss�o�>Ȼ��        )��P	��툙�A�*

	conv_lossî�>�ɭ�        )��P	�B툙�A�*

	conv_loss�)�>N��K        )��P	��툙�A�*

	conv_loss��>Ҫ�'        )��P	�툙�A�*

	conv_loss�8�>ϱ C        )��P	�툙�A�*

	conv_loss+��>g|�?        )��P	�>툙�A�*

	conv_lossI:�>�	X        )��P	r|툙�A�*

	conv_lossX5�>�&�|        )��P	:�툙�A�*

	conv_loss� �>l7֗        )��P	�툙�A�*

	conv_loss��>:?��        )��P	*5툙�A�*

	conv_loss�;�>I\M        )��P	�r툙�A�*

	conv_loss�@�>��J�        )��P	=�툙�A�*

	conv_loss�y�>�0Q/        )��P	&�툙�A�*

	conv_loss���>S�	�        )��P	>/툙�A�*

	conv_loss��>�/�&        )��P	�m툙�A�*

	conv_loss��>+��m        )��P	<�툙�A�*

	conv_loss��>�O�        )��P	j�툙�A�*

	conv_loss6=�>{#p        )��P	�%툙�A�*

	conv_loss���>rf]�        )��P	�c툙�A�*

	conv_loss���>4�v4        )��P	r�툙�A�*

	conv_loss���>F�s5        )��P	�툙�A�*

	conv_loss"��>��o�        )��P	o툙�A�*

	conv_loss���>Wd�k        )��P	x[툙�A�*

	conv_loss��>tꢊ        )��P	��툙�A�*

	conv_loss���>��m*        )��P	#�툙�A�*

	conv_loss#�>;}        )��P	m툙�A�*

	conv_loss���>��=�        )��P	{R툙�A�*

	conv_loss-i�>��V�        )��P	|�툙�A�*

	conv_lossK�>h�S        )��P	/�툙�A�*

	conv_loss
��>I�C�        )��P	툙�A�*

	conv_lossǄ�>O��=        )��P	J툙�A�*

	conv_loss�I�>�s�        )��P	��툙�A�*

	conv_loss(��>���        )��P	�툙�A�*

	conv_loss���>�h�        )��P	2툙�A�*

	conv_loss{�>���l        )��P	�A툙�A�*

	conv_loss�%�>�m�8        )��P	�툙�A�*

	conv_lossB�>$��        )��P	�툙�A�*

	conv_loss�\�>��        )��P	��툙�A�*

	conv_loss5+�>���        )��P	�툙�A�*

	conv_loss�N�>|        )��P	[O툙�A�*

	conv_loss��>&���        )��P	2�툙�A�*

	conv_loss��>�}eo        )��P	��툙�A�*

	conv_loss�c�>m�	        )��P	�툙�A�*

	conv_loss�s�>q�y        )��P	9f툙�A�*

	conv_lossz(�>���        )��P	��툙�A�*

	conv_loss��>�h�T        )��P	�툙�A�*

	conv_lossl^�>g�9�        )��P	�E툙�A�*

	conv_lossZ��>�]�        )��P	3�툙�A�*

	conv_lossD/�>�t�        )��P	��툙�A�*

	conv_loss(ӿ>
���        )��P	  툙�A�*

	conv_loss���>�N        )��P	H@ 툙�A�*

	conv_loss f�>�u�        )��P	d} 툙�A�*

	conv_lossaP�>�0��        )��P	Ǹ 툙�A�*

	conv_loss��>|c��        )��P	�� 툙�A�*

	conv_loss� �>���        )��P	�4!툙�A�*

	conv_loss�_�>-�]�        )��P	�r!툙�A�*

	conv_loss��>xW�        )��P	P�!툙�A�*

	conv_lossS��>g��U        )��P	�!툙�A�*

	conv_loss|��>,        )��P	l+"툙�A�*

	conv_lossS4�>��L        )��P	�h"툙�A�*

	conv_loss�U�>	��N        )��P	I�"툙�A�*

	conv_loss*�>8yk        )��P	f�"툙�A�*

	conv_lossz&�>��        )��P	9!#툙�A�*

	conv_loss���>UN��        )��P	L_#툙�A�*

	conv_loss��>���        )��P	�#툙�A�*

	conv_loss�0�>�1        )��P	S�#툙�A�*

	conv_loss�$�>�c�        )��P	�$툙�A�*

	conv_loss�3�>�]V"        )��P	>X$툙�A�*

	conv_loss�t�>E/"@        )��P	q�$툙�A�*

	conv_loss�&�>�u �        )��P	��$툙�A�*

	conv_loss@l�>�(}}        )��P	%툙�A�*

	conv_loss'J�>��        )��P	<O%툙�A�*

	conv_lossa��>�Vv        )��P	��%툙�A�*

	conv_loss��>���        )��P	f�%툙�A�*

	conv_loss���>�xM        )��P	v&툙�A�*

	conv_loss��>̾z�        )��P	9E&툙�A�*

	conv_lossH7�>a�        )��P	S�&툙�A�*

	conv_loss���>�d�	        )��P	��&툙�A�*

	conv_loss�t�>"b        )��P	��&툙�A�*

	conv_loss���>��}�        )��P	='툙�A�*

	conv_loss/��>6y\        )��P	�{'툙�A�*

	conv_loss=��>*�e        )��P	�'툙�A�*

	conv_loss� �>M�B�        )��P	0�'툙�A�*

	conv_loss�5�>^�        )��P	5(툙�A�*

	conv_lossX�>(.�%        )��P	�r(툙�A�*

	conv_loss$��>B��        )��P	#�(툙�A�*

	conv_loss��>i2        )��P	w�(툙�A�*

	conv_loss�>(.�        )��P	(A)툙�A�*

	conv_lossٿ�><eH*        )��P	�~)툙�A�*

	conv_loss9�>{��        )��P	l�)툙�A�*

	conv_loss�$�>��H        )��P	e *툙�A�*

	conv_loss�b�>�g�U        )��P	I*툙�A�*

	conv_loss2�>��y�        )��P	n�*툙�A�*

	conv_loss� �>~�\        )��P	��*툙�A�*

	conv_lossO��>�]�        )��P	�+툙�A�*

	conv_loss-��>�D��        )��P	zS+툙�A�*

	conv_lossG��>L���        )��P	a�+툙�A�*

	conv_lossω�>���        )��P	q�+툙�A�*

	conv_loss���>�;mY        )��P	�!,툙�A�*

	conv_loss��>K��l        )��P	�_,툙�A�*

	conv_lossȸ>�J�        )��P	2�,툙�A�*

	conv_loss0\�>��^        )��P	��,툙�A�*

	conv_loss� �>�}��        )��P	�-툙�A�*

	conv_loss�>����        )��P	�W-툙�A�*

	conv_loss켼>��L        )��P	��-툙�A�*

	conv_loss�n�>m�        )��P	��-툙�A�*

	conv_loss	�>Fcr        )��P	�.툙�A�*

	conv_loss!C�>P��F        )��P	�N.툙�A�*

	conv_loss*X�>���        )��P	��.툙�A�*

	conv_loss�ڿ>,��        )��P	J�.툙�A�*

	conv_lossb�><�ث        )��P	W/툙�A�*

	conv_loss�ϼ>��]-        )��P	�D/툙�A�*

	conv_loss���>A&        )��P	΂/툙�A�*

	conv_loss&��>D �3        )��P	B�/툙�A�*

	conv_loss 6�>��40        )��P	��/툙�A�*

	conv_loss� �>�P!`        )��P	H?0툙�A�*

	conv_loss�̸>�D�        )��P	m~0툙�A�*

	conv_loss��>ʚ��        )��P	�0툙�A�*

	conv_loss���>㸽�        )��P	/�0툙�A�*

	conv_losszW�>�J�6        )��P	4:1툙�A�*

	conv_loss��>/R��        )��P	!w1툙�A�*

	conv_lossv�>��;�        )��P	2�1툙�A�*

	conv_loss��>��        )��P	W�1툙�A�*

	conv_loss���>	ۙ        )��P	c02툙�A�*

	conv_loss\�>{/\        )��P	�n2툙�A�*

	conv_loss���>I�W        )��P	Ϋ2툙�A�*

	conv_loss냻>o�_j        )��P	��2툙�A�*

	conv_loss�>�RU�        )��P	l-3툙�A�*

	conv_loss_��>Ӹ�z        )��P	m3툙�A�*

	conv_loss֌�>p΄C        )��P	��3툙�A�*

	conv_loss�[�>��O�        )��P	��3툙�A�*

	conv_lossڽ>A��o        )��P	�-4툙�A�*

	conv_loss��>x���        )��P	�j4툙�A�*

	conv_loss�I�>�Οu        )��P	ק4툙�A�*

	conv_losslI�>�G��        )��P	��4툙�A�*

	conv_loss\��>�;W�        )��P	"5툙�A�*

	conv_loss��>%6��        )��P	k`5툙�A�*

	conv_lossC��>L�=        )��P	��5툙�A�*

	conv_lossޝ�>�<^�        )��P	��5툙�A�*

	conv_loss�׽>�ϫH        )��P	q=6툙�A�*

	conv_loss���>z0Q�        )��P	}6툙�A�*

	conv_lossgʳ>��x�        )��P	'�6툙�A�*

	conv_loss%��>r)�        )��P	c7툙�A�*

	conv_loss�#�>��~Q        )��P	�H7툙�A�*

	conv_loss���>��%        )��P	]�7툙�A�*

	conv_loss��>P16        )��P	��7툙�A�*

	conv_loss_�>�l)        )��P	b8툙�A�*

	conv_loss/x�>@b�6        )��P	�a8툙�A�*

	conv_loss=ո>~A�        )��P	!�8툙�A�*

	conv_loss;ո>�:�        )��P	�8툙�A�*

	conv_loss��>�f�        )��P	�9툙�A�*

	conv_loss*��>���        )��P	NZ9툙�A�*

	conv_loss�ڴ>��O        )��P	��9툙�A�*

	conv_loss��>�cl\        )��P	��9툙�A�*

	conv_loss4��>_�H        )��P	�:툙�A�*

	conv_lossv��>{�        )��P	�P:툙�A�*

	conv_lossO��>7��        )��P	W�:툙�A�*

	conv_loss,¹>3<�        )��P	�:툙�A�*

	conv_lossD��>\5�        )��P	�	;툙�A�*

	conv_loss��>zI��        )��P	�F;툙�A�*

	conv_loss�p�>�:�        )��P	n�;툙�A�*

	conv_losse�>��C7        )��P	��;툙�A�*

	conv_loss�^�>�RRZ        )��P	<툙�A�*

	conv_loss���>O��        )��P	�><툙�A�*

	conv_loss��>��i�        )��P	�}<툙�A�*

	conv_loss�&�>s^z\        )��P	��<툙�A�*

	conv_loss簷>��b�        )��P	��<툙�A�*

	conv_loss��>0K        )��P	�7=툙�A�*

	conv_loss��>��[o        )��P	�u=툙�A�*

	conv_loss�a�>���        )��P	��=툙�A�*

	conv_loss*�>�vF        )��P	��=툙�A�*

	conv_lossbò>��j�        )��P	�3>툙�A�*

	conv_loss���>��_�        )��P	�o>툙�A�*

	conv_loss��>��o�        )��P	1�>툙�A�*

	conv_loss�ǳ>��E�        )��P	��>툙�A�*

	conv_loss� �>�e�        )��P	)?툙�A�*

	conv_loss�P�>a�ܮ        )��P	�i?툙�A�*

	conv_loss�E�>�Nv�        )��P	�?툙�A�*

	conv_loss���>��&�        )��P	��?툙�A�*

	conv_loss�L�>�"��        )��P	�#@툙�A�*

	conv_loss-�>����        )��P	Mc@툙�A�*

	conv_loss�+�>�K�        )��P	��@툙�A�*

	conv_lossй>�m�O        )��P	��@툙�A�*

	conv_loss`�>�sˏ        )��P	0A툙�A�*

	conv_loss|�>��!l        )��P	�]A툙�A�*

	conv_loss��>X�e)        )��P	o�A툙�A�*

	conv_loss}�>�}�        )��P	��A툙�A�*

	conv_loss���>H�        )��P	{+B툙�A�*

	conv_loss_�>��h        )��P	�wB툙�A�*

	conv_loss�W�>�s        )��P	S�B툙�A�*

	conv_loss ��>��*�        )��P	e�B툙�A�*

	conv_lossVb�>F��R        )��P	zGC툙�A�*

	conv_loss��>k�sq        )��P	(�C툙�A�*

	conv_lossN��>��q        )��P	��C툙�A�*

	conv_loss�C�>u��7        )��P		D툙�A�*

	conv_lossϬ�>D�)�        )��P	+ZD툙�A�*

	conv_lossS�>S��g        )��P	G�D툙�A�*

	conv_lossy��>��&�        )��P	g�D툙�A�*

	conv_loss��>��M        )��P	�-E툙�A�*

	conv_losso�>�O�        )��P	�mE툙�A�*

	conv_lossH��>���|        )��P	¬E툙�A�*

	conv_loss+а>���,        )��P	"�E툙�A�*

	conv_loss�)�>����        )��P	�-F툙�A�*

	conv_loss���>�]�        )��P	lmF툙�A�*

	conv_loss�>J+@�        )��P	��F툙�A�*

	conv_lossr޶>�>�X        )��P	��F툙�A�*

	conv_loss��>x��        )��P	�*G툙�A�*

	conv_lossP�>�P�        )��P	SjG툙�A�*

	conv_loss�E�>.O�        )��P	j�G툙�A�*

	conv_loss�B�>2Q�        )��P	��G툙�A�*

	conv_lossK��>�--E        )��P	}(H툙�A�*

	conv_loss�}�>so*�        )��P	�iH툙�A�*

	conv_loss/��>�{�        )��P	��H툙�A�*

	conv_loss~��>ئ5K        )��P	��H툙�A�*

	conv_lossaW�>�^X�        )��P	�'I툙�A�*

	conv_loss���>f%ˋ        )��P	�iI툙�A�*

	conv_loss�>�
u�        )��P	ǩI툙�A�*

	conv_loss��>��S�        )��P	�I툙�A�*

	conv_lossg�>��c        )��P	`)J툙�A�*

	conv_loss�/�>�'��        )��P	�iJ툙�A�*

	conv_loss_�>�x�         )��P	�J툙�A�*

	conv_loss�ů>ܙ�a        )��P	Z�J툙�A�*

	conv_loss�/�>Ff�        )��P	�)K툙�A�*

	conv_loss���>(>�Q        )��P	�gK툙�A�*

	conv_loss6��>��+        )��P	2�K툙�A�*

	conv_lossI�>,�!>        )��P	�K툙�A�*

	conv_lossQ��>�5{J        )��P	�$L툙�A�*

	conv_losst�>TAU        )��P	�dL툙�A�*

	conv_loss˵�>��$        )��P	[�L툙�A�*

	conv_loss�>kW=        )��P	L�L툙�A�*

	conv_loss���>�K�O        )��P	!M툙�A�*

	conv_loss��>w7�0        )��P	`M툙�A�*

	conv_lossi߰>�        )��P	��M툙�A�*

	conv_lossZ?�>0-Hi        )��P	��M툙�A�*

	conv_lossK'�>��I�        )��P	�N툙�A�*

	conv_loss�^�>"Cq�        )��P	�]N툙�A�*

	conv_loss�C�>@z�B        )��P	h�R툙�A�*

	conv_loss���>�"8�        )��P	��T툙�A�*

	conv_loss�0�>��>!        )��P	c'U툙�A�*

	conv_loss���>�2        )��P	�dU툙�A�*

	conv_loss��>E��        )��P	اU툙�A�*

	conv_loss�?�>��n�        )��P	|�U툙�A�*

	conv_lossِ�>�ٮ        )��P	4V툙�A�*

	conv_loss2��>�h&        )��P	�~V툙�A�*

	conv_loss؇�>��nW        )��P	m�V툙�A�*

	conv_losseܴ>:�$^        )��P	�W툙�A�*

	conv_loss�q�>-V        )��P	�BW툙�A�*

	conv_loss���>��#%        )��P	E�W툙�A�*

	conv_lossӪ�>�[        )��P	�W툙�A�*

	conv_loss���>y���        )��P	��W툙�A�*

	conv_loss�[�>�h΀        )��P	�8X툙�A�*

	conv_loss���>��s�        )��P	HuX툙�A�*

	conv_loss:5�> �oz        )��P	��X툙�A�*

	conv_loss�>�>�B��        )��P	��X툙�A�*

	conv_lossS�>�Q҇        )��P	v=Y툙�A�*

	conv_loss﷯>b�c        )��P	?zY툙�A�*

	conv_lossì�>��        )��P	�Y툙�A�*

	conv_lossvu�>�!��        )��P	�	Z툙�A�*

	conv_loss,0�>�y         )��P	�HZ툙�A�*

	conv_loss�r�>)�ծ        )��P	�Z툙�A�*

	conv_loss1ݰ>MTF        )��P	��Z툙�A�*

	conv_losso�>�`z�        )��P	�[툙�A�*

	conv_loss9��>�@a        )��P	�F[툙�A�*

	conv_loss�s�>�V�        )��P	�[툙�A�*

	conv_loss���>��U�        )��P	q�[툙�A�*

	conv_lossQ�>W��O        )��P	�\툙�A�*

	conv_loss���>����        )��P	YC\툙�A�*

	conv_loss���>�G        )��P	A�\툙�A�*

	conv_loss�E�>F�&�        )��P	��\툙�A�*

	conv_lossuߴ>���        )��P	�\툙�A�*

	conv_loss>�>L7��        )��P	(;]툙�A�*

	conv_loss�׮>��V�        )��P	�x]툙�A�*

	conv_loss��>��?�        )��P	��]툙�A�*

	conv_loss��>���        )��P	H�]툙�A�*

	conv_loss:��>Q�c�        )��P	\4^툙�A�*

	conv_lossf<�>�ry	        )��P	�q^툙�A�*

	conv_loss�x�>�یj        )��P	W�^툙�A�*

	conv_loss�>ҳ�        )��P	��^툙�A�*

	conv_loss��>"�c�        )��P	t'_툙�A�*

	conv_loss��>]Ԛ�        )��P	�e_툙�A�*

	conv_lossɩ>m���        )��P	ģ_툙�A�*

	conv_lossKJ�>��        )��P	��_툙�A�*

	conv_lossX�>	k        )��P	�`툙�A�*

	conv_loss7M�>��h#        )��P	�[`툙�A�*

	conv_loss���>�e �        )��P	�`툙�A�*

	conv_loss�P�>r3�d        )��P	G�`툙�A�*

	conv_loss�>^�s�        )��P	�a툙�A�*

	conv_loss���>5֊        )��P	�ha툙�A�*

	conv_loss)ū>4��        )��P	�a툙�A�*

	conv_loss�>s��w        )��P	��a툙�A�*

	conv_lossڻ�>I��        )��P	�&b툙�A�*

	conv_loss0n�>��M�        )��P	sb툙�A�*

	conv_loss
�>���!        )��P	.�b툙�A�*

	conv_loss�l�>���^        )��P	�c툙�A�*

	conv_loss/��>ǫ�	        )��P	&Dc툙�A�*

	conv_loss���>���        )��P	&�c툙�A�*

	conv_loss0D�>��J        )��P	��c툙�A�*

	conv_lossyn�>���        )��P	Id툙�A�*

	conv_loss/��>�P�        )��P	CMd툙�A�*

	conv_loss��>��Z�        )��P	��d툙�A�*

	conv_loss�/�>���        )��P	M�d툙�A�*

	conv_loss�"�>"6TU        )��P	�e툙�A�*

	conv_lossՑ�>��K        )��P	�Je툙�A�*

	conv_loss"��>l�<        )��P	D�e툙�A�*

	conv_lossѻ�>փb�        )��P	�e툙�A�*

	conv_loss�{�>�8$�        )��P	�f툙�A�*

	conv_loss���>�sʯ        )��P	{If툙�A�*

	conv_loss��>d�a�        )��P	
�f툙�A�*

	conv_loss�ѯ>��m5        )��P	��f툙�A�*

	conv_lossJ�>�\0�        )��P	_g툙�A�*

	conv_loss�f�>E��        )��P	G@g툙�A�*

	conv_lossE��>�A�        )��P	`}g툙�A�*

	conv_lossnì>z�J�        )��P	�g툙�A�*

	conv_loss�(�>֝5        )��P	��g툙�A�*

	conv_loss�I�>��6        )��P	=8h툙�A�*

	conv_lossv�>��w        )��P	hvh툙�A�*

	conv_lossn��>IT�?        )��P	L�h툙�A�*

	conv_loss�5�>y�v        )��P	��h툙�A�*

	conv_loss�>�'�G        )��P	�.i툙�A�*

	conv_loss�ɣ>�`P�        )��P	�ki툙�A�*

	conv_loss��>��o        )��P	��i툙�A�*

	conv_loss��>rS�        )��P	��i툙�A�*

	conv_lossv��>��{�        )��P	�&j툙�A�*

	conv_loss�Ǧ>C�[.        )��P	{dj툙�A�*

	conv_loss�u�>h�Y        )��P	)�j툙�A�*

	conv_losss��>cǡ        )��P		�j툙�A�*

	conv_loss ʣ>f*b        )��P	�k툙�A�*

	conv_losshͧ>i�>�        )��P	�Yk툙�A�*

	conv_loss!��>�I��        )��P	k�k툙�A�*

	conv_lossL��>���        )��P	|�k툙�A�*

	conv_loss���>�7iE        )��P	�l툙�A�*

	conv_lossZe�>z�        )��P	�Nl툙�A�*

	conv_loss��>��        )��P	�l툙�A�*

	conv_loss��>�3Ix        )��P	��l툙�A�*

	conv_lossG2�>�0(C        )��P	�m툙�A�*

	conv_loss*�>3L�n        )��P	Em툙�A�*

	conv_lossj��>J�a�        )��P	�m툙�A�*

	conv_loss�Y�>0�F        )��P	��m툙�A�*

	conv_loss�>��T        )��P	n툙�A�*

	conv_loss~�>B��        )��P	Mn툙�A�*

	conv_loss��>s�0\        )��P	��n툙�A�*

	conv_lossPY�>�]�        )��P	4�n툙�A�*

	conv_loss�9�>�a9        )��P	�o툙�A�*

	conv_lossz�>�{��        )��P	tgo툙�A�*

	conv_loss!��>�X�/        )��P	�o툙�A�*

	conv_lossX��>�"h�        )��P	z�o툙�A�*

	conv_loss⛫>�$m�        )��P	�:p툙�A�*

	conv_loss�Ω>����        )��P	xp툙�A�*

	conv_lossN��>3+�        )��P	�p툙�A�*

	conv_loss�Ѩ>����        )��P	J�p툙�A�*

	conv_loss>��>�p��        )��P	2q툙�A�*

	conv_loss��>u�F        )��P	�nq툙�A�*

	conv_loss!=�>3[�7        )��P	�q툙�A�*

	conv_lossË�>�G        )��P	��q툙�A�*

	conv_loss���>���        )��P	:2r툙�A�*

	conv_loss߻�>>,,=        )��P	,qr툙�A�*

	conv_loss��>���        )��P	��r툙�A�*

	conv_loss���>�8        )��P	��r툙�A�*

	conv_losseD�>�*�A        )��P	@+s툙�A�*

	conv_lossE��>i��        )��P	�hs툙�A�*

	conv_lossv�>W��f        )��P	e�s툙�A�*

	conv_loss���>ޓ7        )��P	Y�s툙�A�*

	conv_loss�+�>��        )��P	�t툙�A�*

	conv_loss��>��\_        )��P	+]t툙�A�*

	conv_loss���>���        )��P	�t툙�A�*

	conv_loss�4�>|�        )��P	��t툙�A�*

	conv_loss�C�>p���        )��P	u툙�A�*

	conv_loss³�>�O�I        )��P	�Su툙�A�*

	conv_loss���>����        )��P	a�u툙�A�*

	conv_lossnG�>1EZ�        )��P	f�u툙�A�*

	conv_lossƙ�>J��        )��P	�v툙�A�*

	conv_loss�|�>r�y�        )��P	VOv툙�A�*

	conv_lossz�>
�p�        )��P	��v툙�A�*

	conv_lossl�>���        )��P	��v툙�A�*

	conv_lossR�>�1>        )��P	iw툙�A�*

	conv_lossl�>�1��        )��P	hEw툙�A�*

	conv_loss��>�
��        )��P	!�w툙�A�*

	conv_lossQϥ>�]B        )��P	��w툙�A�*

	conv_lossj �>�Uow        )��P	��w툙�A�*

	conv_loss�>"pP        )��P	=x툙�A�*

	conv_lossէ�>:܃        )��P	�zx툙�A�*

	conv_loss�`�>��        )��P	�x툙�A�*

	conv_loss{W�>�j�$        )��P	n�x툙�A�*

	conv_loss��>5�hQ        )��P	-3y툙�A�*

	conv_loss>��_R        )��P	Fqy툙�A�*

	conv_loss�d�> ���        )��P	H�y툙�A�*

	conv_loss�Ǡ>��ۀ        )��P	��y툙�A�*

	conv_lossfԤ>��        )��P	n?z툙�A�*

	conv_loss���>���        )��P	o}z툙�A�	*

	conv_losseW�>�͋�        )��P	��z툙�A�	*

	conv_loss�K�>֋��        )��P	 �z툙�A�	*

	conv_loss���>4ǁ�        )��P		I{툙�A�	*

	conv_loss̣>�t        )��P	ʆ{툙�A�	*

	conv_loss�,�>B���        )��P	w�{툙�A�	*

	conv_loss�>>��        )��P	^|툙�A�	*

	conv_lossR'�>���        )��P	�^|툙�A�	*

	conv_loss�Y�>���        )��P	u�|툙�A�	*

	conv_loss�C�>�7�A        )��P	,�|툙�A�	*

	conv_loss�ޠ>窶�        )��P	J}툙�A�	*

	conv_loss�v�>�y��        )��P	�^}툙�A�	*

	conv_lossU��>Q���        )��P	4�}툙�A�	*

	conv_loss�{�>�M        )��P	��}툙�A�	*

	conv_loss(؟>*v?k        )��P	�~툙�A�	*

	conv_loss�&�>�I��        )��P	R~툙�A�	*

	conv_loss���>;�q        )��P	|�~툙�A�	*

	conv_loss��>���*        )��P	��~툙�A�	*

	conv_loss�L�>Ȫ�[        )��P	�툙�A�	*

	conv_losss��>���        )��P	�V툙�A�	*

	conv_lossuC�>�&��        )��P	^�툙�A�	*

	conv_loss�R�>��        )��P	��툙�A�	*

	conv_losss�>	��        )��P	�툙�A�	*

	conv_loss�;�>"Ǭ        )��P	`�툙�A�	*

	conv_loss�Z�>$�e�        )��P		��툙�A�	*

	conv_loss׼�>MU,        )��P	�ۀ툙�A�	*

	conv_loss��>q��`        )��P	��툙�A�	*

	conv_loss��>�D�        )��P	Ma�툙�A�	*

	conv_loss�*�>����        )��P	.��툙�A�	*

	conv_loss�Ǚ>���        )��P	d߁툙�A�	*

	conv_loss��>OI-8        )��P	Y�툙�A�	*

	conv_lossN��>ݱ��        )��P	�[�툙�A�	*

	conv_loss(ĕ>3��        )��P	ә�툙�A�	*

	conv_loss��>�m        )��P	�ׂ툙�A�	*

	conv_loss)�>�ǻ�        )��P	��툙�A�	*

	conv_lossQ��>�Y�        )��P	�T�툙�A�	*

	conv_loss�֢>�	�x        )��P	���툙�A�	*

	conv_loss�i�>����        )��P	�σ툙�A�	*

	conv_loss0�>�ƪ�        )��P	Y�툙�A�	*

	conv_lossj�>��+�        )��P	K�툙�A�	*

	conv_loss��>{R�        )��P	���툙�A�	*

	conv_loss��>L�        )��P	�Ƅ툙�A�	*

	conv_lossͪ�>�dT�        )��P	��툙�A�	*

	conv_loss=�>�s[        )��P	IA�툙�A�	*

	conv_lossQ�>���        )��P	
��툙�A�	*

	conv_loss���>�Vfx        )��P	d��툙�A�	*

	conv_loss�W�>��	        )��P	F��툙�A�	*

	conv_lossB��>��o�        )��P	19�툙�A�	*

	conv_loss<�>Ϫ�        )��P	Lw�툙�A�	*

	conv_loss�Ӝ>},�        )��P	���툙�A�	*

	conv_lossV��>%�Q        )��P	pň툙�A�	*

	conv_losss �>��Ƶ        )��P	��툙�A�	*

	conv_lossTk�>_��        )��P	{H�툙�A�	*

	conv_loss_�>�]$E        )��P	���툙�A�	*

	conv_loss�6�>���        )��P	�Ӊ툙�A�	*

	conv_losse^�>smI        )��P	:�툙�A�	*

	conv_loss���>�v�=        )��P	Y\�툙�A�	*

	conv_loss�H�>*�b        )��P	���툙�A�	*

	conv_loss2��>�@k;        )��P	�ߊ툙�A�	*

	conv_loss���>Gl�6        )��P	�'�툙�A�	*

	conv_loss��>�mX�        )��P	k�툙�A�	*

	conv_lossP"�>A8�        )��P	���툙�A�	*

	conv_lossG`�>��+�        )��P	�툙�A�	*

	conv_lossH/�>���        )��P	�(�툙�A�	*

	conv_loss��>,��        )��P	:f�툙�A�	*

	conv_lossX�>���7        )��P	f��툙�A�	*

	conv_loss�T�>C�K�        )��P	l�툙�A�	*

	conv_loss�B�>b���        )��P	]#�툙�A�	*

	conv_loss��>I%m�        )��P	a�툙�A�	*

	conv_lossQ��>R�g`        )��P	���툙�A�	*

	conv_loss�>��        )��P	�툙�A�	*

	conv_lossXޙ>��a�        )��P	�,�툙�A�	*

	conv_loss�_�>���q        )��P	�j�툙�A�	*

	conv_loss��>�~ߥ        )��P	@��툙�A�	*

	conv_loss�͠>�#&p        )��P	��툙�A�	*

	conv_loss�ԝ>*�J        )��P	M&�툙�A�	*

	conv_loss-,�>#��        )��P	�d�툙�A�	*

	conv_loss]��>�}��        )��P	
��툙�A�	*

	conv_loss;�>���d        )��P	��툙�A�	*

	conv_lossL�>�� �        )��P	�"�툙�A�	*

	conv_lossn[�>/yȖ        )��P	Vd�툙�A�	*

	conv_loss�A�>'�x&        )��P	⤐툙�A�	*

	conv_lossw��>��QI        )��P	��툙�A�	*

	conv_loss�כ>��2�        )��P	�$�툙�A�	*

	conv_loss�k�>���        )��P	�d�툙�A�	*

	conv_loss;H�>� G�        )��P	ꢑ툙�A�	*

	conv_loss��>7ⵙ        )��P	��툙�A�	*

	conv_loss���>�ڋ�        )��P	b!�툙�A�	*

	conv_loss��>])�        )��P	�a�툙�A�	*

	conv_loss�=�>��C�        )��P	|��툙�A�	*

	conv_loss���>�#��        )��P	��툙�A�	*

	conv_loss�f�>�2HJ        )��P	�#�툙�A�	*

	conv_lossæ�>�N��        )��P	Md�툙�A�	*

	conv_lossy��>g��3        )��P	Ѣ�툙�A�	*

	conv_loss@��>U��5        )��P	i�툙�A�	*

	conv_loss.�>���(        )��P	'#�툙�A�	*

	conv_loss� �>�g��        )��P	c�툙�A�	*

	conv_loss>2�>���        )��P	k��툙�A�	*

	conv_lossji�>P���        )��P	��툙�A�	*

	conv_lossHI�>e3��        )��P	�3�툙�A�	*

	conv_loss�]�>#4�        )��P	�s�툙�A�	*

	conv_losss=�>�pC        )��P	貕툙�A�	*

	conv_lossJȘ>Vp�        )��P	K��툙�A�	*

	conv_loss���>�^        )��P	(8�툙�A�	*

	conv_lossl��>�{�T        )��P	�y�툙�A�	*

	conv_lossG�>�]�/        )��P	Ö툙�A�	*

	conv_loss�<�>���        )��P	��툙�A�	*

	conv_loss��>F�        )��P	HM�툙�A�	*

	conv_loss���>��,4        )��P	ύ�툙�A�	*

	conv_lossM1�>����        )��P	ӗ툙�A�	*

	conv_loss�&�>�8�%        )��P	v�툙�A�	*

	conv_loss�>"���        )��P	�]�툙�A�	*

	conv_loss��>�Dp�        )��P	ߝ�툙�A�	*

	conv_loss�[�>"�        )��P	3ܘ툙�A�	*

	conv_loss�ޠ>����        )��P	 �툙�A�	*

	conv_lossq>@��        )��P	>^�툙�A�	*

	conv_loss�؛>�$�b        )��P	���툙�A�	*

	conv_lossP�>�s�        )��P	�ۙ툙�A�	*

	conv_lossJ�>�͑        )��P	E�툙�A�	*

	conv_loss���>�\+        )��P	�]�툙�A�	*

	conv_lossJ�>�        )��P	���툙�A�	*

	conv_loss��>t�2�        )��P	�ۚ툙�A�	*

	conv_loss��>IMi�        )��P	y�툙�A�	*

	conv_loss�V�>��Nz        )��P	�X�툙�A�	*

	conv_loss���>�\D        )��P	痛툙�A�	*

	conv_loss��>@"�        )��P	w؛툙�A�	*

	conv_lossD��>�l��        )��P	.�툙�A�	*

	conv_loss_ʝ>�}�        )��P	�X�툙�A�	*

	conv_loss�4�>U{��        )��P	g��툙�A�
*

	conv_lossT��>���z        )��P	�ٜ툙�A�
*

	conv_lossXN�>�g�R        )��P	g�툙�A�
*

	conv_loss��>.�1        )��P	�U�툙�A�
*

	conv_loss0�>��5        )��P	͔�툙�A�
*

	conv_loss�K�>z�        )��P	�ԝ툙�A�
*

	conv_loss��><J�        )��P	\�툙�A�
*

	conv_loss L�>$���        )��P	�Q�툙�A�
*

	conv_loss!ט>��        )��P	��툙�A�
*

	conv_loss)�>@�        )��P	0О툙�A�
*

	conv_loss=|�>�|�        )��P	�툙�A�
*

	conv_loss���>�H��        )��P	�N�툙�A�
*

	conv_loss�K�>�Ж/        )��P	���툙�A�
*

	conv_loss��>�RS�        )��P	W͟툙�A�
*

	conv_loss�R�>R��        )��P	t�툙�A�
*

	conv_losshɝ>�߾�        )��P	�K�툙�A�
*

	conv_loss�'�>s�N�        )��P	���툙�A�
*

	conv_loss���>���L        )��P	�ˠ툙�A�
*

	conv_loss��>\�'~        )��P	@�툙�A�
*

	conv_loss�9�>�v        )��P	mK�툙�A�
*

	conv_loss���>f5��        )��P	E��툙�A�
*

	conv_loss/��>�1M        )��P	�ݡ툙�A�
*

	conv_lossǸ�>a�1�        )��P	]�툙�A�
*

	conv_lossBh�>�A�        )��P	y[�툙�A�
*

	conv_loss�.�>�.�>        )��P	Ǡ�툙�A�
*

	conv_loss�\�>+�2�        )��P	�툙�A�
*

	conv_loss��>���        )��P	�!�툙�A�
*

	conv_loss4�>�v��        )��P	�m�툙�A�
*

	conv_loss�ђ>���        )��P	���툙�A�
*

	conv_lossі>�JMT        )��P	��툙�A�
*

	conv_loss��>���        )��P	Q3�툙�A�
*

	conv_loss�%�>[e        )��P	́�툙�A�
*

	conv_loss���>˭�Z        )��P	%Ƥ툙�A�
*

	conv_loss��>J,�        )��P	o�툙�A�
*

	conv_lossHT�>v��(        )��P	&F�툙�A�
*

	conv_loss��>����        )��P	녥툙�A�
*

	conv_loss��>�S�        )��P	�ĥ툙�A�
*

	conv_loss埖>�f��        )��P	I�툙�A�
*

	conv_loss���>�#`�        )��P	wC�툙�A�
*

	conv_loss���>\@5�        )��P	ʉ�툙�A�
*

	conv_loss�>��rh        )��P	�Ϧ툙�A�
*

	conv_loss�ב>g���        )��P	��툙�A�
*

	conv_loss���>1�*        )��P	_T�툙�A�
*

	conv_loss���>�P�        )��P	���툙�A�
*

	conv_loss��>*қ        )��P	eߧ툙�A�
*

	conv_loss��>ן�        )��P	��툙�A�
*

	conv_loss��>���        )��P	\]�툙�A�
*

	conv_lossN̔>���(        )��P	T��툙�A�
*

	conv_loss쓚>,-�2        )��P	�ۨ툙�A�
*

	conv_loss4Н>���K        )��P	d�툙�A�
*

	conv_lossJ��>�;b�        )��P	@\�툙�A�
*

	conv_lossj[�>a�ܖ        )��P	���툙�A�
*

	conv_loss'\�>���        )��P	۩툙�A�
*

	conv_loss��>T?jg        )��P	��툙�A�
*

	conv_loss�Ҙ>$�kd        )��P	�Y�툙�A�
*

	conv_loss�u�>D�a        )��P	���툙�A�
*

	conv_lossAq�>�V�        )��P	Bת툙�A�
*

	conv_loss!��>J9B�        )��P	G�툙�A�
*

	conv_loss���>���        )��P	�V�툙�A�
*

	conv_loss�͕>��"/        )��P	�툙�A�
*

	conv_loss0�>�p        )��P	�ի툙�A�
*

	conv_lossį�>숦�        )��P	��툙�A�
*

	conv_lossZp�>K`        )��P	]T�툙�A�
*

	conv_loss$(�>R�K�        )��P	>��툙�A�
*

	conv_lossN�>y�$f        )��P	�Ѭ툙�A�
*

	conv_lossý�>/�`        )��P	��툙�A�
*

	conv_lossI�>dַ        )��P	=R�툙�A�
*

	conv_loss���>Z�k�        )��P	�툙�A�
*

	conv_loss��>�:|�        )��P	�ѭ툙�A�
*

	conv_loss.��>m        )��P	��툙�A�
*

	conv_loss&�>�Fa        )��P	�P�툙�A�
*

	conv_lossw��>�m�        )��P	P��툙�A�
*

	conv_loss��>f#t�        )��P	��툙�A�
*

	conv_loss�r�>x!x        )��P	=&�툙�A�
*

	conv_loss@�>�Ty=        )��P	i�툙�A�
*

	conv_loss�7�>�K��        )��P	G��툙�A�
*

	conv_lossE�>���        )��P	��툙�A�
*

	conv_loss���>�[|�        )��P	�6�툙�A�
*

	conv_loss��>����        )��P	(z�툙�A�
*

	conv_loss���>�
��        )��P	A̰툙�A�
*

	conv_loss�>p\�        )��P	/�툙�A�
*

	conv_loss:�>�M��        )��P	yY�툙�A�
*

	conv_loss�3�>�-�        )��P	���툙�A�
*

	conv_loss�O�>Y        )��P	9ڱ툙�A�
*

	conv_loss���>C��        )��P	��툙�A�
*

	conv_loss&5�>��?        )��P	7Y�툙�A�
*

	conv_lossw��>��4        )��P	3��툙�A�
*

	conv_loss��>f�        )��P	vֲ툙�A�
*

	conv_loss}I�>���l        )��P	��툙�A�
*

	conv_loss���>(�        )��P	�W�툙�A�
*

	conv_loss��>dJ��        )��P	���툙�A�
*

	conv_loss��>TS�b        )��P	lԳ툙�A�
*

	conv_loss��>���        )��P	��툙�A�
*

	conv_loss޸�>��j�        )��P	�S�툙�A�
*

	conv_lossS��>���        )��P	���툙�A�
*

	conv_losst�>
�#{        )��P	KҴ툙�A�
*

	conv_loss�>mr{D        )��P	A�툙�A�
*

	conv_loss�>�Vɯ        )��P	�Q�툙�A�
*

	conv_loss�N�>A�9        )��P	���툙�A�
*

	conv_loss�ǐ>U��        )��P	�ѵ툙�A�
*

	conv_loss�n�>}7o        )��P	��툙�A�
*

	conv_lossoe�>H�H�        )��P	}N�툙�A�
*

	conv_loss ݒ>��/        )��P	C��툙�A�
*

	conv_loss/ڍ>��        )��P	�Ͷ툙�A�
*

	conv_loss�a�>�>�        )��P	7�툙�A�
*

	conv_lossW?�>��k�        )��P	�M�툙�A�
*

	conv_loss���>B�ym        )��P	���툙�A�
*

	conv_loss�y�>�iU�        )��P	1˷툙�A�
*

	conv_loss��>����        )��P	m
�툙�A�
*

	conv_lossvĔ>us5�        )��P	�I�툙�A�
*

	conv_loss�*�>��|        )��P	���툙�A�
*

	conv_loss,ӕ>m�ɻ        )��P	�Ǹ툙�A�
*

	conv_loss�?�>i.b        )��P	��툙�A�
*

	conv_loss�E�>Q+�        )��P	�D�툙�A�
*

	conv_loss�ɏ>���        )��P	k��툙�A�
*

	conv_lossa�>�_{N        )��P	tù툙�A�
*

	conv_loss��>���        )��P	N�툙�A�
*

	conv_loss���>=��        )��P	�@�툙�A�
*

	conv_loss�9�>���        )��P	-��툙�A�
*

	conv_lossB�>w���        )��P	��툙�A�
*

	conv_loss|�>h��        )��P	� �툙�A�
*

	conv_loss�>xY        )��P	6�툙�A�
*

	conv_loss�đ>�0�        )��P	�T�툙�A�
*

	conv_loss�y�>���T        )��P	H��툙�A�
*

	conv_loss�~�>�z�{        )��P	�ֽ툙�A�
*

	conv_lossOd�>(ؽ�        )��P	��툙�A�
*

	conv_loss"�>����        )��P	�\�툙�A�
*

	conv_loss�k�>��q�        )��P	���툙�A�
*

	conv_loss|��>���`        )��P	��툙�A�*

	conv_loss�>'v��        )��P	h+�툙�A�*

	conv_loss��>s ��        )��P	�l�툙�A�*

	conv_loss���>��8�        )��P	ҩ�툙�A�*

	conv_loss��>r2�
        )��P	��툙�A�*

	conv_loss�k�>ls�G        )��P	/�툙�A�*

	conv_loss�ȑ>\1�        )��P	#r�툙�A�*

	conv_loss7}�>��ZB        )��P	q��툙�A�*

	conv_loss$��>1`        )��P	I��툙�A�*

	conv_loss��>��e        )��P	p,�툙�A�*

	conv_lossb.�>��%        )��P	Vk�툙�A�*

	conv_loss��>D��        )��P	\��툙�A�*

	conv_lossR�>T�gL        )��P	+��툙�A�*

	conv_lossH
�>����        )��P	�#�툙�A�*

	conv_loss#��>p���        )��P	�a�툙�A�*

	conv_lossJ&�>9C        )��P	���툙�A�*

	conv_loss��>�J��        )��P	���툙�A�*

	conv_loss�ڌ>J,        )��P	��툙�A�*

	conv_loss��>���        )��P	^�툙�A�*

	conv_lossĈ�>E<"        )��P	���툙�A�*

	conv_loss��>��M        )��P	��툙�A�*

	conv_lossx�>�9��        )��P	��툙�A�*

	conv_loss�ڈ>!��2        )��P	bU�툙�A�*

	conv_loss�g�>b�G�        )��P	}��툙�A�*

	conv_loss���>1�fm        )��P	���툙�A�*

	conv_loss�,�>%zë        )��P	%�툙�A�*

	conv_loss�<�>��         )��P	S�툙�A�*

	conv_lossS(�>4^��        )��P	/��툙�A�*

	conv_loss�Ə>'[y.        )��P	X��툙�A�*

	conv_loss�D�>Ƃ��        )��P	��툙�A�*

	conv_loss⩉>�jF        )��P	�N�툙�A�*

	conv_loss���>�YM�        )��P	���툙�A�*

	conv_lossIY�>E��Q        )��P	���툙�A�*

	conv_loss:[�>���!        )��P	y�툙�A�*

	conv_loss���>���#        )��P	�G�툙�A�*

	conv_lossO!�>DR��        )��P	e��툙�A�*

	conv_loss��>r��7        )��P	���툙�A�*

	conv_loss��>!�        )��P	^�툙�A�*

	conv_losseH�>`��L        )��P	�@�툙�A�*

	conv_loss1�>�f}        )��P	}�툙�A�*

	conv_loss�ύ>X:S        )��P	q��툙�A�*

	conv_loss���>@�-        )��P	���툙�A�*

	conv_loss}:�>C�f        )��P	S3�툙�A�*

	conv_loss䒍>N.k        )��P	��툙�A�*

	conv_loss��>���?        )��P	���툙�A�*

	conv_loss�N�>�H�        )��P	��툙�A�*

	conv_loss�ǎ> {�j        )��P	9E�툙�A�*

	conv_loss�<�>B��        )��P	���툙�A�*

	conv_loss���>���        )��P	e��툙�A�*

	conv_lossrD�>���        )��P	�툙�A�*

	conv_lossQ�>�*[�        )��P	uX�툙�A�*

	conv_loss���>�%p        )��P	w��툙�A�*

	conv_loss���>���        )��P	���툙�A�*

	conv_loss�}�>d�6'        )��P	-�툙�A�*

	conv_loss	��>��K        )��P	6[�툙�A�*

	conv_losshL�>~f�.        )��P	���툙�A�*

	conv_lossf�>O� �        )��P	%��툙�A�*

	conv_loss��>�$        )��P	�&�툙�A�*

	conv_loss�ˏ>G�        )��P	�f�툙�A�*

	conv_lossrf�>�矩        )��P	e��툙�A�*

	conv_lossg��>�U��        )��P	/��툙�A�*

	conv_loss��>�y��        )��P	�/�툙�A�*

	conv_loss+�>@Ģ        )��P	(m�툙�A�*

	conv_lossi0�>��7        )��P	���툙�A�*

	conv_lossz:�>�o�        )��P	��툙�A�*

	conv_loss�d�>+J�Z        )��P	c3�툙�A�*

	conv_loss?��>�T         )��P	`w�툙�A�*

	conv_losst�>N�        )��P	��툙�A�*

	conv_loss_|�>���        )��P	���툙�A�*

	conv_loss�T�>�jS�        )��P	z3�툙�A�*

	conv_loss��>Iʥ�        )��P	Gq�툙�A�*

	conv_loss�6�>=@#1        )��P	��툙�A�*

	conv_loss���>�*W�        )��P	���툙�A�*

	conv_loss^ϒ>z�@        )��P	�+�툙�A�*

	conv_lossA�>t?�
        )��P	j�툙�A�*

	conv_loss��>�{��        )��P	���툙�A�*

	conv_lossl�>���        )��P	���툙�A�*

	conv_loss�T�>ߘ+3        )��P	�'�툙�A�*

	conv_loss�ǐ>d�3W        )��P	Ed�툙�A�*

	conv_loss��>F��        )��P	���툙�A�*

	conv_loss��>���"        )��P	��툙�A�*

	conv_loss>�
R�        )��P	>/�툙�A�*

	conv_loss���>��f        )��P	 m�툙�A�*

	conv_lossRw�>��F?        )��P	���툙�A�*

	conv_loss���>�>�=        )��P	"��툙�A�*

	conv_lossZ��>Q��        )��P	�(�툙�A�*

	conv_loss�>�l_u        )��P	#h�툙�A�*

	conv_lossHǌ>��        )��P	���툙�A�*

	conv_loss�>�         )��P	���툙�A�*

	conv_loss߉>�U�        )��P	<!�툙�A�*

	conv_lossm�>$*��        )��P	U_�툙�A�*

	conv_loss4Ј>aw�        )��P	m��툙�A�*

	conv_loss�>G��        )��P	+��툙�A�*

	conv_loss@��>��q        )��P	�N�툙�A�*

	conv_loss�#�>�m,I        )��P	���툙�A�*

	conv_loss��>��r�        )��P	���툙�A�*

	conv_loss�a�>4��D        )��P	��툙�A�*

	conv_lossQ��>m��        )��P	)N�툙�A�*

	conv_loss8�>�J�;        )��P	(��툙�A�*

	conv_loss&�>�;Mp        )��P	
��툙�A�*

	conv_loss�>�o        )��P	�.�툙�A�*

	conv_loss�	�>K}        )��P	�l�툙�A�*

	conv_loss_ъ>�w2�        )��P	O��툙�A�*

	conv_loss馏>(�'�        )��P	��툙�A�*

	conv_loss߲�>{6Wr        )��P	22�툙�A�*

	conv_loss���>V�7        )��P	p�툙�A�*

	conv_loss>�v��        )��P	^��툙�A�*

	conv_loss��>�L�R        )��P	p��툙�A�*

	conv_loss���>�d�T        )��P	�@�툙�A�*

	conv_lossf��>
A�n        )��P	��툙�A�*

	conv_lossf�>�U�        )��P	v��툙�A�*

	conv_loss�Ό>���        )��P	<�툙�A�*

	conv_lossz��>���        )��P	�J�툙�A�*

	conv_lossΡ�>6TV�        )��P	���툙�A�*

	conv_loss#)�>�ć        )��P	���툙�A�*

	conv_loss�*�>����        )��P	��툙�A�*

	conv_lossd��>�v-        )��P	X?�툙�A�*

	conv_lossd�>�o�W        )��P	�}�툙�A�*

	conv_loss��>h���        )��P	f��툙�A�*

	conv_loss��>Ug�        )��P	6��툙�A�*

	conv_loss��>��bl        )��P	�8�툙�A�*

	conv_lossu�>^G��        )��P		x�툙�A�*

	conv_loss�Ň>��        )��P	���툙�A�*

	conv_loss:��>-+�        )��P	L��툙�A�*

	conv_lossT�>1��y        )��P	\4�툙�A�*

	conv_lossIΊ>m/�a        )��P	,s�툙�A�*

	conv_loss�_�>sy��        )��P	e��툙�A�*

	conv_loss)v�>�J�~        )��P	���툙�A�*

	conv_lossg��>�}��        )��P	/�툙�A�*

	conv_loss���>{��        )��P	�m�툙�A�*

	conv_loss/f�>U16I        )��P	!��툙�A�*

	conv_loss�+�>@F�I        )��P	���툙�A�*

	conv_loss`��>�ܐ        )��P	�(�툙�A�*

	conv_loss�͉>����        )��P	�e�툙�A�*

	conv_loss�B�>^��        )��P	9��툙�A�*

	conv_lossǤ�>�7��        )��P	2��툙�A�*

	conv_loss���>����        )��P	L�툙�A�*

	conv_loss(=�>�]        )��P	�Z�툙�A�*

	conv_loss7e�>~�        )��P	���툙�A�*

	conv_loss���>�        )��P	��툙�A�*

	conv_loss쫉>+���        )��P	?�툙�A�*

	conv_loss2!�>;��        )��P	eO�툙�A�*

	conv_lossfF�>5�t�        )��P	܌�툙�A�*

	conv_loss~�>^9�8        )��P	���툙�A�*

	conv_loss�t�>�|�        )��P	�툙�A�*

	conv_loss�ׂ>���        )��P	�Y�툙�A�*

	conv_loss���>A�EY        )��P	6��툙�A�*

	conv_lossх>a�N        )��P	T��툙�A�*

	conv_loss��>�q�        )��P	y�툙�A�*

	conv_loss	i�>d��8        )��P	K_�툙�A�*

	conv_lossWP�>OѲ�        )��P	S��툙�A�*

	conv_loss��>��d�        )��P	���툙�A�*

	conv_loss�2�>�?\M        )��P	�<�툙�A�*

	conv_loss	�>>V�F        )��P	&|�툙�A�*

	conv_loss��>�j        )��P	���툙�A�*

	conv_loss�Y�>��δ        )��P	[�툙�A�*

	conv_lossB��>Mʛ�        )��P	�C�툙�A�*

	conv_lossN��>TC�        )��P	���툙�A�*

	conv_loss�"�>7���        )��P	2��툙�A�*

	conv_lossRс>�6QG        )��P	�툙�A�*

	conv_lossey�>!��l        )��P	+U�툙�A�*

	conv_lossd��>�DR�        )��P	���툙�A�*

	conv_loss���>@��_        )��P	���툙�A�*

	conv_loss:�>˸|"        )��P	f�툙�A�*

	conv_loss:M�>PN��        )��P	�R�툙�A�*

	conv_lossh'�>0���        )��P	֑�툙�A�*

	conv_loss���>��        )��P	P��툙�A�*

	conv_loss�͆>B�         )��P	��툙�A�*

	conv_lossl/�>;�R~        )��P	�Q�툙�A�*

	conv_loss��>�!X        )��P	Y��툙�A�*

	conv_loss��>�!�        )��P	5��툙�A�*

	conv_loss�r�> �ت        )��P	��툙�A�*

	conv_lossX)�>��D�        )��P	�P�툙�A�*

	conv_loss��~>��v7        )��P	m��툙�A�*

	conv_loss<>{JΦ        )��P	���툙�A�*

	conv_loss�P�>���        )��P	��툙�A�*

	conv_loss���>_`d�        )��P	tN�툙�A�*

	conv_loss2�>�ۯX        )��P	��툙�A�*

	conv_loss�Z�>��A        )��P	���툙�A�*

	conv_lossҾ�>)%        )��P	*�툙�A�*

	conv_loss��>a���        )��P	�I�툙�A�*

	conv_loss�F�>�gc        )��P	s��툙�A�*

	conv_loss[D�>[��$        )��P	���툙�A�*

	conv_loss ��>&���        )��P	��툙�A�*

	conv_loss��>���        )��P	2H�툙�A�*

	conv_lossJg�>W6        )��P	��툙�A�*

	conv_loss'�>]��        )��P	���툙�A�*

	conv_lossR�>m}8        )��P	��툙�A�*

	conv_loss��>fL�        )��P	�F�툙�A�*

	conv_loss�S�>����        )��P	ن�툙�A�*

	conv_lossU`�>+��        )��P	���툙�A�*

	conv_loss��>�<��        )��P	��툙�A�*

	conv_loss�;�>�J$�        )��P	�G�툙�A�*

	conv_loss>5z>�1        )��P	�l�툙�A�*

	conv_loss��>ɺl0        )��P	��툙�A�*

	conv_loss�{�>�T        )��P	���툙�A�*

	conv_loss�~�>�|        )��P	�5�툙�A�*

	conv_lossD��>�#�b        )��P	l��툙�A�*

	conv_loss<��>v���        )��P	<��툙�A�*

	conv_loss�Ǆ> ��        )��P	��툙�A�*

	conv_loss���>sY|�        )��P	�E�툙�A�*

	conv_loss�E�>�,�|        )��P	��툙�A�*

	conv_losseG�>�?�{        )��P	���툙�A�*

	conv_loss|��>Aӟ�        )��P	�(�툙�A�*

	conv_loss�3�>���        )��P	�h�툙�A�*

	conv_losskt�>�9U        )��P	Ǧ�툙�A�*

	conv_lossoQ�>�Q��        )��P	���툙�A�*

	conv_loss~s}>�!S�        )��P	Z!�툙�A�*

	conv_losst�>Ӷ�        )��P	}]�툙�A�*

	conv_loss�܃> ��>        )��P	|��툙�A�*

	conv_loss�R�>���-        )��P	~��툙�A�*

	conv_lossB�>��$        )��P	j�툙�A�*

	conv_loss�Ǆ>�+��        )��P	�T�툙�A�*

	conv_lossF��>
V��        )��P	���툙�A�*

	conv_loss�>�>*F8�        )��P	���툙�A�*

	conv_loss�ہ>aR�o        )��P	�툙�A�*

	conv_lossVن>=	6!        )��P	WL�툙�A�*

	conv_loss�τ>Eڌ�        )��P	I��툙�A�*

	conv_loss��>DC        )��P	���툙�A�*

	conv_loss��>�_J�        )��P	9
�툙�A�*

	conv_loss�/�>cD�        )��P	�H�툙�A�*

	conv_loss`u�>*B��        )��P	��툙�A�*

	conv_lossCf�>Q�(h        )��P	��툙�A�*

	conv_loss@��>�t׋        )��P	� �툙�A�*

	conv_loss	A�>��        )��P	�?�툙�A�*

	conv_loss�z�>�)��        )��P	a~�툙�A�*

	conv_loss�u�>d?�y        )��P	n��툙�A�*

	conv_loss�L�>g��        )��P	~�툙�A�*

	conv_loss[��>��g        )��P	1I�툙�A�*

	conv_loss�>�>f�        )��P	څ�툙�A�*

	conv_loss���>����        )��P	,��툙�A�*

	conv_loss-8�>m[��        )��P	 �툙�A�*

	conv_loss�`�>4�$U        )��P	�?�툙�A�*

	conv_loss	��>���        )��P	�|�툙�A�*

	conv_loss�)}>��9x        )��P	���툙�A�*

	conv_loss�i�>�J        )��P	l��툙�A�*

	conv_loss#��>���        )��P	�7 �A�*

	conv_loss�́>ά�        )��P	mu �A�*

	conv_loss�9�>}��[        )��P	]� �A�*

	conv_losssR�>��        )��P	�� �A�*

	conv_loss�~>��ZL        )��P	j0�A�*

	conv_loss塅>���        )��P	p�A�*

	conv_loss{ҁ>�1        )��P	���A�*

	conv_loss���>���        )��P	���A�*

	conv_lossI��>���        )��P	^<�A�*

	conv_loss2�>t�        )��P	:{�A�*

	conv_loss�%�>ۮ�U        )��P	_��A�*

	conv_loss"�>�
        )��P	��A�*

	conv_loss�K}>7�]�        )��P	�E�A�*

	conv_loss�ׅ>>+6        )��P	]��A�*

	conv_loss���>�Tt�        )��P	X��A�*

	conv_loss'f~>nT�Y        )��P	�A�*

	conv_loss�0�>�Ȯ=        )��P	j�A�*

	conv_loss,F�>��C        )��P	j��A�*

	conv_lossֺ�>�(        )��P	K��A�*

	conv_loss�O�>�[��        )��P	G$�A�*

	conv_loss���>�]l        )��P	+s�A�*

	conv_loss��z>x�P        )��P	ǲ�A�*

	conv_loss���> "a�        )��P	���A�*

	conv_lossM߂>���        )��P	X.�A�*

	conv_loss޸�>�'i�        )��P	Fl�A�*

	conv_loss��>�I�w        )��P	��A�*

	conv_lossX܄>���A        )��P	��A�*

	conv_lossn6�>0��?        )��P	�&�A�*

	conv_loss��>G��        )��P	�c�A�*

	conv_loss�x�>�G�        )��P	ա�A�*

	conv_loss*�{>�g�n        )��P	~��A�*

	conv_loss��t>��K�        )��P	D�A�*

	conv_loss�>�E��        )��P	�_�A�*

	conv_loss��>�rd�        )��P	���A�*

	conv_loss�>���        )��P	���A�*

	conv_loss/Xz>.���        )��P	�	�A�*

	conv_loss��>�9�        )��P	�W	�A�*

	conv_loss�v>�L�        )��P	x�	�A�*

	conv_loss�y>�G�        )��P	�	�A�*

	conv_loss���>7�G        )��P	�
�A�*

	conv_loss̀>�2��        )��P	�L
�A�*

	conv_loss#�>Q�-        )��P	C�
�A�*

	conv_lossp}>��        )��P	1�
�A�*

	conv_loss�Uz>�}�        )��P	��A�*

	conv_loss/�>x>k�        )��P	�E�A�*

	conv_loss��x>���        )��P	B��A�*

	conv_loss��>��n        )��P	���A�*

	conv_loss���>Î�        )��P	`��A�*

	conv_lossWɀ>:A(v        )��P	h=�A�*

	conv_lossL�x>&j0�        )��P	F{�A�*

	conv_lossl�v>ix��        )��P	���A�*

	conv_loss�.�>N�-        )��P	��A�*

	conv_loss�(�>M�Ϩ        )��P	:6�A�*

	conv_lossQA�>��t        )��P	u�A�*

	conv_loss��>N��        )��P	���A�*

	conv_lossF�|>˖��        )��P	��A�*

	conv_loss�ځ> �L�        )��P	B�A�*

	conv_loss�x>�?��        )��P	ݔ�A�*

	conv_loss��{>��C�        )��P	h��A�*

	conv_loss�ȁ>F�r        )��P	d�A�*

	conv_loss{B�>��:        )��P	m_�A�*

	conv_loss��p>ǀ>�        )��P	ڟ�A�*

	conv_lossށ�>�h@�        )��P	?��A�*

	conv_loss�!�>b��        )��P	R&�A�*

	conv_loss�;{>΅��        )��P	fi�A�*

	conv_loss��v>��/        )��P	r��A�*

	conv_lossr�>���U        )��P	U��A�*

	conv_loss3wy>��C�        )��P	"8�A�*

	conv_loss3q>��:        )��P	3��A�*

	conv_loss�Sv>�q{W        )��P	���A�*

	conv_lossA�u>����        )��P	l��A�*

	conv_lossA��>����        )��P	�:�A�*

	conv_loss��>$n��        )��P	ry�A�*

	conv_lossX2w>s$        )��P	���A�*

	conv_loss
��>)��b        )��P	(��A�*

	conv_lossC+�>F�        )��P	�5�A�*

	conv_loss�<�>��F�        )��P	�r�A�*

	conv_loss~g�>l{�        )��P	��A�*

	conv_lossG�>�}6\        )��P	5��A�*

	conv_loss��t>Λ^?        )��P	�.�A�*

	conv_loss��}>Z�=�        )��P	*l�A�*

	conv_lossbυ>���        )��P	���A�*

	conv_loss��}>�8Y�        )��P	6��A�*

	conv_loss��>POP	        )��P	�&�A�*

	conv_loss��~>�Jp        )��P	Ye�A�*

	conv_lossM�>z         )��P	��A�*

	conv_lossa�y>�)�@        )��P	/��A�*

	conv_loss#Hy>���c        )��P	�&�A�*

	conv_loss��>L��        )��P	�d�A�*

	conv_lossv�y>�5
R        )��P	��A�*

	conv_loss��{>w6��        )��P	���A�*

	conv_loss�L�>����        )��P	)�A�*

	conv_loss*��>�n;�        )��P	\�A�*

	conv_loss+�~>��T        )��P	h��A�*

	conv_loss��>���6        )��P	x��A�*

	conv_loss���>a�u�        )��P	I�A�*

	conv_loss��>�;2P        )��P	�V�A�*

	conv_loss�Ԃ>M��        )��P	���A�*

	conv_loss�|y>I��        )��P	E��A�*

	conv_loss��y>cU�        )��P	��A�*

	conv_lossBn�>�Q��        )��P	dP�A�*

	conv_loss�j�>G�        )��P	��A�*

	conv_lossL:k>E�        )��P	���A�*

	conv_losse%�>��~        )��P	��A�*

	conv_loss��|>����        )��P	�K�A�*

	conv_loss�:�>���        )��P	��A�*

	conv_loss��>:��        )��P	���A�*

	conv_loss��{>��B        )��P	T1�A�*

	conv_loss�_z>e�X�        )��P	p�A�*

	conv_lossylz>��I�        )��P	Ǯ�A�*

	conv_lossC^{>v��        )��P	���A�*

	conv_loss��y>r�K�        )��P	X2�A�*

	conv_loss��{>yrUX        )��P	�q�A�*

	conv_loss�7u>�=��        )��P	&��A�*

	conv_loss���>�L!�        )��P	2�A�*

	conv_loss���>>,��        )��P	�^�A�*

	conv_loss���>h�v        )��P	9��A�*

	conv_loss�C|>����        )��P	���A�*

	conv_loss�_v>gK�        )��P	'�A�*

	conv_loss@t>��D        )��P	e�A�*

	conv_loss���>`M&�        )��P	ܣ�A�*

	conv_lossem�>Y�        )��P	���A�*

	conv_loss�St>�Ԫy        )��P	�/�A�*

	conv_loss��{>��=        )��P	�m�A�*

	conv_loss�Fw>+��        )��P	��A�*

	conv_loss��x>]d&�        )��P	E��A�*

	conv_loss�!�>��        )��P	�) �A�*

	conv_loss��x>�|�        )��P	gg �A�*

	conv_loss��l>�A��        )��P	� �A�*

	conv_loss`�p>J��        )��P	� �A�*

	conv_loss.u�>JH�        )��P	N!�A�*

	conv_loss�7�>�V�        )��P	�^!�A�*

	conv_lossLZ|>Z��        )��P	�!�A�*

	conv_loss�yq>bUc6        )��P	�!�A�*

	conv_loss��~>$��        )��P	�"�A�*

	conv_lossr>��r        )��P	�X"�A�*

	conv_lossĵ>U�j        )��P	*�"�A�*

	conv_loss�]x>Lo��        )��P	_�"�A�*

	conv_loss.wt>7��n        )��P	�#�A�*

	conv_loss�r>S��        )��P	cQ#�A�*

	conv_loss�z>BŅ�        )��P	��#�A�*

	conv_loss��|>|�$        )��P	N�#�A�*

	conv_lossi+�>�=�"        )��P	J$�A�*

	conv_lossW�{> �"�        )��P	�H$�A�*

	conv_loss-�>oE](        )��P	��$�A�*

	conv_lossR"l>g�r        )��P	��$�A�*

	conv_lossxao>�R��        )��P	� %�A�*

	conv_loss�y>+�        )��P	<>%�A�*

	conv_loss�0z>]�	�        )��P	]{%�A�*

	conv_loss�as>m� y        )��P	6�%�A�*

	conv_loss�x>jz(        )��P	��%�A�*

	conv_loss��u>b�Q        )��P	�6&�A�*

	conv_loss��v>֍�        )��P	�u&�A�*

	conv_lossiw>�}�`        )��P	
�&�A�*

	conv_lossz>ɷ        )��P	��&�A�*

	conv_lossy�r>���        )��P	�0'�A�*

	conv_loss�Yx>��*J        )��P	�q'�A�*

	conv_loss(�u>�`��        )��P	�)�A�*

	conv_loss�Ow>�,�n        )��P	5�)�A�*

	conv_loss��}>�QbK        )��P	�*�A�*

	conv_lossAt>}D�f        )��P	�G*�A�*

	conv_loss��>dԟe        )��P	P�*�A�*

	conv_loss�[w>���j        )��P	�*�A�*

	conv_loss!�z>$W        )��P	^+�A�*

	conv_lossi�t>[�b�        )��P	"K+�A�*

	conv_loss"�p>� ^B        )��P	��+�A�*

	conv_lossy�t>�Y4        )��P	��+�A�*

	conv_lossyO�>@���        )��P	�,�A�*

	conv_loss�8~>&i�        )��P	uj,�A�*

	conv_loss�ly>��6�        )��P	Ӫ,�A�*

	conv_loss[t>�7:        )��P	Q�,�A�*

	conv_lossj>�@�$        )��P		'-�A�*

	conv_loss�o�>Wvn~        )��P	�d-�A�*

	conv_loss�ik>�e        )��P	4�-�A�*

	conv_loss��o>��        )��P	@�-�A�*

	conv_loss��q>X��        )��P	Z.�A�*

	conv_loss�x>HLV�        )��P	#[.�A�*

	conv_lossMMt>;�V        )��P	ʚ.�A�*

	conv_loss��n>�~c{        )��P	��.�A�*

	conv_loss�Gr>4޵        )��P	K/�A�*

	conv_loss��z>lÕ�        )��P	V/�A�*

	conv_loss��k>\�R�        )��P	�/�A�*

	conv_loss�I�>���;        )��P	0�/�A�*

	conv_loss+w>Ƙ�D        )��P	50�A�*

	conv_lossn�u>�g�X        )��P	�K0�A�*

	conv_lossa�m>T �B        )��P	ڊ0�A�*

	conv_loss�z>v���        )��P	J�0�A�*

	conv_loss��s>0�g�        )��P	r1�A�*

	conv_loss%�v>4�u�        )��P	KC1�A�*

	conv_lossB:l>r��E        )��P	�1�A�*

	conv_loss"�u>���        )��P	��1�A�*

	conv_loss��{>1*Z�        )��P	r�1�A�*

	conv_loss]l>�a��        )��P	�;2�A�*

	conv_loss�Eu>�b�        )��P	Vy2�A�*

	conv_loss�}><+�        )��P	׶2�A�*

	conv_lossy:s>i��        )��P	��2�A�*

	conv_loss��p>�(0N        )��P	d33�A�*

	conv_loss;Ou>��        )��P	p3�A�*

	conv_loss!Cp>��i        )��P	��3�A�*

	conv_loss��}>S        )��P	�3�A�*

	conv_lossY�v>�"        )��P	
(4�A�*

	conv_lossM_t>;=�^        )��P	�e4�A�*

	conv_loss��q>�ڞe        )��P	?�4�A�*

	conv_lossiy>�J{.        )��P	��4�A�*

	conv_lossaq>z6�        )��P	�5�A�*

	conv_loss͹�>�ߋ�        )��P	\5�A�*

	conv_loss!x>^z4        )��P	=�5�A�*

	conv_loss��u>��$�        )��P	4�5�A�*

	conv_loss�v>����        )��P	�)6�A�*

	conv_loss�m>��o        )��P	�g6�A�*

	conv_losst�n>lJso        )��P	m�6�A�*

	conv_loss�ow>H���        )��P	��6�A�*

	conv_loss��~>���        )��P	�'7�A�*

	conv_loss�u>�}`�        )��P	ye7�A�*

	conv_loss��}>�d�        )��P	"�7�A�*

	conv_loss��{>��#�        )��P	�7�A�*

	conv_loss�u>l�%v        )��P	A.8�A�*

	conv_loss�|>��;�        )��P	%l8�A�*

	conv_lossK�a>]�.�        )��P	w�8�A�*

	conv_loss��>h�        )��P	��8�A�*

	conv_loss"�i>뗔Z        )��P	H?9�A�*

	conv_loss�v>�T�        )��P	�}9�A�*

	conv_loss�u>#�?:        )��P	º9�A�*

	conv_loss��r>r�:Q        )��P	W�9�A�*

	conv_loss��i>�Wp        )��P	B5:�A�*

	conv_loss�o>t�x        )��P	(r:�A�*

	conv_loss�|>+_ Q        )��P	�:�A�*

	conv_loss
{>�t�I        )��P	q�:�A�*

	conv_loss��l>��U�        )��P	-1;�A�*

	conv_loss�/g>��S�        )��P	Io;�A�*

	conv_lossnu>U��        )��P	��;�A�*

	conv_loss�z>L�7        )��P	!�;�A�*

	conv_loss��i>����        )��P	x(<�A�*

	conv_loss�Eu>�)��        )��P	&e<�A�*

	conv_lossQt>@p        )��P	G�<�A�*

	conv_lossdv>�˄        )��P	��<�A�*

	conv_lossąo>�V��        )��P	�=�A�*

	conv_loss:<q>qD        )��P	z\=�A�*

	conv_loss�o~>��ٛ        )��P	J�=�A�*

	conv_lossT:m>R4�T        )��P	��=�A�*

	conv_lossVn>�$|        )��P	�>�A�*

	conv_loss��o>Z�
        )��P	�V>�A�*

	conv_loss��l>0j�P        )��P	`�>�A�*

	conv_loss�i>�+�        )��P	��>�A�*

	conv_loss�~>S0�d        )��P	�?�A�*

	conv_losse,h>��c        )��P	�P?�A�*

	conv_loss��>�h        )��P	l�?�A�*

	conv_loss�`t>�C��        )��P	��?�A�*

	conv_loss�xk>��Y�        )��P	&@�A�*

	conv_loss�8q>�O        )��P	�R@�A�*

	conv_lossI_i>�Ky        )��P	�@�A�*

	conv_losshq>�q$        )��P	`�@�A�*

	conv_loss��t>u�        )��P	�A�A�*

	conv_loss��o>T��d        )��P	�\A�A�*

	conv_loss$p>�ƃ�        )��P	#�A�A�*

	conv_loss�>�>ɔ�        )��P	��A�A�*

	conv_lossD!l>�{�*        )��P	�B�A�*

	conv_lossPq>��h�        )��P	�gB�A�*

	conv_loss�]l>����        )��P	��B�A�*

	conv_loss]�h>�ѿ        )��P	��B�A�*

	conv_loss�bt><�f        )��P	�1C�A�*

	conv_loss��h>��        )��P	%tC�A�*

	conv_loss�"e>%���        )��P	x�C�A�*

	conv_loss�z>x��        )��P	UD�A�*

	conv_lossrm>���_        )��P	2FD�A�*

	conv_loss� o>$��        )��P	��D�A�*

	conv_losssp>��q3        )��P	2�D�A�*

	conv_loss��r>�C�        )��P	VE�A�*

	conv_loss�}>��
        )��P	ME�A�*

	conv_loss��x>e9*3        )��P	^�E�A�*

	conv_loss�yj>�k�^        )��P	��E�A�*

	conv_loss��j>k��        )��P	�F�A�*

	conv_loss�Fp>N`��        )��P	�VF�A�*

	conv_loss�h>L��         )��P	��F�A�*

	conv_loss��s>��tU        )��P	��F�A�*

	conv_loss��t>P�2�        )��P	�G�A�*

	conv_loss|�i>?�i�        )��P	XPG�A�*

	conv_loss/oo>p�        )��P	��G�A�*

	conv_loss��h>�o4�        )��P	?�G�A�*

	conv_loss(s>�n�j        )��P	�H�A�*

	conv_loss��f>�	g�        )��P	6LH�A�*

	conv_lossn�x>y� �        )��P	��H�A�*

	conv_loss�Ps>A.��        )��P	�H�A�*

	conv_loss��o>�B        )��P	�I�A�*

	conv_loss�Cf>�,F        )��P	FI�A�*

	conv_loss�p>�K�/        )��P	ՄI�A�*

	conv_loss<_`>�)�p        )��P	A�I�A�*

	conv_loss2Vp>���        )��P	IJ�A�*

	conv_loss*�n>�ϊ�        )��P	�AJ�A�*

	conv_loss�6h>�n�0        )��P	�J�A�*

	conv_lossّ{>�"ݒ        )��P	2�J�A�*

	conv_loss�4g>���        )��P	��J�A�*

	conv_loss]�q>��o        )��P	�?K�A�*

	conv_loss)Jw>gB:%        )��P	�~K�A�*

	conv_loss��u>�9�        )��P	��K�A�*

	conv_lossl0i>�Zo�        )��P	��K�A�*

	conv_loss��g>�qМ        )��P	�7L�A�*

	conv_loss!�n>��_        )��P	�tL�A�*

	conv_loss��p>Y@��        )��P	=�L�A�*

	conv_loss��h>v�A        )��P	#�L�A�*

	conv_loss��k>'���        )��P	�.M�A�*

	conv_loss��h>L{DP        )��P	�mM�A�*

	conv_loss�yo>!�[a        )��P	ޫM�A�*

	conv_loss��t>k��'        )��P	�M�A�*

	conv_lossF�f>��&�        )��P	'N�A�*

	conv_loss17u>���        )��P	�eN�A�*

	conv_loss��k>�8&�        )��P	9�N�A�*

	conv_loss�3l>��[�        )��P	��N�A�*

	conv_loss�p>?9�}        )��P	!1O�A�*

	conv_lossvj>�弉        )��P	&qO�A�*

	conv_loss��v>�r�\        )��P	t�O�A�*

	conv_loss`|k>���        )��P	 �O�A�*

	conv_loss��u>Y�e        )��P	�2P�A�*

	conv_lossU�d>��
!        )��P	��P�A�*

	conv_loss�i>��4        )��P	h�P�A�*

	conv_lossd�k>\`,        )��P	;Q�A�*

	conv_lossQ.h>Ik��        )��P	�TQ�A�*

	conv_loss��k>L�e        )��P	��Q�A�*

	conv_loss��q>���        )��P	�Q�A�*

	conv_lossUd>����        )��P	�R�A�*

	conv_loss��i>x�f        )��P	�aR�A�*

	conv_lossq+e>%��*        )��P	0�R�A�*

	conv_loss;�c>ǛC        )��P	��R�A�*

	conv_loss��k>��>        )��P	TS�A�*

	conv_loss�~q>A�W�        )��P	�[S�A�*

	conv_loss�u>�O�L        )��P	��S�A�*

	conv_lossΥz>�2/1        )��P	��S�A�*

	conv_lossûi>�T        )��P	`T�A�*

	conv_loss�f>�Nnr        )��P	�ST�A�*

	conv_lossU�o>G��        )��P	'�T�A�*

	conv_lossJrj>�$��        )��P	�T�A�*

	conv_loss�<f>��G        )��P	�U�A�*

	conv_loss6{c>
��
        )��P	�OU�A�*

	conv_loss�j>p���        )��P	ĎU�A�*

	conv_lossc�g>W���        )��P	Q�U�A�*

	conv_loss��i>-�iX        )��P	�V�A�*

	conv_loss*Mx>"�F�        )��P	GJV�A�*

	conv_lossvi>*(f�        )��P	�V�A�*

	conv_loss�No>;r�\        )��P	?�V�A�*

	conv_loss�	q>c�|�        )��P	pW�A�*

	conv_lossTd>MJm        )��P	�EW�A�*

	conv_loss-�j>JD(        )��P	p�W�A�*

	conv_loss��m>�p�        )��P	��W�A�*

	conv_loss
c>����        )��P	X�A�*

	conv_loss+j>��G�        )��P	�>X�A�*

	conv_loss$=e>�\'�        )��P	�|X�A�*

	conv_loss�6m>�>'�        )��P	��X�A�*

	conv_lossӵ`>�(͢        )��P	��X�A�*

	conv_lossKIj>�.d�        )��P	�7Y�A�*

	conv_lossHc>��Q�        )��P	lvY�A�*

	conv_loss�Uh>��	7        )��P	i�Y�A�*

	conv_lossX�i>xv        )��P	��Y�A�*

	conv_loss�r>�H�        )��P	�0Z�A�*

	conv_lossbQg>S�G~        )��P	pZ�A�*

	conv_loss�m>�X��        )��P	�Z�A�*

	conv_loss�Gs>�F�f        )��P	6�Z�A�*

	conv_loss�l>֩��        )��P	gP_�A�*

	conv_loss��h>�v�:        )��P	�ga�A�*

	conv_loss'i>�O��        )��P	��a�A�*

	conv_loss��c>�!tQ        )��P	l�a�A�*

	conv_loss��e>��>        )��P	�'b�A�*

	conv_loss/r>���        )��P	�eb�A�*

	conv_loss�tc>�H��        )��P	�b�A�*

	conv_loss�g>����        )��P	�b�A�*

	conv_loss?v>p_�;        )��P	�8c�A�*

	conv_loss+�_>�b�s        )��P	�{c�A�*

	conv_loss�Gi>+�;        )��P	j�c�A�*

	conv_lossބl>���j        )��P	�d�A�*

	conv_loss�x`>p�ŧ        )��P	3Td�A�*

	conv_loss0�d>R��        )��P	ˑd�A�*

	conv_loss0�a>%8�N        )��P	_�d�A�*

	conv_loss1�d>�5&!        )��P	�e�A�*

	conv_lossW�c>[���        )��P	�Ye�A�*

	conv_lossI7i>�p`        )��P	�e�A�*

	conv_loss	T[>��        )��P	��e�A�*

	conv_loss5�c>̷v`        )��P	�f�A�*

	conv_loss�Dn>Z��p        )��P	�Wf�A�*

	conv_loss�/f>��$�        )��P	��f�A�*

	conv_loss�W>@�        )��P	��f�A�*

	conv_losso+b>;�]�        )��P	� g�A�*

	conv_lossah>�">�        )��P	�]g�A�*

	conv_lossM�u>���        )��P	��g�A�*

	conv_loss��k>�0n�        )��P	\�g�A�*

	conv_loss�X`>��        )��P	h�A�*

	conv_loss9�e>Kf�X        )��P	�Uh�A�*

	conv_lossL�c>����        )��P	�h�A�*

	conv_loss0fZ>���E        )��P	��h�A�*

	conv_lossg�q>��.�        )��P	Qi�A�*

	conv_loss�}>G�!�        )��P	'ai�A�*

	conv_loss�a>�6        )��P	��i�A�*

	conv_losso�e>h[�        )��P	F�i�A�*

	conv_loss!�^>�)T        )��P	�j�A�*

	conv_loss��j>m~�        )��P	Zj�A�*

	conv_loss��h>�t�]        )��P	ʗj�A�*

	conv_lossB�p>'$��        )��P	�j�A�*

	conv_loss�c>i�        )��P	5k�A�*

	conv_lossJ�f>�G
�        )��P	�`k�A�*

	conv_loss�+a>ғ��        )��P	��k�A�*

	conv_lossQ�^>�AM        )��P	��k�A�*

	conv_loss�a>;1/q        )��P	>l�A�*

	conv_lossI,k>�X:        )��P	<Ul�A�*

	conv_loss��e>.v[        )��P	�l�A�*

	conv_loss*�c>�d��        )��P	��l�A�*

	conv_loss�Rv>+=5K        )��P	m�A�*

	conv_lossg�`> &o        )��P	�Pm�A�*

	conv_loss &_>��1H        )��P	1�m�A�*

	conv_lossO#g>䟐v        )��P	��m�A�*

	conv_loss��d>��6        )��P	'n�A�*

	conv_loss��f>A�½        )��P	�Xn�A�*

	conv_lossXPY>7T�        )��P	��n�A�*

	conv_loss�O`>�G7�        )��P	��n�A�*

	conv_loss'T_>����        )��P	�(o�A�*

	conv_loss�og>��         )��P	�eo�A�*

	conv_loss|KZ>G��i        )��P	_�o�A�*

	conv_loss	\l>�A-�        )��P	!�o�A�*

	conv_loss��e>'{�E        )��P	Dp�A�*

	conv_loss�]>�Ի�        )��P	^�p�A�*

	conv_lossC�m>AUZv        )��P	�p�A�*

	conv_loss��R>���(        )��P	�q�A�*

	conv_loss�[>ν��        )��P	Aq�A�*

	conv_loss�h>�h��        )��P	�~q�A�*

	conv_loss�[>}�L(        )��P	#�q�A�*

	conv_lossGn>�/�:        )��P	j�q�A�*

	conv_loss=�_>��        )��P	�9r�A�*

	conv_loss/�`>-	yV        )��P	yr�A�*

	conv_loss�bc>�1uF        )��P	w�r�A�*

	conv_loss��g>V�Yp        )��P	��r�A�*

	conv_loss+#g>o��        )��P	�9s�A�*

	conv_lossŹc>���q        )��P	�vs�A�*

	conv_loss�>e>�sA
        )��P	~�s�A�*

	conv_loss՜j>��,        )��P	�s�A�*

	conv_lossX�o>mk��        )��P	�0t�A�*

	conv_loss�'d>��l�        )��P	int�A�*

	conv_lossX�f>�j
g        )��P	��t�A�*

	conv_lossLvb>F��m        )��P	��t�A�*

	conv_loss�L]>�>+E        )��P	�(u�A�*

	conv_loss,�d>�2$n        )��P	�fu�A�*

	conv_loss+g>�!�        )��P	}�u�A�*

	conv_loss��_>w���        )��P	��u�A�*

	conv_lossaqa>A6C        )��P	�v�A�*

	conv_loss^c>�D�        )��P	�]v�A�*

	conv_loss��Z>�_l        )��P	L�v�A�*

	conv_loss�t]>d�/�        )��P	��v�A�*

	conv_loss�^>��B;        )��P	�w�A�*

	conv_loss�
a>i�.�        )��P	�Tw�A�*

	conv_loss��Y>�HD        )��P	^�w�A�*

	conv_lossz�Z>�5RO        )��P	+�w�A�*

	conv_loss�P^>>�B;        )��P	+x�A�*

	conv_lossbcZ>�pd�        )��P	�Kx�A�*

	conv_loss��^>���        )��P	��x�A�*

	conv_loss��^>*/�        )��P	��x�A�*

	conv_loss�b>�Y�        )��P	xy�A�*

	conv_loss<An>��7A        )��P	0Ey�A�*

	conv_losse�\> I�        )��P	T�y�A�*

	conv_loss��j>��M�        )��P	\�y�A�*

	conv_lossG�_>�%*�        )��P	>�y�A�*

	conv_losss�c>'��t        )��P	�<z�A�*

	conv_loss�Q`>��=        )��P	Íz�A�*

	conv_loss��d>hjx        )��P	��z�A�*

	conv_loss&n\>f�+�        )��P	�{�A�*

	conv_loss��`>h�)�        )��P	�J{�A�*

	conv_loss��W>	�        )��P	��{�A�*

	conv_loss%pd>� �        )��P	(�{�A�*

	conv_lossX�Z>�@-        )��P	|�A�*

	conv_loss�wX>@��        )��P	�R|�A�*

	conv_lossqd>�cP�        )��P	h�|�A�*

	conv_loss��e>�i��        )��P	\�|�A�*

	conv_loss�5`>�d5s        )��P	R-}�A�*

	conv_loss_>�d        )��P	�l}�A�*

	conv_lossۊd>^���        )��P	��}�A�*

	conv_loss�i>ЉMK        )��P	��}�A�*

	conv_lossH�[>��C�        )��P	�'~�A�*

	conv_loss@$^>&�7        )��P	+e~�A�*

	conv_loss�]>	[        )��P	m�~�A�*

	conv_loss�Z>���        )��P	>�~�A�*

	conv_loss^sa>���        )��P	�A�*

	conv_loss!`>bj�        )��P	�]�A�*

	conv_lossm>NV��        )��P	|��A�*

	conv_loss�)Z>V��        )��P	~��A�*

	conv_loss�=`>A,oj        )��P	���A�*

	conv_loss�Ka>�b�        )��P	�S��A�*

	conv_loss�X>���        )��P	a���A�*

	conv_loss7�k>n@)J        )��P	\Ԁ�A�*

	conv_loss��b>E<�        )��P	���A�*

	conv_lossude>��p        )��P	�N��A�*

	conv_loss�Y>�Nj        )��P	����A�*

	conv_loss��`>U��        )��P	�Ɂ�A�*

	conv_loss
�^>���\        )��P	���A�*

	conv_lossa>�X��        )��P	�D��A�*

	conv_lossq9_>}��4        )��P	���A�*

	conv_lossR|`>Z�9        )��P	Y���A�*

	conv_loss��c>u	c        )��P	B���A�*

	conv_lossv�U>�tF�        )��P	G;��A�*

	conv_lossx�[>�5�        )��P	�x��A�*

	conv_loss��U>3�4        )��P	u���A�*

	conv_loss�V>烲M        )��P	'���A�*

	conv_loss�+[>�j�        )��P	�3��A�*

	conv_lossK5Y>.�
�        )��P	�q��A�*

	conv_loss�
^>E��A        )��P	����A�*

	conv_loss&Z>@h�        )��P	7��A�*

	conv_lossKb>�3��        )��P	)��A�*

	conv_loss�D_>����        )��P	�f��A�*

	conv_loss�Z>�9f        )��P	Q���A�*

	conv_loss��^>����        )��P	���A�*

	conv_loss�_>���*        )��P	~"��A�*

	conv_lossx�c> u��        )��P	~`��A�*

	conv_loss�
[>��j�        )��P	���A�*

	conv_loss�^>�v0�        )��P	*���A�*

	conv_loss�2V>�T�        )��P	&-��A�*

	conv_loss��`>P��        )��P	:j��A�*

	conv_lossHmV>�a�h        )��P	謇�A�*

	conv_loss�:e>��	        )��P	���A�*

	conv_loss9�b>,FP�        )��P	�0��A�*

	conv_loss95Z>�9         )��P	3n��A�*

	conv_lossޅa>�=H        )��P	\���A�*

	conv_loss�Y>���N        )��P	����A�*

	conv_lossm>Nm�	        )��P	8��A�*

	conv_loss��W>�	:R        )��P	J��A�*

	conv_lossw�T>v�5�        )��P	����A�*

	conv_lossH�d>��4n        )��P	����A�*

	conv_loss��T>6*�O        )��P	D>��A�*

	conv_loss��Y>�vH        )��P	>}��A�*

	conv_loss��h>�@3�        )��P	\���A�*

	conv_loss3�c>��*�        )��P	����A�*

	conv_lossi�a>�S]�        )��P	8��A�*

	conv_loss��[>�(��        )��P	�v��A�*

	conv_loss�_>����        )��P	x���A�*

	conv_loss`�e>5�EJ        )��P	���A�*

	conv_loss݆\>��P(        )��P	+4��A�*

	conv_loss�a>�x
C        )��P	r��A�*

	conv_lossw�a>u(~        )��P	l���A�*

	conv_loss�b>(p`        )��P	���A�*

	conv_loss��Q>��*        )��P	%.��A�*

	conv_loss��V>��I8        )��P	rn��A�*

	conv_loss�@a>�$D�        )��P	ݬ��A�*

	conv_loss�e>؛��        )��P	��A�*

	conv_lossL�`>&#�f        )��P	`)��A�*

	conv_loss�Ne>ɿh�        )��P	�g��A�*

	conv_loss�e\>D���        )��P	ä��A�*

	conv_loss��d>��5        )��P	x��A�*

	conv_lossûX>C)��        )��P	���A�*

	conv_lossаm>�8�        )��P	6^��A�*

	conv_lossg>O>�c�f        )��P	���A�*

	conv_lossޞW>�)�        )��P	Lڏ�A�*

	conv_loss�a>/ɦ�        )��P	���A�*

	conv_loss�J>�>>	        )��P	V��A�*

	conv_loss0�b>q]�X        )��P	����A�*

	conv_loss=Ua>�Ky        )��P	BҐ�A�*

	conv_loss�[> 1:�        )��P	���A�*

	conv_loss�`>�'n�        )��P	N��A�*

	conv_loss|']>�e�        )��P	Q���A�*

	conv_lossx>S>o�%�        )��P	Pȑ�A�*

	conv_lossX�X>;FA�        )��P	���A�*

	conv_loss�i>Z��        )��P	oD��A�*

	conv_loss��]>�u        )��P	 ���A�*

	conv_loss��S>��4        )��P	M���A�*

	conv_lossk�V>4��D        )��P	���A�*

	conv_loss�W>�?�1        )��P	��A�*

	conv_loss�a^>���        )��P	IK��A�*

	conv_loss�`> �e        )��P	����A�*

	conv_loss�JZ>VN�"        )��P	�ȕ�A�*

	conv_loss�
g> ^��        )��P	���A�*

	conv_loss�V>l�]�        )��P	fK��A�*

	conv_loss/e_>�;��        )��P	���A�*

	conv_loss#0]>����        )��P	�Ȗ�A�*

	conv_loss�<_>>\2        )��P	7��A�*

	conv_lossi�`>����        )��P	(M��A�*

	conv_lossiZ>���)        )��P	t���A�*

	conv_lossN�W>�z��        )��P	�ɗ�A�*

	conv_loss�Dc>&�#        )��P	��A�*

	conv_lossIjR>#Տ�        )��P	�H��A�*

	conv_loss��Y>�(�        )��P	����A�*

	conv_loss|�c>f��        )��P	3И�A�*

	conv_loss�EW>%� �        )��P	���A�*

	conv_loss?�[>~�J        )��P	�M��A�*

	conv_loss�L>��        )��P	���A�*

	conv_lossu�c>88o�        )��P	�ș�A�*

	conv_loss�Y`>hj"�        )��P	���A�*

	conv_loss`[>��n        )��P	�F��A�*

	conv_loss�Y>"j7�        )��P	9���A�*

	conv_loss��W>�RA        )��P	����A�*

	conv_loss�T>h�	k        )��P	���A�*

	conv_loss�RV>��        )��P	+:��A�*

	conv_loss9�X>/�V\        )��P	�w��A�*

	conv_loss?�R>t��@        )��P	͵��A�*

	conv_lossך[>���        )��P	D��A�*

	conv_loss��Y>��U        )��P	�0��A�*

	conv_loss��\>�#	        )��P	dn��A�*

	conv_loss��[>bӚ�        )��P	=���A�*

	conv_loss�AZ>��        )��P	��A�*

	conv_lossa[Y>�@A        )��P	�&��A�*

	conv_loss]\>|=Db        )��P	6e��A�*

	conv_loss�*Z>E��N        )��P	����A�*

	conv_loss�p>��        )��P	��A�*

	conv_lossW[_>e��        )��P	���A�*

	conv_loss�\>3�T�        )��P	)[��A�*

	conv_loss�H[>)���        )��P	7���A�*

	conv_loss{V>���e        )��P	7מ�A�*

	conv_loss�9[>���        )��P	���A�*

	conv_lossd�]>Pulb        )��P	�Q��A�*

	conv_loss�D`>K���        )��P	����A�*

	conv_loss,Q>yX�        )��P	ϟ�A�*

	conv_loss�[>
�>i        )��P	���A�*

	conv_loss�_>5'}        )��P	IK��A�*

	conv_lossed>�P<'        )��P	����A�*

	conv_loss\	F>[זX        )��P	!Ǡ�A�*

	conv_loss��N>���        )��P	���A�*

	conv_loss�1b>AV �        )��P	�S��A�*

	conv_lossbd>W7�        )��P	���A�*

	conv_loss��\>�o�        )��P	ϡ�A�*

	conv_lossFR>Cc        )��P	(��A�*

	conv_loss�_>�Wu�        )��P	SS��A�*

	conv_loss �g>̺��        )��P	~���A�*

	conv_loss�_>70�C        )��P	��A�*

	conv_loss;�Y>�h�        )��P	2+��A�*

	conv_loss�a>4,g        )��P	�h��A�*

	conv_loss�AL>�)��        )��P	l���A�*

	conv_loss��_>�n�        )��P	.��A�*

	conv_loss��V>kNf        )��P	�)��A�*

	conv_loss�v]>v��        )��P	4g��A�*

	conv_loss�P]>0Xy�        )��P	���A�*

	conv_loss��U>*K+        )��P	@��A�*

	conv_loss��`>"�G�        )��P	Y+��A�*

	conv_loss�P>5�յ        )��P	�n��A�*

	conv_loss��M>;�K-        )��P	.���A�*

	conv_loss��]>f*�        )��P	T��A�*

	conv_loss�*Y>�O��        )��P	{'��A�*

	conv_loss �Z>�)�        )��P	!g��A�*

	conv_lossh<Q>�ՙ        )��P	����A�*

	conv_lossk�Z>�J�z        )��P	+��A�*

	conv_loss�rU>�e        )��P	� ��A�*

	conv_loss).Q>�O        )��P	�^��A�*

	conv_loss�bS>q��L        )��P	����A�*

	conv_loss�>T>/c        )��P	�ݧ�A�*

	conv_loss\BV>�)�{        )��P	0��A�*

	conv_loss��U>��Q�        )��P	�Y��A�*

	conv_loss;gO>�J`D        )��P	����A�*

	conv_loss(�b>L���        )��P	jը�A�*

	conv_lossQ>+�a        )��P	J��A�*

	conv_loss�O]>�n�        )��P	Q��A�*

	conv_loss�T>/Ś�        )��P	0���A�*

	conv_loss�R>zsg        )��P	$Ω�A�*

	conv_loss�u[>h���        )��P	���A�*

	conv_loss7X>ir�
        )��P	�J��A�*

	conv_lossg[>�K�_        )��P	Ո��A�*

	conv_loss�@X>{        )��P	hŪ�A�*

	conv_loss�R>��g        )��P	���A�*

	conv_loss|P>7Ǿ_        )��P	�B��A�*

	conv_loss��Y>g��S        )��P	���A�*

	conv_lossd�Q>Nq�        )��P	����A�*

	conv_loss?�a>��v        )��P	����A�*

	conv_loss��]>�7�|        )��P	�7��A�*

	conv_loss�C>�ED        )��P	yv��A�*

	conv_loss��]>k�`�        )��P	7���A�*

	conv_loss'�X>GP�        )��P	����A�*

	conv_loss)M>([�        )��P	�D��A�*

	conv_loss�Q>��        )��P	����A�*

	conv_loss=�M>BC�        )��P	=ҭ�A�*

	conv_loss�^>�AEa        )��P	k��A�*

	conv_lossn*W>LW(        )��P	�M��A�*

	conv_loss�3U>s��        )��P	����A�*

	conv_lossS[O>���        )��P	�ޮ�A�*

	conv_lossy�M>t1�        )��P	�#��A�*

	conv_losst�U>���        )��P	�o��A�*

	conv_loss��I>*
Ya        )��P	����A�*

	conv_loss��P>�֨        )��P	����A�*

	conv_loss�d>�=z        )��P	19��A�*

	conv_losseqO>�7�        )��P	�v��A�*

	conv_lossw�X>����        )��P	6���A�*

	conv_loss	{R>���        )��P	T��A�*

	conv_loss��S>�)�M        )��P	,��A�*

	conv_losseS>��        )��P	lk��A�*

	conv_loss�L>� ��        )��P	����A�*

	conv_loss8�S>��        )��P	����A�*

	conv_loss�cT>K9�        )��P	i5��A�*

	conv_loss`�P>�,k�        )��P	�t��A�*

	conv_loss&qP>hE�N        )��P	����A�*

	conv_losswE>���z        )��P	���A�*

	conv_loss�O>}3�w        )��P	f-��A�*

	conv_loss��Z>@�Q�        )��P	�}��A�*

	conv_loss�#B>���        )��P	Ϻ��A�*

	conv_loss��U>)d�@        )��P	l���A�*

	conv_loss��`>X�i        )��P	8��A�*

	conv_lossc�Q>؆��        )��P	�t��A�*

	conv_loss#�H>(�.�        )��P	ᰴ�A�*

	conv_loss��K>~�        )��P	T��A�*

	conv_loss�qR>B���        )��P	�/��A�*

	conv_lossR�Z>C8E%        )��P	"o��A�*

	conv_loss�+N>���m        )��P	����A�*

	conv_loss�RK>�4O        )��P	`��A�*

	conv_loss��K>q��5        )��P	:+��A�*

	conv_loss�pQ>�2�@        )��P	�h��A�*

	conv_loss�=Z>Ɣ�s        )��P	ۦ��A�*

	conv_lossdyK>~�mF        )��P	���A�*

	conv_lossv�O>�XE        )��P	�"��A�*

	conv_lossɫN>km�        )��P	�b��A�*

	conv_lossb�S>�#=X        )��P	����A�*

	conv_loss�N>z)X�        )��P	`߷�A�*

	conv_loss�HJ>~��        )��P	���A�*

	conv_lossOL>�gE�        )��P	[��A�*

	conv_loss��P>ImZ        )��P	'���A�*

	conv_lossu�V>׬��        )��P	�ָ�A�*

	conv_lossT>z��        )��P	��A�*

	conv_loss�R>>;S�        )��P	�R��A�*

	conv_loss�iL>�T�s        )��P	Ñ��A�*

	conv_loss�H>n�         )��P	@й�A�*

	conv_loss5�\>4���        )��P	���A�*

	conv_loss�>R>[���        )��P	`��A�*

	conv_lossY�R>X�ę        )��P	����A�*

	conv_loss}�R>b��D        )��P	Eݺ�A�*

	conv_loss�bH>X}�]        )��P	�'��A�*

	conv_lossFrP>fϨ�        )��P	5h��A�*

	conv_loss��M>|�pr        )��P	����A�*

	conv_lossVY>�#�        )��P	+��A�*

	conv_lossFS>�4m�        )��P	E��A�*

	conv_lossD�U>uW�F        )��P	����A�*

	conv_loss��P>1�\        )��P	�ü�A�*

	conv_loss�jK>ǆr4        )��P	 ��A�*

	conv_loss�Q>����        )��P	�S��A�*

	conv_loss�pO>3�m        )��P	J���A�*

	conv_lossJ�G>:G�        )��P	;н�A�*

	conv_lossI�Z>�=�T        )��P	���A�*

	conv_lossm�O>����        )��P	�Z��A�*

	conv_loss��T>�+�        )��P	����A�*

	conv_loss�Q>,�F�        )��P	�߾�A�*

	conv_lossR�Q>ݦ�        )��P	���A�*

	conv_loss�Q>��S�        )��P	G]��A�*

	conv_loss�ZR>�;��        )��P	'���A�*

	conv_loss˝H>R���        )��P	�ٿ�A�*

	conv_loss#zF>��	[        )��P	��A�*

	conv_lossƳS>��w        )��P	�V��A�*

	conv_lossV�O>��d*        )��P	|���A�*

	conv_loss�O>��        )��P	���A�*

	conv_loss�|K>_A��        )��P	���A�*

	conv_loss��_>ش�t        )��P	S��A�*

	conv_loss�X>��         )��P	���A�*

	conv_loss��U>8\#�        )��P	����A�*

	conv_loss.�O>F�?n        )��P	���A�*

	conv_lossa�C>K�ky        )��P	�L��A�*

	conv_lossV�K>���        )��P	w���A�*

	conv_loss�N>!�o        )��P	����A�*

	conv_lossy-K>|        )��P	���A�*

	conv_losssK>Li�        )��P	�G��A�*

	conv_lossC�V>��        )��P	"���A�*

	conv_lossY~J>�W��        )��P	M���A�*

	conv_loss��H>�         )��P	���A�*

	conv_loss�2L>G��        )��P	�@��A�*

	conv_lossP�J>#�|d        )��P	�}��A�*

	conv_lossHaM>�R�        )��P	����A�*

	conv_loss�QL>��-h        )��P	
���A�*

	conv_loss`YL>���        )��P	7��A�*

	conv_loss�P>�;H�        )��P	�t��A�*

	conv_loss�NR>}{{�        )��P	���A�*

	conv_loss��T>2j��        )��P	 ���A�*

	conv_loss\�O>����        )��P	,2��A�*

	conv_loss��N>9��a        )��P	�o��A�*

	conv_loss �N>m*�        )��P	����A�*

	conv_loss? `>	JG�        )��P	����A�*

	conv_loss�JE>x��        )��P	� ��A�*

	conv_lossG_O>@l {        )��P	�>��A�*

	conv_lossg�Q>k��        )��P	���A�*

	conv_lossd/Y>�_        )��P	����A�*

	conv_loss�GJ>hE��        )��P	O��A�*

	conv_lossޣH>�PP�        )��P	�J��A�*

	conv_loss�lI>B��        )��P	����A�*

	conv_loss��M>�]�=        )��P	����A�*

	conv_loss�#T>����        )��P	���A�*

	conv_loss��C>���        )��P	_��A�*

	conv_lossN�F>�eź        )��P	U���A�*

	conv_loss��g>6|fV        )��P	����A�*

	conv_lossҩE>@"�2        )��P	��A�*

	conv_loss}�E>�l1�        )��P	Y��A�*

	conv_loss~"A>�޺e        )��P	���A�*

	conv_loss�f;>>=�        )��P	����A�*

	conv_loss4cG>�Z��        )��P	���A�*

	conv_loss��L>��A        )��P	�P��A�*

	conv_loss��X>5��C        )��P	S���A�*

	conv_loss��M>��        )��P	y���A�*

	conv_loss�H>&Q��        )��P	S
��A�*

	conv_loss��F>-���        )��P	fF��A�*

	conv_loss�W>=,��        )��P	����A�*

	conv_loss}T>Q.W        )��P	����A�*

	conv_loss�I>R��        )��P	���A�*

	conv_loss>*M>�$��        )��P	�;��A�*

	conv_loss�G>^���        )��P	�z��A�*

	conv_loss�yH>ܟ�        )��P	`���A�*

	conv_loss��M>7�9�        )��P	U���A�*

	conv_loss�FZ>j��&        )��P	�3��A�*

	conv_loss�FW>]L.N        )��P	�s��A�*

	conv_losscvW>U;"        )��P	����A�*

	conv_loss�_R>��i]        )��P	I���A�*

	conv_lossk8K>?�76        )��P	�,��A�*

	conv_lossRS>L�\        )��P	`k��A�*

	conv_losszMP>&7re        )��P	���A�*

	conv_loss!T>.� �        )��P	-���A�*

	conv_loss�<K>�30        )��P	y"��A�*

	conv_loss�DI>nt��        )��P	(a��A�*

	conv_loss?@>�+        )��P	���A�*

	conv_losszN>����        )��P	K���A�*

	conv_loss�YN>���        )��P	���A�*

	conv_loss@L>��\        )��P	GZ��A�*

	conv_loss5DR>ү�T        )��P	����A�*

	conv_loss�SL>\0�        )��P	����A�*

	conv_loss��^>~Ql�        )��P	j��A�*

	conv_loss3�N>5Hwc        )��P	�R��A�*

	conv_loss�wE>Z���        )��P	#���A�*

	conv_lossOM>;P        )��P	-���A�*

	conv_loss�kH>�Ę        )��P	f ��A�*

	conv_loss>pI>�iK        )��P	B]��A�*

	conv_loss�eH>�=��        )��P	���A�*

	conv_loss��S>C���        )��P	i���A�*

	conv_loss�2I>+de=        )��P	���A�*

	conv_lossd�I>��cJ        )��P	�\��A�*

	conv_loss��A>k�        )��P	f���A�*

	conv_loss�J>B,�p        )��P	)���A�*

	conv_loss��J>7�
        )��P	�$��A�*

	conv_lossۮD>���D        )��P	;m��A�*

	conv_loss/dI>l��\        )��P	o���A�*

	conv_losssZ>ަH        )��P	����A�*

	conv_loss_�K>��ݟ        )��P	y<��A�*

	conv_loss %H>$+�w        )��P	�{��A�*

	conv_loss�N>��        )��P	B���A�*

	conv_loss-�H>�<        )��P	R���A�*

	conv_loss.j[>��u        )��P	j5��A�*

	conv_loss�I>Ufl�        )��P	kr��A�*

	conv_loss�*\>�z        )��P	5���A�*

	conv_loss�(M>3�        )��P	���A�*

	conv_loss}P>aFJE        )��P	�+��A�*

	conv_loss��E>#��        )��P	k��A�*

	conv_loss�lT>Ȱm+        )��P	����A�*

	conv_loss��F>F�n        )��P	���A�*

	conv_lossv�Y>��Ĥ        )��P	�)��A�*

	conv_loss�N>gl        )��P	Gg��A�*

	conv_loss��C>A��B        )��P	����A�*

	conv_loss��^>��1�        )��P	����A�*

	conv_loss�KE>��S�        )��P	�!��A�*

	conv_loss�wI>Z|��        )��P	�_��A�*

	conv_loss�M>�/p        )��P	����A�*

	conv_lossߊJ>�c��        )��P	����A�*

	conv_loss/H>&��        )��P	��A�*

	conv_lossDqM>��        )��P	�\��A�*

	conv_loss0P>-a�        )��P	ٚ��A�*

	conv_lossX�T>Le�        )��P	����A�*

	conv_loss�1M>9Pc        )��P	)��A�*

	conv_loss��H>�$i�        )��P	�S��A�*

	conv_loss8�Q>&5�T        )��P	9���A�*

	conv_loss�J>j�>v        )��P	O���A�*

	conv_loss�h\>}�        )��P	���A�*

	conv_loss��T>C��        )��P	IL��A�*

	conv_lossj�F>�m�        )��P	.���A�*

	conv_loss�UT>�Ҹ        )��P	����A�*

	conv_loss�.?>�EM        )��P	n��A�*

	conv_loss�M>]	U�        )��P	�A��A�*

	conv_lossaBH>����        )��P	|��A�*

	conv_lossl`G>U�*|        )��P	���A�*

	conv_loss	M>���        )��P	5 ��A�*

	conv_lossKmK>
9�+        )��P	����A�*

	conv_lossۦR>��#~        )��P	����A�*

	conv_loss{�H>:ǖ�        )��P	�0��A�*

	conv_lossSU>�s�=        )��P	fn��A�*

	conv_loss�D>\��        )��P	���A�*

	conv_loss��C>���z        )��P	����A�*

	conv_loss}W>2���        )��P	�0��A�*

	conv_loss~�S>9��/        )��P	7���A�*

	conv_losseM>�a�        )��P	����A�*

	conv_lossF>�Eq�        )��P	*��A�*

	conv_loss�%F>.��        )��P	z>��A�*

	conv_loss��?>�O�         )��P	N���A�*

	conv_loss�FV>I{y�        )��P	����A�*

	conv_loss�]D>i� M        )��P	G��A�*

	conv_loss��B>�"B�        )��P	TQ��A�*

	conv_loss+�H>�	        )��P	���A�*

	conv_loss�eQ>���        )��P	���A�*

	conv_loss=nN>���p        )��P	���A�*

	conv_loss�1J>�3�"        )��P	aL��A�*

	conv_loss8�?>�k<�        )��P	j���A�*

	conv_lossT]L>��&        )��P	����A�*

	conv_loss"DH>���        )��P	5��A�*

	conv_lossc6A>��!        )��P	!C��A�*

	conv_loss�L>7��:        )��P	p���A�*

	conv_loss^�H>Aj	d        )��P	Ѿ��A�*

	conv_loss-G>N���        )��P	6���A�*

	conv_loss�o?>4`��        )��P	M<��A�*

	conv_lossҸJ>P��        )��P	~z��A�*

	conv_lossLG>��u        )��P	ͷ��A�*

	conv_loss�^C>��`        )��P	?���A�*

	conv_loss�J>��k        )��P	�6��A�*

	conv_loss��?>�),�        )��P	Ut��A�*

	conv_loss9{O>��5        )��P	����A�*

	conv_loss�M>�d[G        )��P	���A�*

	conv_loss*�B>�x�        )��P	7*��A�*

	conv_loss�A>Z�>&        )��P	�h��A�*

	conv_lossc�J>�C}~        )��P	E���A�*

	conv_loss>�J>�:�        )��P	���A�*

	conv_loss�>>M�R�        )��P	l#��A�*

	conv_loss�6H>�        )��P	n`��A�*

	conv_lossKWO>8��        )��P	}���A�*

	conv_lossJ�I>�O��        )��P	����A�*

	conv_loss�B>��7�        )��P	@��A�*

	conv_loss�[D>c��>        )��P	�W��A�*

	conv_lossl�D>�߉�        )��P	4���A�*

	conv_loss��G>y�T�        )��P	����A�*

	conv_losseTQ>��        )��P	���A�*

	conv_loss�MY>�f")        )��P	N��A�*

	conv_loss��I>`�_c        )��P	;���A�*

	conv_loss�4@>����        )��P	����A�*

	conv_loss�G>�]��        )��P	���A�*

	conv_loss��M>���        )��P	BU��A�*

	conv_lossh+F>��b�        )��P	����A�*

	conv_lossD�C>�`Fi        )��P	����A�*

	conv_loss,)S>�@�u        )��P	���A�*

	conv_loss"�C>�p�        )��P	oS��A�*

	conv_loss��F><��{        )��P	ѓ��A�*

	conv_loss2@>Rڕ�        )��P	����A�*

	conv_lossb�N>S�Bq        )��P	�5��A�*

	conv_lossk�M>#dg        )��P	Ct��A�*

	conv_loss�r<>�
Ow        )��P	����A�*

	conv_loss?!F>�0        )��P	���A�*

	conv_loss�lK>��hx        )��P	�@��A�*

	conv_loss�D>/��        )��P	���A�*

	conv_loss�!F>u<        )��P	����A�*

	conv_lossY�9>�g3�        )��P	y��A�*

	conv_loss�*@>�oyu        )��P	|K��A�*

	conv_lossLLU>�et        )��P	I���A�*

	conv_lossu C>?8 �        )��P	����A�*

	conv_loss�6I>���_        )��P	U��A�*

	conv_loss�H>�Rg�        )��P	�F��A�*

	conv_losshF>��        )��P	����A�*

	conv_lossa�=>p̀T        )��P	J���A�*

	conv_loss@�?>C��P        )��P	���A�*

	conv_loss��G>"Yg        )��P	BA��A�*

	conv_loss��D>64=[        )��P	6��A�*

	conv_loss;>�;�~        )��P	x���A�*

	conv_loss{�G>u�tR        )��P	5���A�*

	conv_loss .T>Փi        )��P	�;��A�*

	conv_loss/<>�|�        )��P	�z��A�*

	conv_loss$K>,{�        )��P	����A�*

	conv_loss��S>B�y�        )��P	����A�*

	conv_loss"�H>��C        )��P	�8��A�*

	conv_loss	�J>��A#        )��P	�v��A�*

	conv_loss��E>mu��        )��P	e���A�*

	conv_loss��F>3��        )��P	����A�*

	conv_loss�S>O*%        )��P	�1��A�*

	conv_loss7CP>ɧ�+        )��P	do��A�*

	conv_lossAB>��m�        )��P	���A�*

	conv_loss�'K>�$ܪ        )��P	����A�*

	conv_loss+�9>�\.        )��P	�-��A�*

	conv_losspb>>d`�        )��P	�l��A�*

	conv_loss`�G>��Z�        )��P	���A�*

	conv_loss&G>��D)        )��P	���A�*

	conv_loss��L>ڎ?        )��P	1'��A�*

	conv_loss,�G>`�	�        )��P	�f��A�*

	conv_lossL�?>���        )��P	����A�*

	conv_loss�I>�Z��        )��P	����A�*

	conv_loss��O>�Q9        )��P	k!��A�*

	conv_lossq�I>�!��        )��P	�`��A�*

	conv_loss�hY> 3�j        )��P	����A�*

	conv_loss��K>���        )��P	�� �A�*

	conv_loss+�J>� J        )��P	�� �A�*

	conv_loss�NJ>ɇ�        )��P	�0�A�*

	conv_lossPB>q���        )��P	ys�A�*

	conv_loss��S>ݣ	�        )��P	��A�*

	conv_lossN!@>��        )��P	���A�*

	conv_loss�EN>�r�f        )��P	�F�A�*

	conv_loss��F>���6        )��P	��A�*

	conv_lossO�L>��        )��P	O��A�*

	conv_loss E>����        )��P	E�A�*

	conv_loss��8>w[1A        )��P	�Y�A�*

	conv_loss�E>��2�        )��P	���A�*

	conv_lossM2>�}:        )��P	U��A�*

	conv_loss�P>�J�        )��P	�A�*

	conv_loss�B>t¤C        )��P	S�A�*

	conv_lossA9J>V]�-        )��P	ٖ�A�*

	conv_lossA�D>�u��        )��P	��A�*

	conv_lossaPI>��-�        )��P	r�A�*

	conv_lossry1>���A        )��P	y]�A�*

	conv_lossjMK>���        )��P	��A�*

	conv_loss��I>�r�        )��P	��A�*

	conv_loss��H>�5�        )��P	�A�*

	conv_loss�*E>IZ�        )��P	V�A�*

	conv_loss`7>`a��        )��P	Ԕ�A�*

	conv_lossX�;>ĤC�        )��P	N��A�*

	conv_loss�V>>���        )��P	s�A�*

	conv_loss�w;>��6        )��P	�Q�A�*

	conv_loss��A>��        )��P	)��A�*

	conv_loss�JG>H.�)        )��P	8��A�*

	conv_lossfHJ>��T        )��P	��A�*

	conv_loss��J>#/�        )��P	<K�A�*

	conv_loss�K7>�V�        )��P	y��A�*

	conv_loss/,F>̺��        )��P	��A�*

	conv_loss��I>�3��        )��P		�A�*

	conv_lossϾB>2���        )��P	�V	�A�*

	conv_loss%�Q>`�T�        )��P	!�	�A�*

	conv_loss8�J>,G#�        )��P	
�	�A�*

	conv_loss�<>�,c        )��P	�
�A�*

	conv_loss�B>>����        )��P	�[
�A�*

	conv_lossz�O>W        )��P	�
�A�*

	conv_loss�R>��        )��P	��
�A�*

	conv_loss�H>�.�S        )��P	p�A�*

	conv_loss�>>1x`        )��P	�Q�A�*

	conv_lossF>�}�        )��P	���A�*

	conv_loss�N>֠��        )��P	a��A�*

	conv_lossZ>>��)
        )��P	�	�A�*

	conv_loss(�9>u��)        )��P	�F�A�*

	conv_loss]jC>���        )��P	���A�*

	conv_loss�]I>=���        )��P	5��A�*

	conv_loss#[9>㮜�        )��P	��A�*

	conv_lossq�@>T��+        )��P	)X�A�*

	conv_loss�OR>r]9�        )��P	��A�*

	conv_loss�8>é��        )��P	D��A�*

	conv_lossKD>���        )��P	p�A�*

	conv_lossd�@>}�
R        )��P	�W�A�*

	conv_loss�cN>:��        )��P	v��A�*

	conv_loss$�F>�	�        )��P	[��A�*

	conv_loss��<>ƅ��        )��P	�4�A�*

	conv_lossU�I>�z�        )��P	�s�A�*

	conv_loss�C>j��~        )��P	���A�*

	conv_lossOUI>�6�        )��P		��A�*

	conv_loss��G>����        )��P	=�A�*

	conv_loss�?>��dc        )��P	t��A�*

	conv_loss�?9>|�        )��P	���A�*

	conv_loss�"M>l>�        )��P	��A�*

	conv_lossX�B>	ԣV        )��P	V�A�*

	conv_lossQ<>ps%�        )��P	���A�*

	conv_lossY6>�u�s        )��P	���A�*

	conv_lossv�9>`vls        )��P	��A�*

	conv_lossρ6>����        )��P	�P�A�*

	conv_lossY�;>g���        )��P	6��A�*

	conv_lossb�@>1N�        )��P	���A�*

	conv_loss��:>\�)z        )��P	�A�*

	conv_lossR;>�-`*        )��P	?H�A�*

	conv_loss�D>��v        )��P	,��A�*

	conv_loss7�O>��o        )��P	���A�*

	conv_lossj�Q>��E        )��P	I�A�*

	conv_loss�v;>ц��        )��P	�B�A�*

	conv_loss�BC>��        )��P	���A�*

	conv_loss�=>S�        )��P	��A�*

	conv_losst�;>��׊        )��P	s��A�*

	conv_loss^D>4>+        )��P	�;�A�*

	conv_loss��N>-��        )��P	yx�A�*

	conv_loss��>>��R        )��P	��A�*

	conv_lossW$B>Z�I        )��P	���A�*

	conv_loss�@>p�N        )��P		2�A�*

	conv_loss_6>�N�6        )��P	/p�A�*

	conv_loss��=>�&N�        )��P	���A�*

	conv_lossoA>�1��        )��P	o��A�*

	conv_loss�OD>�@�        )��P	(-�A�*

	conv_loss�1>��        )��P	j�A�*

	conv_loss�A>�m        )��P	@��A�*

	conv_losskHH>���        )��P	��A�*

	conv_loss��E>'ɬb        )��P	�"�A�*

	conv_loss/�=>+��        )��P	�a�A�*

	conv_lossհ=>L�8        )��P	���A�*

	conv_lossY-@>y���        )��P	��A�*

	conv_loss�?>�׵        )��P	��A�*

	conv_loss{�:>,��        )��P	�[�A�*

	conv_loss��9>��f/        )��P	���A�*

	conv_loss�
D>�4�        )��P	���A�*

	conv_loss��G>)R�V        )��P	�)�A�*

	conv_loss=�B>Fb��        )��P	Yf�A�*

	conv_lossH>�"        )��P	]��A�*

	conv_loss>o?>�%��        )��P	9��A�*

	conv_loss8�;>�c_        )��P	_=�A�*

	conv_loss�b<>�        )��P	o��A�*

	conv_loss��A>w��        )��P	L��A�*

	conv_lossը?>�&ه        )��P	�A�*

	conv_loss�8K>i�df        )��P	�M�A�*

	conv_loss`j?>͍w"        )��P	��A�*

	conv_loss�=9>�Ď        )��P	t��A�*

	conv_loss�>>��        )��P	N�A�*

	conv_loss�C:>V�        )��P	DF�A�*

	conv_loss�`4>��w5        )��P	��A�*

	conv_loss��:>��        )��P	@��A�*

	conv_loss�;>��A        )��P	��A�*

	conv_lossկA>/�:        )��P	PG�A�*

	conv_loss��9>yR��        )��P	���A�*

	conv_loss��>>F-��        )��P	���A�*

	conv_loss��B>Qb�!        )��P	� �A�*

	conv_lossR�/>\N�        )��P	�<�A�*

	conv_loss�D>N�8�        )��P	�{�A�*

	conv_loss{�7>�cGv        )��P	+��A�*

	conv_loss4'@>�w��        )��P	���A�*

	conv_loss�NA>硬        )��P	7 �A�*

	conv_loss�<>�w�C        )��P	�u �A�*

	conv_loss�`G>��o�        )��P	�� �A�*

	conv_loss�}5>2��        )��P	�� �A�*

	conv_loss�:>��/        )��P	�.!�A�*

	conv_loss�?>���i        )��P	�l!�A�*

	conv_loss�:>�-�b        )��P	��!�A�*

	conv_loss�G>̄כ        )��P	��!�A�*

	conv_loss�G>s        )��P	�'"�A�*

	conv_lossz?>�F        )��P	�v"�A�*

	conv_loss�J>��[�        )��P	e�"�A�*

	conv_loss �9>�̜Q        )��P	w�"�A�*

	conv_lossҪ7>%�Q}        )��P	�/#�A�*

	conv_lossJ�9>xP��        )��P	�l#�A�*

	conv_loss5�?>ҹ�        )��P	T�#�A�*

	conv_loss�P>')3        )��P	�#�A�*

	conv_loss�V9>IO�        )��P	($�A�*

	conv_loss,D9>��WJ        )��P	3f$�A�*

	conv_lossv�<>����        )��P	�$�A�*

	conv_loss��>>�'��        )��P	��$�A�*

	conv_loss֢9>E�i@        )��P	
 %�A�*

	conv_losslH>��q        )��P	h]%�A�*

	conv_loss�C>��Mp        )��P	_�%�A�*

	conv_loss>�:>$��        )��P	��%�A�*

	conv_loss8D>M��E        )��P	�&�A�*

	conv_loss�;>3�Ŕ        )��P	�g&�A�*

	conv_loss�=>�
��        )��P	�&�A�*

	conv_loss��8>k��0        )��P	;�&�A�*

	conv_loss3.6>�K��        )��P	�''�A�*

	conv_loss��=>��        )��P	�n'�A�*

	conv_lossB�;>�/�        )��P	ݬ'�A�*

	conv_loss#�>>�}�        )��P	�'�A�*

	conv_lossn@2>M��        )��P	�J(�A�*

	conv_lossjF>���,        )��P	V�(�A�*

	conv_loss�8>#���        )��P	�(�A�*

	conv_loss��7>�6z        )��P	)�A�*

	conv_loss,	C>_U$        )��P	�K)�A�*

	conv_loss�6>��c�        )��P	\�)�A�*

	conv_loss�n=>8�c�        )��P	�)�A�*

	conv_loss0�6> ��        )��P	�*�A�*

	conv_loss�7>�$B�        )��P	`I*�A�*

	conv_loss��0>v�[Q        )��P	��*�A�*

	conv_loss:S7>�mo�        )��P	g�*�A�*

	conv_lossq�5>��U�        )��P	�+�A�*

	conv_loss0�6>�q�        )��P	gS+�A�*

	conv_loss��=>G���        )��P	��+�A�*

	conv_loss-�H>\'�        )��P	��+�A�*

	conv_lossNSD>m�e�        )��P	�,�A�*

	conv_loss�LN>��        )��P	�N,�A�*

	conv_loss�7>U���        )��P	v�,�A�*

	conv_loss�:<>���h        )��P	��,�A�*

	conv_lossd�:>#d �        )��P		-�A�*

	conv_loss�L@>�5�        )��P	�F-�A�*

	conv_loss��1>b/��        )��P	0�-�A�*

	conv_loss��;>i(�        )��P	��-�A�*

	conv_lossJ%>>(���        )��P	�.�A�*

	conv_loss0{<>^ �3        )��P	d?.�A�*

	conv_lossr�A>����        )��P	}.�A�*

	conv_loss�D8>U�w�        )��P	��.�A�*

	conv_lossY�>>��g�        )��P	�.�A�*

	conv_loss~�>>'���        )��P	�</�A�*

	conv_loss=O8>�p��        )��P	��/�A�*

	conv_lossK?>��ū        )��P	j�/�A�*

	conv_lossV�<>_�tS        )��P	�0�A�*

	conv_loss7C:>��5m        )��P	`M0�A�*

	conv_loss�+A>lf�        )��P	��0�A�*

	conv_lossw�B>יz�        )��P	O�0�A�*

	conv_lossm�B>��=�        )��P	�	1�A�*

	conv_loss6<>q4�        )��P	I1�A�*

	conv_lossh�=>E��        )��P	�1�A�*

	conv_loss�m<>"��        )��P	��1�A�*

	conv_loss��2>���y        )��P	�2�A�*

	conv_loss(�3>6t�        )��P	D2�A�*

	conv_loss
�E>�;��        )��P	��2�A�*

	conv_loss��@>l�/        )��P	��2�A�*

	conv_loss#f7>��)        )��P	g�4�A�*

	conv_loss�fF>��s        )��P	�5�A�*

	conv_lossi8>i�7        )��P	"R5�A�*

	conv_loss�8>dK_        )��P	x�5�A�*

	conv_loss��+>�9��        )��P	3�5�A�*

	conv_loss�<F>�UB�        )��P	� 6�A�*

	conv_loss͉>>37�        )��P	c6�A�*

	conv_loss0O>�˵m        )��P	�6�A�*

	conv_loss,:>p��        )��P	6 7�A�*

	conv_lossX>>G�X�        )��P		D7�A�*

	conv_loss��7>�d�        )��P	Ɓ7�A�*

	conv_loss�K<>���K        )��P	�7�A�*

	conv_loss��9>TE/        )��P	w�7�A�*

	conv_loss��F>M3�        )��P	�98�A�*

	conv_loss��5>���        )��P	Pw8�A�*

	conv_loss��>>�w J        )��P	��8�A�*

	conv_lossCe1>̛��        )��P	��8�A�*

	conv_loss*�;>Q��u        )��P	W/9�A�*

	conv_loss��7>��(        )��P	�n9�A�*

	conv_lossH�6>E�;m        )��P	9�9�A�*

	conv_loss�>>�X��        )��P	�9�A�*

	conv_lossp�.>��        )��P	�*:�A�*

	conv_loss�B>j�        )��P	h:�A�*

	conv_loss%�A>م�        )��P	��:�A�*

	conv_loss	�;>6e        )��P	��:�A�*

	conv_loss�B>�m�        )��P	.";�A�*

	conv_lossj<:>�s��        )��P	_;�A�*

	conv_loss��5>�a        )��P	F�;�A�*

	conv_loss�~6>�F�        )��P	��;�A�*

	conv_loss��2>ײ %        )��P	�<�A�*

	conv_loss�>>E�E�        )��P	UT<�A�*

	conv_loss�r:>�= b        )��P	4�<�A�*

	conv_lossޡF>��U        )��P	��<�A�*

	conv_loss��8>�W\A        )��P	�
=�A�*

	conv_loss�t;>�Cö        )��P	wH=�A�*

	conv_loss��>>2���        )��P	��=�A�*

	conv_lossz�7>����        )��P	��=�A�*

	conv_loss@9>d^P        )��P	�>�A�*

	conv_lossz�7>Y�k�        )��P	d@>�A�*

	conv_lossN=>�3&        )��P	1~>�A�*

	conv_loss�'7>��        )��P	:�>�A�*

	conv_loss,V<>���        )��P	H�>�A�*

	conv_loss��9>k��        )��P	:?�A�*

	conv_loss�/>dy�        )��P	�x?�A�*

	conv_lossM8>�+9l        )��P	۷?�A�*

	conv_loss�30>�!J�        )��P	��?�A�*

	conv_lossd�?>��=        )��P	;2@�A�*

	conv_loss~)6>�>��        )��P	r@�A�*

	conv_loss��:>j��        )��P	%�@�A�*

	conv_loss�P2>�8��        )��P	>�@�A�*

	conv_loss�g@>a�        )��P	�AA�A�*

	conv_loss�C>����        )��P	R�A�A�*

	conv_loss\�@>�q        )��P	޽A�A�*

	conv_loss_7>�{        )��P	�B�A�*

	conv_loss�I>�C�        )��P	KJB�A�*

	conv_loss�0>O�        )��P	��B�A�*

	conv_loss�*8>7�B�        )��P	r�B�A�*

	conv_loss67>4�Y        )��P	�C�A�*

	conv_lossZ.>�.I�        )��P	�_C�A�*

	conv_lossH�5>��9        )��P	t�C�A�*

	conv_loss��E>՝�        )��P	x�C�A�*

	conv_lossE0>���O        )��P	�(D�A�*

	conv_loss�*4>�,[        )��P	2fD�A�*

	conv_lossm�A>PDp�        )��P	�D�A�*

	conv_loss��=>�V�        )��P	>�D�A�*

	conv_lossl�8>�c��        )��P	>$E�A�*

	conv_loss�7;>���c        )��P	�aE�A�*

	conv_loss��4>A*}        )��P	�E�A�*

	conv_loss�e->��hR        )��P	��E�A�*

	conv_loss�X>>�N��        )��P	�F�A�*

	conv_loss��?>���        )��P	�ZF�A�*

	conv_loss�2>����        )��P	��F�A�*

	conv_lossm�4>,ɠ�        )��P	'�F�A�*

	conv_loss)�:>���        )��P	�G�A�*

	conv_loss�>>���c        )��P	�VG�A�*

	conv_loss�8>ހ��        )��P	j�G�A�*

	conv_loss�;>��        )��P	��G�A�*

	conv_loss#4>���i        )��P	�H�A�*

	conv_lossQ,>i�_�        )��P	�TH�A�*

	conv_lossfX=>���R        )��P	�H�A�*

	conv_losse�6>��s        )��P	0�H�A�*

	conv_loss��6>�&        )��P	�I�A�*

	conv_loss�	D>�3�        )��P	OI�A�*

	conv_loss?�3>:�>y        )��P	ǍI�A�*

	conv_loss=>�ɦ        )��P	��I�A�*

	conv_loss�4>� ��        )��P	�J�A�*

	conv_loss�3>��h        )��P	�LJ�A�*

	conv_loss,=2>`���        )��P	R�J�A�*

	conv_loss�49>���        )��P	��J�A�*

	conv_loss?O8>�2�x        )��P	#K�A�*

	conv_loss��L>�0��        )��P	KDK�A�*

	conv_lossK�9>楹Z        )��P	ȃK�A�*

	conv_loss��E>�{��        )��P	R�K�A�*

	conv_loss @>��	        )��P	UL�A�*

	conv_lossي,>�Ád        )��P	�@L�A�*

	conv_loss��.>.��        )��P	�~L�A�*

	conv_loss�2>Q��        )��P	W�L�A�*

	conv_loss�:>Uג        )��P	��L�A�*

	conv_loss�9@>e�c        )��P	�9M�A�*

	conv_loss�).>:��        )��P	&wM�A�*

	conv_loss��C>�<        )��P	��M�A�*

	conv_loss�<>�H]�        )��P	�	N�A�*

	conv_loss�v->�(��        )��P	&HN�A�*

	conv_loss�7>L0C        )��P	�N�A�*

	conv_loss#�5>��        )��P	��N�A�*

	conv_lossCa:>a!Ll        )��P	�O�A�*

	conv_loss��5>����        )��P	+GO�A�*

	conv_loss	�1>[���        )��P	o�O�A�*

	conv_lossx6>����        )��P	��O�A�*

	conv_loss� 9>Psߦ        )��P	P�A�*

	conv_lossQ�G>;5�        )��P	�XP�A�*

	conv_loss"1>���Q        )��P	�P�A�*

	conv_loss0<>�9V        )��P	p�P�A�*

	conv_loss��1>*%        )��P	�&Q�A�*

	conv_loss�a1>Y��"        )��P	�dQ�A�*

	conv_lossw�;>t�        )��P	&�Q�A�*

	conv_loss!>>- "�        )��P	;�Q�A�*

	conv_losslk,>A�u2        )��P	R�A�*

	conv_loss��6>���&        )��P	_R�A�*

	conv_loss��3>ѥ��        )��P	ÝR�A�*

	conv_lossw�>>5��        )��P	��R�A�*

	conv_loss�o1>��|�        )��P	�S�A�*

	conv_losso0>O��4        )��P	|VS�A�*

	conv_loss�7>"y�)        )��P	�S�A�*

	conv_loss�g5>pߓ        )��P	\�S�A�*

	conv_loss�2>��	�        )��P	8T�A�*

	conv_losse�0>��         )��P	rOT�A�*

	conv_lossE>C\U�        )��P	��T�A�*

	conv_loss��2>��$        )��P	��T�A�*

	conv_loss�@>�/�        )��P	�U�A�*

	conv_loss��3>��        )��P	vFU�A�*

	conv_losseS6>�j&�        )��P	|�U�A�*

	conv_loss�?>]�Vu        )��P	��U�A�*

	conv_loss�6>}Uz�        )��P	�V�A�*

	conv_lossis>>,��        )��P	VMV�A�*

	conv_loss��0>e./#        )��P	�V�A�*

	conv_loss��5>��q        )��P	"�V�A�*

	conv_loss��6>'x[�        )��P	�
W�A�*

	conv_losss?;>�\4�        )��P	pHW�A�*

	conv_lossFI6>v:        )��P	�W�A�*

	conv_lossG�1>O� �        )��P	#�W�A�*

	conv_loss	�4>_X#�        )��P	^X�A�*

	conv_loss��4>����        )��P	�UX�A�*

	conv_lossr�5>��}        )��P	ؒX�A�*

	conv_loss��+>e9U        )��P	��X�A�*

	conv_lossR�0>�_�        )��P	cY�A�*

	conv_loss�o=>{8i&        )��P	}NY�A�*

	conv_loss��/>��7S        )��P	��Y�A�*

	conv_loss��1>i{rl        )��P	Z�Y�A�*

	conv_loss�=>n��M        )��P	�Z�A�*

	conv_loss��0>K�n�        )��P	ZZ�A�*

	conv_loss	�5>U!�c        )��P	
�Z�A�*

	conv_loss��;>O�3I        )��P	��Z�A�*

	conv_loss�0>ق�        )��P	n[�A�*

	conv_loss�;0>��y�        )��P	�Y[�A�*

	conv_loss�H;>��        )��P	�[�A�*

	conv_loss��7>�C��        )��P	��[�A�*

	conv_loss�63>*�        )��P	�%\�A�*

	conv_loss��9>]J�U        )��P	+d\�A�*

	conv_loss]B3>��E        )��P	��\�A�*

	conv_lossGE/>;        )��P	��\�A�*

	conv_loss��E>�N�a        )��P	k4]�A�*

	conv_loss#8>���        )��P	8u]�A�*

	conv_loss��<>;�t�        )��P	ݳ]�A�*

	conv_lossg#5>V�	�        )��P	��]�A�*

	conv_lossV<>��        )��P	�0^�A�*

	conv_loss;�*>	�98        )��P	�o^�A�*

	conv_lossj4>z��        )��P	w�^�A�*

	conv_loss�2>�2�        )��P	 �^�A�*

	conv_loss߬=>'^|�        )��P	-_�A�*

	conv_loss��/>��        )��P	�j_�A�*

	conv_loss��3>��[�        )��P	W�_�A�*

	conv_loss0!D>�:f        )��P	=�_�A�*

	conv_loss��5>MJ�R        )��P	�&`�A�*

	conv_loss��:>�)gK        )��P	�c`�A�*

	conv_lossTv<>,��m        )��P	ʡ`�A�*

	conv_loss�+8>�h�        )��P	s�`�A�*

	conv_loss�<>��~�        )��P	� a�A�*

	conv_loss;0>��e        )��P	�]a�A�*

	conv_loss^�:>����        )��P	Ûa�A�*

	conv_loss?&4>-�        )��P	a�a�A�*

	conv_lossO�(>X`��        )��P	|b�A�*

	conv_loss/�6>>�vl        )��P	cUb�A�*

	conv_losseT1>f5��        )��P	��b�A�*

	conv_loss��1>:��        )��P	f�b�A�*

	conv_loss@->��	S        )��P	�c�A�*

	conv_loss�w+>����        )��P	�Nc�A�*

	conv_loss��2>���T        )��P	Ѝc�A�*

	conv_loss�+5>D�,�        )��P	$�c�A�*

	conv_loss/�>>;��        )��P	�
d�A�*

	conv_loss�.%>���        )��P	�Jd�A�*

	conv_lossQ+=>VBE        )��P	��d�A�*

	conv_loss�{5>S��        )��P	��d�A�*

	conv_lossLY7>����        )��P	�e�A�*

	conv_loss_?.>��        )��P	)De�A�*

	conv_loss�5>��{>        )��P	8�e�A�*

	conv_losse5>�t�        )��P	H�e�A�*

	conv_loss��<>��X6        )��P	�f�A�*

	conv_loss�6>��|        )��P	=Af�A�*

	conv_loss4�6>��/