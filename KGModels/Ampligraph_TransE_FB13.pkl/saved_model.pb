��	
��
.
Abs
x"T
y"T"
Ttype:

2	
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
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
�
MutableDenseHashTableV2
	empty_key"	key_dtype
deleted_key"	key_dtype
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype"
value_shapeshape: " 
initial_num_bucketsint��"
max_load_factorfloat%��L?�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
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
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
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
�
<scoring_based_embedding_model/embedding_lookup_layer/rel_embVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*M
shared_name><scoring_based_embedding_model/embedding_lookup_layer/rel_emb
�
Pscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Read/ReadVariableOpReadVariableOp<scoring_based_embedding_model/embedding_lookup_layer/rel_emb*
_output_shapes

:d*
dtype0
�
<scoring_based_embedding_model/embedding_lookup_layer/ent_embVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*M
shared_name><scoring_based_embedding_model/embedding_lookup_layer/ent_emb
�
Pscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Read/ReadVariableOpReadVariableOp<scoring_based_embedding_model/embedding_lookup_layer/ent_emb*
_output_shapes
:	�d*
dtype0
T
	empty_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������
V
deleted_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
MutableDenseHashTableMutableDenseHashTableV2	empty_keydeleted_key*
_output_shapes
: *
	key_dtype0*
shared_name
table_5880*
value_dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1<scoring_based_embedding_model/embedding_lookup_layer/ent_emb<scoring_based_embedding_model/embedding_lookup_layer/rel_emb*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *,
f'R%
#__inference_signature_wrapper_13332
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *'
f"R 
__inference__initializer_13724

NoOpNoOp^PartitionedCall
�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableDenseHashTable*
Tkeys0*
Tvalues0*(
_class
loc:@MutableDenseHashTable*
_output_shapes

::
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
scoring_layer
	corruption_layer

encoding_layer
focusE_params
partitioner_metadata
mapping_dict

use_filter
	all_ranks

_get_ranks

signatures*

0
1*

0
1*

0
1* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
 trace_1
!trace_2
"trace_3* 
* 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
ent_emb
rel_emb*
* 
* 
k
5_create_resource
6_initialize
7_destroy_resource'
tablemapping_dict/.ATTRIBUTES/table*
* 
* 
* 

8serving_default* 
|v
VARIABLE_VALUE<scoring_based_embedding_model/embedding_lookup_layer/ent_emb&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE<scoring_based_embedding_model/embedding_lookup_layer/rel_emb&variables/1/.ATTRIBUTES/VARIABLE_VALUE*

9trace_0* 

:trace_0* 
* 

0
	1

2*

;0*
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
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

Atrace_0* 

Btrace_0* 
* 
* 
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

Htrace_0* 

Itrace_0* 

0
1*

0
1*

0
1* 
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

Otrace_0* 

Ptrace_0* 

Qtrace_0* 

Rtrace_0* 

Strace_0* 
* 
* 
* 
8
T	variables
U	keras_api
	Vtotal
	Wcount*
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

0
1* 
* 
* 
* 
* 
* 
* 

V0
W1*

T	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename<scoring_based_embedding_model/embedding_lookup_layer/ent_emb<scoring_based_embedding_model/embedding_lookup_layer/rel_embtotalcountDMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2FMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:1Const*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *'
f"R 
__inference__traced_save_13811
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameMutableDenseHashTable<scoring_based_embedding_model/embedding_lookup_layer/ent_emb<scoring_based_embedding_model/embedding_lookup_layer/rel_embtotalcount*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � **
f%R#
!__inference__traced_restore_13836��
�0
�
__inference__traced_save_13811
file_prefixf
Sread_disablecopyonread_scoring_based_embedding_model_embedding_lookup_layer_ent_emb:	�dg
Uread_1_disablecopyonread_scoring_based_embedding_model_embedding_lookup_layer_rel_emb:d(
read_2_disablecopyonread_total: (
read_3_disablecopyonread_count: O
Ksavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2Q
Msavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2_1
savev2_const

identity_9��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOpw
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
: �
Read/DisableCopyOnReadDisableCopyOnReadSread_disablecopyonread_scoring_based_embedding_model_embedding_lookup_layer_ent_emb"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpSread_disablecopyonread_scoring_based_embedding_model_embedding_lookup_layer_ent_emb^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�d*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�db

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�d�
Read_1/DisableCopyOnReadDisableCopyOnReadUread_1_disablecopyonread_scoring_based_embedding_model_embedding_lookup_layer_rel_emb"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOpUread_1_disablecopyonread_scoring_based_embedding_model_embedding_lookup_layer_rel_emb^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:dc

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:dr
Read_2/DisableCopyOnReadDisableCopyOnReadread_2_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOpread_2_disablecopyonread_total^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0e

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: r
Read_3/DisableCopyOnReadDisableCopyOnReadread_3_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpread_3_disablecopyonread_count^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0e

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: [

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B#mapping_dict/.ATTRIBUTES/table-keysB%mapping_dict/.ATTRIBUTES/table-valuesB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Ksavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2Msavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2_1Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
	2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h

Identity_8Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: S

Identity_9IdentityIdentity_8:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_9Identity_9:output:0*'
_input_shapes
: : : : : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp:

_output_shapes
: :

_output_shapes
::

_output_shapes
::C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
c
&__inference_TransE_layer_call_fn_13584
	triples_0
	triples_1
	triples_2
identity�
PartitionedCallPartitionedCall	triples_0	triples_1	triples_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *J
fERC
A__inference_TransE_layer_call_and_return_conditional_losses_13065\
IdentityIdentityPartitionedCall:output:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������d:���������d:���������d:RN
'
_output_shapes
:���������d
#
_user_specified_name	triples_2:RN
'
_output_shapes
:���������d
#
_user_specified_name	triples_1:R N
'
_output_shapes
:���������d
#
_user_specified_name	triples_0
�
.
__inference__initializer_13724
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�,
x
\__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_13116
pos
identity�_
Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"
      \
TileTileposTile/multiples:output:0*
T0*'
_output_shapes
:���������P
ShapeShapeTile:output:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
random_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:T
random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : T
random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
random_uniformRandomUniformIntrandom_uniform/shape:output:0random_uniform/min:output:0random_uniform/max:output:0*

Tout0*
T0*#
_output_shapes
:���������*
seed2����b
CastCastrandom_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:���������G

LogicalNot
LogicalNotCast:y:0*#
_output_shapes
:���������U
Cast_1CastCast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������[
Cast_2CastLogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������R
Shape_1ShapeTile:output:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
random_uniform_1/shapePackstrided_slice_1:output:0*
N*
T0*
_output_shapes
:V
random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : W
random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
value
B :��
random_uniform_1RandomUniformIntrandom_uniform_1/shape:output:0random_uniform_1/min:output:0random_uniform_1/max:output:0*

Tout0*
T0*#
_output_shapes
:���������*
seed2����f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceTile:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask^
MulMul
Cast_1:y:0strided_slice_2:output:0*
T0*#
_output_shapes
:���������a
Mul_1Mul
Cast_2:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������N
AddAddV2Mul:z:0	Mul_1:z:0*
T0*#
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceTile:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceTile:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_2Mul
Cast_2:y:0strided_slice_4:output:0*
T0*#
_output_shapes
:���������a
Mul_3Mul
Cast_1:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������R
Add_1AddV2	Mul_2:z:0	Mul_3:z:0*
T0*#
_output_shapes
:���������v
stackPackAdd:z:0strided_slice_3:output:0	Add_1:z:0*
N*
T0*'
_output_shapes
:���������_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       q
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*'
_output_shapes
:���������U
IdentityIdentitytranspose:y:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:L H
'
_output_shapes
:���������

_user_specified_namepos
�>
�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13142
input_1/
embedding_lookup_layer_13045:	�d.
embedding_lookup_layer_13047:d
identity

identity_1��9corruption_generation_layer_train/StatefulPartitionedCall�.embedding_lookup_layer/StatefulPartitionedCall�0embedding_lookup_layer/StatefulPartitionedCall_1�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
.embedding_lookup_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_lookup_layer_13045embedding_lookup_layer_13047*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *Z
fURS
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13044�
TransE/PartitionedCallPartitionedCall7embedding_lookup_layer/StatefulPartitionedCall:output:07embedding_lookup_layer/StatefulPartitionedCall:output:17embedding_lookup_layer/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *J
fERC
A__inference_TransE_layer_call_and_return_conditional_losses_13065�
9corruption_generation_layer_train/StatefulPartitionedCallStatefulPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *e
f`R^
\__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_13116�
0embedding_lookup_layer/StatefulPartitionedCall_1StatefulPartitionedCallBcorruption_generation_layer_train/StatefulPartitionedCall:output:0embedding_lookup_layer_13045embedding_lookup_layer_13047*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *Z
fURS
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13044�
TransE/PartitionedCall_1PartitionedCall9embedding_lookup_layer/StatefulPartitionedCall_1:output:09embedding_lookup_layer/StatefulPartitionedCall_1:output:19embedding_lookup_layer/StatefulPartitionedCall_1:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *J
fERC
A__inference_TransE_layer_call_and_return_conditional_losses_13065�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_13045*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_13047*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityTransE/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������n

Identity_1Identity!TransE/PartitionedCall_1:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp:^corruption_generation_layer_train/StatefulPartitionedCall/^embedding_lookup_layer/StatefulPartitionedCall1^embedding_lookup_layer/StatefulPartitionedCall_1\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2v
9corruption_generation_layer_train/StatefulPartitionedCall9corruption_generation_layer_train/StatefulPartitionedCall2d
0embedding_lookup_layer/StatefulPartitionedCall_10embedding_lookup_layer/StatefulPartitionedCall_12`
.embedding_lookup_layer/StatefulPartitionedCall.embedding_lookup_layer/StatefulPartitionedCall2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�	
~
A__inference_TransE_layer_call_and_return_conditional_losses_13597
	triples_0
	triples_1
	triples_2
identityT
addAddV2	triples_0	triples_1*
T0*'
_output_shapes
:���������dP
subSubadd:z:0	triples_2*
T0*'
_output_shapes
:���������dJ
norm/AbsAbssub:z:0*
T0*'
_output_shapes
:���������d\
norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
norm/SumSumnorm/Abs:y:0#norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(o
norm/SqueezeSqueezenorm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
O
NegNegnorm/Squeeze:output:0*
T0*#
_output_shapes
:���������K
IdentityIdentityNeg:y:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������d:���������d:���������d:RN
'
_output_shapes
:���������d
#
_user_specified_name	triples_2:RN
'
_output_shapes
:���������d
#
_user_specified_name	triples_1:R N
'
_output_shapes
:���������d
#
_user_specified_name	triples_0
�S
�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13535

inputs@
-embedding_lookup_layer_embedding_lookup_13489:	�dA
/embedding_lookup_layer_embedding_lookup_1_13498:d
identity��'embedding_lookup_layer/embedding_lookup�)embedding_lookup_layer/embedding_lookup_1�)embedding_lookup_layer/embedding_lookup_2�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp{
*embedding_lookup_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        }
,embedding_lookup_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,embedding_lookup_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$embedding_lookup_layer/strided_sliceStridedSliceinputs3embedding_lookup_layer/strided_slice/stack:output:05embedding_lookup_layer/strided_slice/stack_1:output:05embedding_lookup_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
'embedding_lookup_layer/embedding_lookupResourceGather-embedding_lookup_layer_embedding_lookup_13489-embedding_lookup_layer/strided_slice:output:0*
Tindices0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13489*'
_output_shapes
:���������d*
dtype0�
0embedding_lookup_layer/embedding_lookup/IdentityIdentity0embedding_lookup_layer/embedding_lookup:output:0*
T0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13489*'
_output_shapes
:���������d�
2embedding_lookup_layer/embedding_lookup/Identity_1Identity9embedding_lookup_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������d}
,embedding_lookup_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_1StridedSliceinputs5embedding_lookup_layer/strided_slice_1/stack:output:07embedding_lookup_layer/strided_slice_1/stack_1:output:07embedding_lookup_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_1ResourceGather/embedding_lookup_layer_embedding_lookup_1_13498/embedding_lookup_layer/strided_slice_1:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer/embedding_lookup_1/13498*'
_output_shapes
:���������d*
dtype0�
2embedding_lookup_layer/embedding_lookup_1/IdentityIdentity2embedding_lookup_layer/embedding_lookup_1:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer/embedding_lookup_1/13498*'
_output_shapes
:���������d�
4embedding_lookup_layer/embedding_lookup_1/Identity_1Identity;embedding_lookup_layer/embedding_lookup_1/Identity:output:0*
T0*'
_output_shapes
:���������d}
,embedding_lookup_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_2StridedSliceinputs5embedding_lookup_layer/strided_slice_2/stack:output:07embedding_lookup_layer/strided_slice_2/stack_1:output:07embedding_lookup_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_2ResourceGather-embedding_lookup_layer_embedding_lookup_13489/embedding_lookup_layer/strided_slice_2:output:0*
Tindices0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13489*'
_output_shapes
:���������d*
dtype0�
2embedding_lookup_layer/embedding_lookup_2/IdentityIdentity2embedding_lookup_layer/embedding_lookup_2:output:0*
T0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13489*'
_output_shapes
:���������d�
4embedding_lookup_layer/embedding_lookup_2/Identity_1Identity;embedding_lookup_layer/embedding_lookup_2/Identity:output:0*
T0*'
_output_shapes
:���������d�

TransE/addAddV2;embedding_lookup_layer/embedding_lookup/Identity_1:output:0=embedding_lookup_layer/embedding_lookup_1/Identity_1:output:0*
T0*'
_output_shapes
:���������d�

TransE/subSubTransE/add:z:0=embedding_lookup_layer/embedding_lookup_2/Identity_1:output:0*
T0*'
_output_shapes
:���������dX
TransE/norm/AbsAbsTransE/sub:z:0*
T0*'
_output_shapes
:���������dc
!TransE/norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
TransE/norm/SumSumTransE/norm/Abs:y:0*TransE/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(}
TransE/norm/SqueezeSqueezeTransE/norm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
]

TransE/NegNegTransE/norm/Squeeze:output:0*
T0*#
_output_shapes
:����������
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOp-embedding_lookup_layer_embedding_lookup_13489*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_lookup_layer_embedding_lookup_1_13498*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: Y
IdentityIdentityTransE/Neg:y:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp(^embedding_lookup_layer/embedding_lookup*^embedding_lookup_layer/embedding_lookup_1*^embedding_lookup_layer/embedding_lookup_2\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2V
)embedding_lookup_layer/embedding_lookup_1)embedding_lookup_layer/embedding_lookup_12V
)embedding_lookup_layer/embedding_lookup_2)embedding_lookup_layer/embedding_lookup_22R
'embedding_lookup_layer/embedding_lookup'embedding_lookup_layer/embedding_lookup2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
!__inference__traced_restore_13836
file_prefixW
Mmutabledensehashtable_table_restore_lookuptableimportv2_mutabledensehashtable: `
Massignvariableop_scoring_based_embedding_model_embedding_lookup_layer_ent_emb:	�da
Oassignvariableop_1_scoring_based_embedding_model_embedding_lookup_layer_rel_emb:d"
assignvariableop_2_total: "
assignvariableop_3_count: 

identity_5��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�7MutableDenseHashTable_table_restore/LookupTableImportV2�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B#mapping_dict/.ATTRIBUTES/table-keysB%mapping_dict/.ATTRIBUTES/table-valuesB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2�
7MutableDenseHashTable_table_restore/LookupTableImportV2LookupTableImportV2Mmutabledensehashtable_table_restore_lookuptableimportv2_mutabledensehashtableRestoreV2:tensors:0RestoreV2:tensors:1*	
Tin0*

Tout0*(
_class
loc:@MutableDenseHashTable*&
 _has_manual_control_dependencies(*
_output_shapes
 [
IdentityIdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpMassignvariableop_scoring_based_embedding_model_embedding_lookup_layer_ent_embIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpOassignvariableop_1_scoring_based_embedding_model_embedding_lookup_layer_rel_embIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_totalIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_countIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_38^MutableDenseHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_38^MutableDenseHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*
_input_shapes
: : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32$
AssignVariableOpAssignVariableOp2r
7MutableDenseHashTable_table_restore/LookupTableImportV27MutableDenseHashTable_table_restore/LookupTableImportV2:.*
(
_class
loc:@MutableDenseHashTable:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
#__inference_signature_wrapper_13332
input_1
unknown:	�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *)
f$R"
 __inference__wrapped_model_12992k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�	
|
A__inference_TransE_layer_call_and_return_conditional_losses_13065
triples
	triples_1
	triples_2
identityR
addAddV2triples	triples_1*
T0*'
_output_shapes
:���������dP
subSubadd:z:0	triples_2*
T0*'
_output_shapes
:���������dJ
norm/AbsAbssub:z:0*
T0*'
_output_shapes
:���������d\
norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
norm/SumSumnorm/Abs:y:0#norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(o
norm/SqueezeSqueezenorm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
O
NegNegnorm/Squeeze:output:0*
T0*#
_output_shapes
:���������K
IdentityIdentityNeg:y:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������d:���������d:���������d:PL
'
_output_shapes
:���������d
!
_user_specified_name	triples:PL
'
_output_shapes
:���������d
!
_user_specified_name	triples:P L
'
_output_shapes
:���������d
!
_user_specified_name	triples
�C
�
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13044

sample)
embedding_lookup_13003:	�d*
embedding_lookup_1_13012:d
identity

identity_1

identity_2��embedding_lookup�embedding_lookup_1�embedding_lookup_2�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicesamplestrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookupResourceGatherembedding_lookup_13003strided_slice:output:0*
Tindices0*)
_class
loc:@embedding_lookup/13003*'
_output_shapes
:���������d*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/13003*'
_output_shapes
:���������d}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������df
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicesamplestrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_1ResourceGatherembedding_lookup_1_13012strided_slice_1:output:0*
Tindices0*+
_class!
loc:@embedding_lookup_1/13012*'
_output_shapes
:���������d*
dtype0�
embedding_lookup_1/IdentityIdentityembedding_lookup_1:output:0*
T0*+
_class!
loc:@embedding_lookup_1/13012*'
_output_shapes
:���������d�
embedding_lookup_1/Identity_1Identity$embedding_lookup_1/Identity:output:0*
T0*'
_output_shapes
:���������df
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicesamplestrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_2ResourceGatherembedding_lookup_13003strided_slice_2:output:0*
Tindices0*)
_class
loc:@embedding_lookup/13003*'
_output_shapes
:���������d*
dtype0�
embedding_lookup_2/IdentityIdentityembedding_lookup_2:output:0*
T0*)
_class
loc:@embedding_lookup/13003*'
_output_shapes
:���������d�
embedding_lookup_2/Identity_1Identity$embedding_lookup_2/Identity:output:0*
T0*'
_output_shapes
:���������d�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_13003*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_1_13012*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������dw

Identity_1Identity&embedding_lookup_1/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������dw

Identity_2Identity&embedding_lookup_2/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^embedding_lookup^embedding_lookup_1^embedding_lookup_2\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2(
embedding_lookup_1embedding_lookup_12(
embedding_lookup_2embedding_lookup_22$
embedding_lookupembedding_lookup2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_namesample
�	
�
=__inference_scoring_based_embedding_model_layer_call_fn_13343

inputs
unknown:	�d
	unknown_0:d
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *a
f\RZ
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13209k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������m

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�C
�
 __inference__wrapped_model_12992
input_1^
Kscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_12962:	�d_
Mscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_1_12971:d
identity��Escoring_based_embedding_model/embedding_lookup_layer/embedding_lookup�Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1�Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2�
Hscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Jscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Jscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Bscoring_based_embedding_model/embedding_lookup_layer/strided_sliceStridedSliceinput_1Qscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack:output:0Sscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack_1:output:0Sscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Escoring_based_embedding_model/embedding_lookup_layer/embedding_lookupResourceGatherKscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_12962Kscoring_based_embedding_model/embedding_lookup_layer/strided_slice:output:0*
Tindices0*^
_classT
RPloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/12962*'
_output_shapes
:���������d*
dtype0�
Nscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/IdentityIdentityNscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup:output:0*
T0*^
_classT
RPloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/12962*'
_output_shapes
:���������d�
Pscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/Identity_1IdentityWscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������d�
Jscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Dscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1StridedSliceinput_1Sscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack:output:0Uscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack_1:output:0Uscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1ResourceGatherMscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_1_12971Mscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1:output:0*
Tindices0*`
_classV
TRloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/12971*'
_output_shapes
:���������d*
dtype0�
Pscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/IdentityIdentityPscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1:output:0*
T0*`
_classV
TRloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/12971*'
_output_shapes
:���������d�
Rscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/Identity_1IdentityYscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/Identity:output:0*
T0*'
_output_shapes
:���������d�
Jscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Dscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2StridedSliceinput_1Sscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack:output:0Uscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack_1:output:0Uscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2ResourceGatherKscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_12962Mscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2:output:0*
Tindices0*^
_classT
RPloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/12962*'
_output_shapes
:���������d*
dtype0�
Pscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2/IdentityIdentityPscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2:output:0*
T0*^
_classT
RPloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/12962*'
_output_shapes
:���������d�
Rscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2/Identity_1IdentityYscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2/Identity:output:0*
T0*'
_output_shapes
:���������d�
(scoring_based_embedding_model/TransE/addAddV2Yscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/Identity_1:output:0[scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/Identity_1:output:0*
T0*'
_output_shapes
:���������d�
(scoring_based_embedding_model/TransE/subSub,scoring_based_embedding_model/TransE/add:z:0[scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2/Identity_1:output:0*
T0*'
_output_shapes
:���������d�
-scoring_based_embedding_model/TransE/norm/AbsAbs,scoring_based_embedding_model/TransE/sub:z:0*
T0*'
_output_shapes
:���������d�
?scoring_based_embedding_model/TransE/norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
-scoring_based_embedding_model/TransE/norm/SumSum1scoring_based_embedding_model/TransE/norm/Abs:y:0Hscoring_based_embedding_model/TransE/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
1scoring_based_embedding_model/TransE/norm/SqueezeSqueeze6scoring_based_embedding_model/TransE/norm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
�
(scoring_based_embedding_model/TransE/NegNeg:scoring_based_embedding_model/TransE/norm/Squeeze:output:0*
T0*#
_output_shapes
:���������w
IdentityIdentity,scoring_based_embedding_model/TransE/Neg:y:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpF^scoring_based_embedding_model/embedding_lookup_layer/embedding_lookupH^scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1H^scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2�
Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_12�
Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_22�
Escoring_based_embedding_model/embedding_lookup_layer/embedding_lookupEscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�.
�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13248

inputs/
embedding_lookup_layer_13223:	�d.
embedding_lookup_layer_13225:d
identity��.embedding_lookup_layer/StatefulPartitionedCall�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
.embedding_lookup_layer/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_lookup_layer_13223embedding_lookup_layer_13225*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *Z
fURS
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13044�
TransE/PartitionedCallPartitionedCall7embedding_lookup_layer/StatefulPartitionedCall:output:07embedding_lookup_layer/StatefulPartitionedCall:output:17embedding_lookup_layer/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *J
fERC
A__inference_TransE_layer_call_and_return_conditional_losses_13065�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_13223*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_13225*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityTransE/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp/^embedding_lookup_layer/StatefulPartitionedCall\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2`
.embedding_lookup_layer/StatefulPartitionedCall.embedding_lookup_layer/StatefulPartitionedCall2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
6__inference_embedding_lookup_layer_layer_call_fn_13664

sample
unknown:	�d
	unknown_0:d
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsampleunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *Z
fURS
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13044o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_namesample
�	
�
__inference_restore_fn_13756
restored_tensors_0
restored_tensors_1H
Dmutabledensehashtable_table_restore_lookuptableimportv2_table_handle
identity��7MutableDenseHashTable_table_restore/LookupTableImportV2�
7MutableDenseHashTable_table_restore/LookupTableImportV2LookupTableImportV2Dmutabledensehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp8^MutableDenseHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2r
7MutableDenseHashTable_table_restore/LookupTableImportV27MutableDenseHashTable_table_restore/LookupTableImportV2:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0
�
�
=__inference_scoring_based_embedding_model_layer_call_fn_13352

inputs
unknown:	�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *a
f\RZ
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13248k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
=__inference_scoring_based_embedding_model_layer_call_fn_13255
input_1
unknown:	�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *a
f\RZ
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13248k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
__inference_loss_fn_1_13577v
dscoring_based_embedding_model_embedding_lookup_layer_rel_emb_regularizer_abs_readvariableop_resource:d
identity��[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpdscoring_based_embedding_model_embedding_lookup_layer_rel_emb_regularizer_abs_readvariableop_resource*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentityPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp
�
�
__inference_loss_fn_0_13564w
dscoring_based_embedding_model_embedding_lookup_layer_ent_emb_regularizer_abs_readvariableop_resource:	�d
identity��[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpdscoring_based_embedding_model_embedding_lookup_layer_ent_emb_regularizer_abs_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentityPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp
�	
�
=__inference_scoring_based_embedding_model_layer_call_fn_13218
input_1
unknown:	�d
	unknown_0:d
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *a
f\RZ
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13209k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������m

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�,
x
\__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_13651
pos
identity�_
Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"
      \
TileTileposTile/multiples:output:0*
T0*'
_output_shapes
:���������P
ShapeShapeTile:output:0*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
random_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:T
random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : T
random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
random_uniformRandomUniformIntrandom_uniform/shape:output:0random_uniform/min:output:0random_uniform/max:output:0*

Tout0*
T0*#
_output_shapes
:���������*
seed2����b
CastCastrandom_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:���������G

LogicalNot
LogicalNotCast:y:0*#
_output_shapes
:���������U
Cast_1CastCast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������[
Cast_2CastLogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������R
Shape_1ShapeTile:output:0*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
random_uniform_1/shapePackstrided_slice_1:output:0*
N*
T0*
_output_shapes
:V
random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : W
random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
value
B :��
random_uniform_1RandomUniformIntrandom_uniform_1/shape:output:0random_uniform_1/min:output:0random_uniform_1/max:output:0*

Tout0*
T0*#
_output_shapes
:���������*
seed2����f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceTile:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask^
MulMul
Cast_1:y:0strided_slice_2:output:0*
T0*#
_output_shapes
:���������a
Mul_1Mul
Cast_2:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������N
AddAddV2Mul:z:0	Mul_1:z:0*
T0*#
_output_shapes
:���������f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceTile:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceTile:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_2Mul
Cast_2:y:0strided_slice_4:output:0*
T0*#
_output_shapes
:���������a
Mul_3Mul
Cast_1:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������R
Add_1AddV2	Mul_2:z:0	Mul_3:z:0*
T0*#
_output_shapes
:���������v
stackPackAdd:z:0strided_slice_3:output:0	Add_1:z:0*
N*
T0*'
_output_shapes
:���������_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       q
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*'
_output_shapes
:���������U
IdentityIdentitytranspose:y:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:L H
'
_output_shapes
:���������

_user_specified_namepos
�C
�
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13712

sample)
embedding_lookup_13671:	�d*
embedding_lookup_1_13680:d
identity

identity_1

identity_2��embedding_lookup�embedding_lookup_1�embedding_lookup_2�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicesamplestrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookupResourceGatherembedding_lookup_13671strided_slice:output:0*
Tindices0*)
_class
loc:@embedding_lookup/13671*'
_output_shapes
:���������d*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/13671*'
_output_shapes
:���������d}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������df
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicesamplestrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_1ResourceGatherembedding_lookup_1_13680strided_slice_1:output:0*
Tindices0*+
_class!
loc:@embedding_lookup_1/13680*'
_output_shapes
:���������d*
dtype0�
embedding_lookup_1/IdentityIdentityembedding_lookup_1:output:0*
T0*+
_class!
loc:@embedding_lookup_1/13680*'
_output_shapes
:���������d�
embedding_lookup_1/Identity_1Identity$embedding_lookup_1/Identity:output:0*
T0*'
_output_shapes
:���������df
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicesamplestrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_2ResourceGatherembedding_lookup_13671strided_slice_2:output:0*
Tindices0*)
_class
loc:@embedding_lookup/13671*'
_output_shapes
:���������d*
dtype0�
embedding_lookup_2/IdentityIdentityembedding_lookup_2:output:0*
T0*)
_class
loc:@embedding_lookup/13671*'
_output_shapes
:���������d�
embedding_lookup_2/Identity_1Identity$embedding_lookup_2/Identity:output:0*
T0*'
_output_shapes
:���������d�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_13671*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_1_13680*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������dw

Identity_1Identity&embedding_lookup_1/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������dw

Identity_2Identity&embedding_lookup_2/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^embedding_lookup^embedding_lookup_1^embedding_lookup_2\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2(
embedding_lookup_1embedding_lookup_12(
embedding_lookup_2embedding_lookup_22$
embedding_lookupembedding_lookup2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_namesample
�
�
__inference_save_fn_13748
checkpoint_keyU
Qmutabledensehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5��DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Qmutabledensehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityKMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityMMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0*
_output_shapes
:�
NoOpNoOpE^MutableDenseHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
�
,
__inference__destroyer_13729
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�.
�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13170
input_1/
embedding_lookup_layer_13145:	�d.
embedding_lookup_layer_13147:d
identity��.embedding_lookup_layer/StatefulPartitionedCall�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
.embedding_lookup_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_lookup_layer_13145embedding_lookup_layer_13147*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *Z
fURS
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13044�
TransE/PartitionedCallPartitionedCall7embedding_lookup_layer/StatefulPartitionedCall:output:07embedding_lookup_layer/StatefulPartitionedCall:output:17embedding_lookup_layer/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *J
fERC
A__inference_TransE_layer_call_and_return_conditional_losses_13065�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_13145*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_13147*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityTransE/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp/^embedding_lookup_layer/StatefulPartitionedCall\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2`
.embedding_lookup_layer/StatefulPartitionedCall.embedding_lookup_layer/StatefulPartitionedCall2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�>
�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13209

inputs/
embedding_lookup_layer_13176:	�d.
embedding_lookup_layer_13178:d
identity

identity_1��9corruption_generation_layer_train/StatefulPartitionedCall�.embedding_lookup_layer/StatefulPartitionedCall�0embedding_lookup_layer/StatefulPartitionedCall_1�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
.embedding_lookup_layer/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_lookup_layer_13176embedding_lookup_layer_13178*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *Z
fURS
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13044�
TransE/PartitionedCallPartitionedCall7embedding_lookup_layer/StatefulPartitionedCall:output:07embedding_lookup_layer/StatefulPartitionedCall:output:17embedding_lookup_layer/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *J
fERC
A__inference_TransE_layer_call_and_return_conditional_losses_13065�
9corruption_generation_layer_train/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *e
f`R^
\__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_13116�
0embedding_lookup_layer/StatefulPartitionedCall_1StatefulPartitionedCallBcorruption_generation_layer_train/StatefulPartitionedCall:output:0embedding_lookup_layer_13176embedding_lookup_layer_13178*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d*$
_read_only_resource_inputs
*+
config_proto

CPU

GPU 2J � *Z
fURS
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13044�
TransE/PartitionedCall_1PartitionedCall9embedding_lookup_layer/StatefulPartitionedCall_1:output:09embedding_lookup_layer/StatefulPartitionedCall_1:output:19embedding_lookup_layer/StatefulPartitionedCall_1:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *J
fERC
A__inference_TransE_layer_call_and_return_conditional_losses_13065�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_13176*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_13178*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityTransE/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������n

Identity_1Identity!TransE/PartitionedCall_1:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp:^corruption_generation_layer_train/StatefulPartitionedCall/^embedding_lookup_layer/StatefulPartitionedCall1^embedding_lookup_layer/StatefulPartitionedCall_1\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2v
9corruption_generation_layer_train/StatefulPartitionedCall9corruption_generation_layer_train/StatefulPartitionedCall2d
0embedding_lookup_layer/StatefulPartitionedCall_10embedding_lookup_layer/StatefulPartitionedCall_12`
.embedding_lookup_layer/StatefulPartitionedCall.embedding_lookup_layer/StatefulPartitionedCall2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
K
__inference__creator_13719
identity: ��MutableDenseHashTableT
	empty_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������V
deleted_keyConst*
_output_shapes
: *
dtype0*
valueB :
����������
MutableDenseHashTableMutableDenseHashTableV2empty_key:output:0deleted_key:output:0*
_output_shapes
: *
	key_dtype0*
shared_name
table_5880*
value_dtype0b
IdentityIdentity$MutableDenseHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: ^
NoOpNoOp^MutableDenseHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2.
MutableDenseHashTableMutableDenseHashTable
�
w
A__inference_corruption_generation_layer_train_layer_call_fn_13602
pos
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallpos*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *+
config_proto

CPU

GPU 2J � *e
f`R^
\__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_13116o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:���������

_user_specified_namepos
��
�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13482

inputs@
-embedding_lookup_layer_embedding_lookup_13359:	�dA
/embedding_lookup_layer_embedding_lookup_1_13368:d
identity

identity_1��'embedding_lookup_layer/embedding_lookup�)embedding_lookup_layer/embedding_lookup_1�)embedding_lookup_layer/embedding_lookup_2�)embedding_lookup_layer/embedding_lookup_3�)embedding_lookup_layer/embedding_lookup_4�)embedding_lookup_layer/embedding_lookup_5�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp{
*embedding_lookup_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        }
,embedding_lookup_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,embedding_lookup_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$embedding_lookup_layer/strided_sliceStridedSliceinputs3embedding_lookup_layer/strided_slice/stack:output:05embedding_lookup_layer/strided_slice/stack_1:output:05embedding_lookup_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
'embedding_lookup_layer/embedding_lookupResourceGather-embedding_lookup_layer_embedding_lookup_13359-embedding_lookup_layer/strided_slice:output:0*
Tindices0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13359*'
_output_shapes
:���������d*
dtype0�
0embedding_lookup_layer/embedding_lookup/IdentityIdentity0embedding_lookup_layer/embedding_lookup:output:0*
T0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13359*'
_output_shapes
:���������d�
2embedding_lookup_layer/embedding_lookup/Identity_1Identity9embedding_lookup_layer/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������d}
,embedding_lookup_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_1StridedSliceinputs5embedding_lookup_layer/strided_slice_1/stack:output:07embedding_lookup_layer/strided_slice_1/stack_1:output:07embedding_lookup_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_1ResourceGather/embedding_lookup_layer_embedding_lookup_1_13368/embedding_lookup_layer/strided_slice_1:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer/embedding_lookup_1/13368*'
_output_shapes
:���������d*
dtype0�
2embedding_lookup_layer/embedding_lookup_1/IdentityIdentity2embedding_lookup_layer/embedding_lookup_1:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer/embedding_lookup_1/13368*'
_output_shapes
:���������d�
4embedding_lookup_layer/embedding_lookup_1/Identity_1Identity;embedding_lookup_layer/embedding_lookup_1/Identity:output:0*
T0*'
_output_shapes
:���������d}
,embedding_lookup_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_2StridedSliceinputs5embedding_lookup_layer/strided_slice_2/stack:output:07embedding_lookup_layer/strided_slice_2/stack_1:output:07embedding_lookup_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_2ResourceGather-embedding_lookup_layer_embedding_lookup_13359/embedding_lookup_layer/strided_slice_2:output:0*
Tindices0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13359*'
_output_shapes
:���������d*
dtype0�
2embedding_lookup_layer/embedding_lookup_2/IdentityIdentity2embedding_lookup_layer/embedding_lookup_2:output:0*
T0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13359*'
_output_shapes
:���������d�
4embedding_lookup_layer/embedding_lookup_2/Identity_1Identity;embedding_lookup_layer/embedding_lookup_2/Identity:output:0*
T0*'
_output_shapes
:���������d�

TransE/addAddV2;embedding_lookup_layer/embedding_lookup/Identity_1:output:0=embedding_lookup_layer/embedding_lookup_1/Identity_1:output:0*
T0*'
_output_shapes
:���������d�

TransE/subSubTransE/add:z:0=embedding_lookup_layer/embedding_lookup_2/Identity_1:output:0*
T0*'
_output_shapes
:���������dX
TransE/norm/AbsAbsTransE/sub:z:0*
T0*'
_output_shapes
:���������dc
!TransE/norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
TransE/norm/SumSumTransE/norm/Abs:y:0*TransE/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(}
TransE/norm/SqueezeSqueezeTransE/norm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
]

TransE/NegNegTransE/norm/Squeeze:output:0*
T0*#
_output_shapes
:����������
0corruption_generation_layer_train/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"
      �
&corruption_generation_layer_train/TileTileinputs9corruption_generation_layer_train/Tile/multiples:output:0*
T0*'
_output_shapes
:����������
'corruption_generation_layer_train/ShapeShape/corruption_generation_layer_train/Tile:output:0*
T0*
_output_shapes
::��
5corruption_generation_layer_train/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7corruption_generation_layer_train/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7corruption_generation_layer_train/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/corruption_generation_layer_train/strided_sliceStridedSlice0corruption_generation_layer_train/Shape:output:0>corruption_generation_layer_train/strided_slice/stack:output:0@corruption_generation_layer_train/strided_slice/stack_1:output:0@corruption_generation_layer_train/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6corruption_generation_layer_train/random_uniform/shapePack8corruption_generation_layer_train/strided_slice:output:0*
N*
T0*
_output_shapes
:v
4corruption_generation_layer_train/random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : v
4corruption_generation_layer_train/random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
0corruption_generation_layer_train/random_uniformRandomUniformInt?corruption_generation_layer_train/random_uniform/shape:output:0=corruption_generation_layer_train/random_uniform/min:output:0=corruption_generation_layer_train/random_uniform/max:output:0*

Tout0*
T0*#
_output_shapes
:���������*
seed2�����
&corruption_generation_layer_train/CastCast9corruption_generation_layer_train/random_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:����������
,corruption_generation_layer_train/LogicalNot
LogicalNot*corruption_generation_layer_train/Cast:y:0*#
_output_shapes
:����������
(corruption_generation_layer_train/Cast_1Cast*corruption_generation_layer_train/Cast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:����������
(corruption_generation_layer_train/Cast_2Cast0corruption_generation_layer_train/LogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:����������
)corruption_generation_layer_train/Shape_1Shape/corruption_generation_layer_train/Tile:output:0*
T0*
_output_shapes
::���
7corruption_generation_layer_train/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9corruption_generation_layer_train/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9corruption_generation_layer_train/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1corruption_generation_layer_train/strided_slice_1StridedSlice2corruption_generation_layer_train/Shape_1:output:0@corruption_generation_layer_train/strided_slice_1/stack:output:0Bcorruption_generation_layer_train/strided_slice_1/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8corruption_generation_layer_train/random_uniform_1/shapePack:corruption_generation_layer_train/strided_slice_1:output:0*
N*
T0*
_output_shapes
:x
6corruption_generation_layer_train/random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : y
6corruption_generation_layer_train/random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
value
B :��
2corruption_generation_layer_train/random_uniform_1RandomUniformIntAcorruption_generation_layer_train/random_uniform_1/shape:output:0?corruption_generation_layer_train/random_uniform_1/min:output:0?corruption_generation_layer_train/random_uniform_1/max:output:0*

Tout0*
T0*#
_output_shapes
:���������*
seed2�����
7corruption_generation_layer_train/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9corruption_generation_layer_train/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1corruption_generation_layer_train/strided_slice_2StridedSlice/corruption_generation_layer_train/Tile:output:0@corruption_generation_layer_train/strided_slice_2/stack:output:0Bcorruption_generation_layer_train/strided_slice_2/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
%corruption_generation_layer_train/MulMul,corruption_generation_layer_train/Cast_1:y:0:corruption_generation_layer_train/strided_slice_2:output:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train/Mul_1Mul,corruption_generation_layer_train/Cast_2:y:0;corruption_generation_layer_train/random_uniform_1:output:0*
T0*#
_output_shapes
:����������
%corruption_generation_layer_train/AddAddV2)corruption_generation_layer_train/Mul:z:0+corruption_generation_layer_train/Mul_1:z:0*
T0*#
_output_shapes
:����������
7corruption_generation_layer_train/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1corruption_generation_layer_train/strided_slice_3StridedSlice/corruption_generation_layer_train/Tile:output:0@corruption_generation_layer_train/strided_slice_3/stack:output:0Bcorruption_generation_layer_train/strided_slice_3/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
7corruption_generation_layer_train/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1corruption_generation_layer_train/strided_slice_4StridedSlice/corruption_generation_layer_train/Tile:output:0@corruption_generation_layer_train/strided_slice_4/stack:output:0Bcorruption_generation_layer_train/strided_slice_4/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
'corruption_generation_layer_train/Mul_2Mul,corruption_generation_layer_train/Cast_2:y:0:corruption_generation_layer_train/strided_slice_4:output:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train/Mul_3Mul,corruption_generation_layer_train/Cast_1:y:0;corruption_generation_layer_train/random_uniform_1:output:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train/Add_1AddV2+corruption_generation_layer_train/Mul_2:z:0+corruption_generation_layer_train/Mul_3:z:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train/stackPack)corruption_generation_layer_train/Add:z:0:corruption_generation_layer_train/strided_slice_3:output:0+corruption_generation_layer_train/Add_1:z:0*
N*
T0*'
_output_shapes
:����������
0corruption_generation_layer_train/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
+corruption_generation_layer_train/transpose	Transpose0corruption_generation_layer_train/stack:output:09corruption_generation_layer_train/transpose/perm:output:0*
T0*'
_output_shapes
:���������}
,embedding_lookup_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.embedding_lookup_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_3StridedSlice/corruption_generation_layer_train/transpose:y:05embedding_lookup_layer/strided_slice_3/stack:output:07embedding_lookup_layer/strided_slice_3/stack_1:output:07embedding_lookup_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_3ResourceGather-embedding_lookup_layer_embedding_lookup_13359/embedding_lookup_layer/strided_slice_3:output:0*
Tindices0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13359*'
_output_shapes
:���������d*
dtype0�
2embedding_lookup_layer/embedding_lookup_3/IdentityIdentity2embedding_lookup_layer/embedding_lookup_3:output:0*
T0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13359*'
_output_shapes
:���������d�
4embedding_lookup_layer/embedding_lookup_3/Identity_1Identity;embedding_lookup_layer/embedding_lookup_3/Identity:output:0*
T0*'
_output_shapes
:���������d}
,embedding_lookup_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_4StridedSlice/corruption_generation_layer_train/transpose:y:05embedding_lookup_layer/strided_slice_4/stack:output:07embedding_lookup_layer/strided_slice_4/stack_1:output:07embedding_lookup_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_4ResourceGather/embedding_lookup_layer_embedding_lookup_1_13368/embedding_lookup_layer/strided_slice_4:output:0*
Tindices0*B
_class8
64loc:@embedding_lookup_layer/embedding_lookup_1/13368*'
_output_shapes
:���������d*
dtype0�
2embedding_lookup_layer/embedding_lookup_4/IdentityIdentity2embedding_lookup_layer/embedding_lookup_4:output:0*
T0*B
_class8
64loc:@embedding_lookup_layer/embedding_lookup_1/13368*'
_output_shapes
:���������d�
4embedding_lookup_layer/embedding_lookup_4/Identity_1Identity;embedding_lookup_layer/embedding_lookup_4/Identity:output:0*
T0*'
_output_shapes
:���������d}
,embedding_lookup_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_5StridedSlice/corruption_generation_layer_train/transpose:y:05embedding_lookup_layer/strided_slice_5/stack:output:07embedding_lookup_layer/strided_slice_5/stack_1:output:07embedding_lookup_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_5ResourceGather-embedding_lookup_layer_embedding_lookup_13359/embedding_lookup_layer/strided_slice_5:output:0*
Tindices0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13359*'
_output_shapes
:���������d*
dtype0�
2embedding_lookup_layer/embedding_lookup_5/IdentityIdentity2embedding_lookup_layer/embedding_lookup_5:output:0*
T0*@
_class6
42loc:@embedding_lookup_layer/embedding_lookup/13359*'
_output_shapes
:���������d�
4embedding_lookup_layer/embedding_lookup_5/Identity_1Identity;embedding_lookup_layer/embedding_lookup_5/Identity:output:0*
T0*'
_output_shapes
:���������d�
TransE/add_1AddV2=embedding_lookup_layer/embedding_lookup_3/Identity_1:output:0=embedding_lookup_layer/embedding_lookup_4/Identity_1:output:0*
T0*'
_output_shapes
:���������d�
TransE/sub_1SubTransE/add_1:z:0=embedding_lookup_layer/embedding_lookup_5/Identity_1:output:0*
T0*'
_output_shapes
:���������d\
TransE/norm_1/AbsAbsTransE/sub_1:z:0*
T0*'
_output_shapes
:���������de
#TransE/norm_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
TransE/norm_1/SumSumTransE/norm_1/Abs:y:0,TransE/norm_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
TransE/norm_1/SqueezeSqueezeTransE/norm_1/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
a
TransE/Neg_1NegTransE/norm_1/Squeeze:output:0*
T0*#
_output_shapes
:����������
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOp-embedding_lookup_layer_embedding_lookup_13359*
_output_shapes
:	�d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	�d�
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_lookup_layer_embedding_lookup_1_13368*
_output_shapes

:d*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes

:d�
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: Y
IdentityIdentityTransE/Neg:y:0^NoOp*
T0*#
_output_shapes
:���������]

Identity_1IdentityTransE/Neg_1:y:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp(^embedding_lookup_layer/embedding_lookup*^embedding_lookup_layer/embedding_lookup_1*^embedding_lookup_layer/embedding_lookup_2*^embedding_lookup_layer/embedding_lookup_3*^embedding_lookup_layer/embedding_lookup_4*^embedding_lookup_layer/embedding_lookup_5\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2V
)embedding_lookup_layer/embedding_lookup_1)embedding_lookup_layer/embedding_lookup_12V
)embedding_lookup_layer/embedding_lookup_2)embedding_lookup_layer/embedding_lookup_22V
)embedding_lookup_layer/embedding_lookup_3)embedding_lookup_layer/embedding_lookup_32V
)embedding_lookup_layer/embedding_lookup_4)embedding_lookup_layer/embedding_lookup_42V
)embedding_lookup_layer/embedding_lookup_5)embedding_lookup_layer/embedding_lookup_52R
'embedding_lookup_layer/embedding_lookup'embedding_lookup_layer/embedding_lookup2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������8
output_1,
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
scoring_layer
	corruption_layer

encoding_layer
focusE_params
partitioner_metadata
mapping_dict

use_filter
	all_ranks

_get_ranks

signatures"
_tf_keras_model
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_1
trace_2
trace_32�
=__inference_scoring_based_embedding_model_layer_call_fn_13218
=__inference_scoring_based_embedding_model_layer_call_fn_13255
=__inference_scoring_based_embedding_model_layer_call_fn_13343
=__inference_scoring_based_embedding_model_layer_call_fn_13352�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
trace_0
 trace_1
!trace_2
"trace_32�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13142
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13170
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13482
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13535�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0z trace_1z!trace_2z"trace_3
�B�
 __inference__wrapped_model_12992input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
ent_emb
rel_emb"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
O
5_create_resource
6_initialize
7_destroy_resourceR Z
tableXY
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�2��
���
FullArgSpecv
argsn�k
jinputs

jent_embs

jstart_id
jend_id
	jfilters
jmapping_dict
jcorrupt_side
jranking_strategy
varargs
 
varkw
 
defaults�
js,o
jworst

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
8serving_default"
signature_map
O:M	�d2<scoring_based_embedding_model/embedding_lookup_layer/ent_emb
N:Ld2<scoring_based_embedding_model/embedding_lookup_layer/rel_emb
�
9trace_02�
__inference_loss_fn_0_13564�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z9trace_0
�
:trace_02�
__inference_loss_fn_1_13577�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z:trace_0
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
=__inference_scoring_based_embedding_model_layer_call_fn_13218input_1"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
=__inference_scoring_based_embedding_model_layer_call_fn_13255input_1"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
=__inference_scoring_based_embedding_model_layer_call_fn_13343inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
=__inference_scoring_based_embedding_model_layer_call_fn_13352inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13142input_1"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13170input_1"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13482inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13535inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

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
�
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
Atrace_02�
&__inference_TransE_layer_call_fn_13584�
���
FullArgSpec
args�
	jtriples
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
 zAtrace_0
�
Btrace_02�
A__inference_TransE_layer_call_and_return_conditional_losses_13597�
���
FullArgSpec
args�
	jtriples
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
 zBtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
Htrace_02�
A__inference_corruption_generation_layer_train_layer_call_fn_13602�
���
FullArgSpec%
args�
jpos

jent_size
jeta
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
 zHtrace_0
�
Itrace_02�
\__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_13651�
���
FullArgSpec%
args�
jpos

jent_size
jeta
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
 zItrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
Otrace_02�
6__inference_embedding_lookup_layer_layer_call_fn_13664�
���
FullArgSpec 
args�
jsample
	jtype_of
varargs
 
varkw
 
defaults�
jt

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0
�
Ptrace_02�
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13712�
���
FullArgSpec 
args�
jsample
	jtype_of
varargs
 
varkw
 
defaults�
jt

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zPtrace_0
�
Qtrace_02�
__inference__creator_13719�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zQtrace_0
�
Rtrace_02�
__inference__initializer_13724�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zRtrace_0
�
Strace_02�
__inference__destroyer_13729�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zStrace_0
�B�
#__inference_signature_wrapper_13332input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_13564"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_13577"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
N
T	variables
U	keras_api
	Vtotal
	Wcount"
_tf_keras_metric
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
&__inference_TransE_layer_call_fn_13584	triples_0	triples_1	triples_2"�
���
FullArgSpec
args�
	jtriples
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
A__inference_TransE_layer_call_and_return_conditional_losses_13597	triples_0	triples_1	triples_2"�
���
FullArgSpec
args�
	jtriples
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
A__inference_corruption_generation_layer_train_layer_call_fn_13602pos"�
���
FullArgSpec%
args�
jpos

jent_size
jeta
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
\__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_13651pos"�
���
FullArgSpec%
args�
jpos

jent_size
jeta
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
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_embedding_lookup_layer_layer_call_fn_13664sample"�
���
FullArgSpec 
args�
jsample
	jtype_of
varargs
 
varkw
 
defaults�
jt

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13712sample"�
���
FullArgSpec 
args�
jsample
	jtype_of
varargs
 
varkw
 
defaults�
jt

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference__creator_13719"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_13724"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_13729"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
.
V0
W1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
:  (2total
:  (2count
�B�
__inference_save_fn_13748checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_restore_fn_13756restored_tensors_0restored_tensors_1"�
���
FullArgSpec7
args/�,
jrestored_tensors_0
jrestored_tensors_1
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
	��
A__inference_TransE_layer_call_and_return_conditional_losses_13597���~
w�t
r�o
#� 
	triples_0���������d
#� 
	triples_1���������d
#� 
	triples_2���������d
� "(�%
�
tensor_0���������
� �
&__inference_TransE_layer_call_fn_13584���~
w�t
r�o
#� 
	triples_0���������d
#� 
	triples_1���������d
#� 
	triples_2���������d
� "�
unknown���������?
__inference__creator_13719!�

� 
� "�
unknown A
__inference__destroyer_13729!�

� 
� "�
unknown C
__inference__initializer_13724!�

� 
� "�
unknown �
 __inference__wrapped_model_12992g0�-
&�#
!�
input_1���������
� "/�,
*
output_1�
output_1����������
\__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_13651e5�2
+�(
�
pos���������
`�'
`
� ",�)
"�
tensor_0���������
� �
A__inference_corruption_generation_layer_train_layer_call_fn_13602Z5�2
+�(
�
pos���������
`�'
`
� "!�
unknown����������
Q__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_13712�4�1
*�'
 �
sample���������
jt
� "�|
u�r
$�!

tensor_0_0���������d
$�!

tensor_0_1���������d
$�!

tensor_0_2���������d
� �
6__inference_embedding_lookup_layer_layer_call_fn_13664�4�1
*�'
 �
sample���������
jt
� "o�l
"�
tensor_0���������d
"�
tensor_1���������d
"�
tensor_2���������dC
__inference_loss_fn_0_13564$�

� 
� "�
unknown C
__inference_loss_fn_1_13577$�

� 
� "�
unknown �
__inference_restore_fn_13756bK�H
A�>
�
restored_tensors_0
�
restored_tensors_1
� "�
unknown �
__inference_save_fn_13748�&�#
�
�
checkpoint_key 
� "���
u�r

name�
tensor_0_name 
*

slice_spec�
tensor_0_slice_spec 
$
tensor�
tensor_0_tensor
u�r

name�
tensor_1_name 
*

slice_spec�
tensor_1_slice_spec 
$
tensor�
tensor_1_tensor�
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13142�4�1
*�'
!�
input_1���������
p
� "Q�N
G�D
 �

tensor_0_0���������
 �

tensor_0_1���������
� �
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13170d4�1
*�'
!�
input_1���������
p 
� "(�%
�
tensor_0���������
� �
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13482�3�0
)�&
 �
inputs���������
p
� "Q�N
G�D
 �

tensor_0_0���������
 �

tensor_0_1���������
� �
X__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_13535c3�0
)�&
 �
inputs���������
p 
� "(�%
�
tensor_0���������
� �
=__inference_scoring_based_embedding_model_layer_call_fn_132184�1
*�'
!�
input_1���������
p
� "C�@
�
tensor_0���������
�
tensor_1����������
=__inference_scoring_based_embedding_model_layer_call_fn_13255Y4�1
*�'
!�
input_1���������
p 
� "�
unknown����������
=__inference_scoring_based_embedding_model_layer_call_fn_13343~3�0
)�&
 �
inputs���������
p
� "C�@
�
tensor_0���������
�
tensor_1����������
=__inference_scoring_based_embedding_model_layer_call_fn_13352X3�0
)�&
 �
inputs���������
p 
� "�
unknown����������
#__inference_signature_wrapper_13332r;�8
� 
1�.
,
input_1!�
input_1���������"/�,
*
output_1�
output_1���������