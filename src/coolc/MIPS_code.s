

		.data
void: .asciiz "void__"
empty: .asciiz ""
str_4: .asciiz "Object"
str_9: .asciiz "IO"
str_20: .asciiz "String"
str_34: .asciiz "Bool"
str_39: .asciiz "Int"
str_44: .asciiz "Main"
null: .word 0
Object: .space 12
Object_vt: .space 12
Object_abort_method: .word 0
Object_type_name_method: .word 0
Object_copy_method: .word 0
IO: .space 12
IO_vt: .space 28
IO_abort_method: .word 0
IO_type_name_method: .word 0
IO_copy_method: .word 0
IO_out_string_method: .word 0
IO_out_int_method: .word 0
IO_in_string_method: .word 0
IO_in_int_method: .word 0
String: .space 12
String_vt: .space 24
String_abort_method: .word 0
String_type_name_method: .word 0
String_copy_method: .word 0
String_length_method: .word 0
String_concat_method: .word 0
String_substr_method: .word 0
Bool: .space 12
Bool_vt: .space 12
Bool_abort_method: .word 0
Bool_type_name_method: .word 0
Bool_copy_method: .word 0
Int: .space 12
Int_vt: .space 12
Int_abort_method: .word 0
Int_type_name_method: .word 0
Int_copy_method: .word 0
Main: .space 12
Main_vt: .space 36
Main_abort_method: .word 0
Main_type_name_method: .word 0
Main_copy_method: .word 0
Main_out_string_method: .word 0
Main_out_int_method: .word 0
Main_in_string_method: .word 0
Main_in_int_method: .word 0
Main_fibo_method: .word 0
Main_main_method: .word 0
main_0_1: .space 0
self_2: .space 8
self_3: .space 8
typename_5_2: .space 0
self_6: .space 8
self_7: .space 8
self_8: .space 8
typename_10_3: .space 0
self_11: .space 8
self_12: .space 8
param_13: .space 8
self_14: .space 8
param_15: .space 8
self_16: .space 8
self_17: .space 8
var_18_5: .space 100
self_18: .space 8
self_19: .space 8
typename_21_6: .space 0
self_22: .space 8
self_23: .space 8
self_25: .space 8
param_26: .space 8
concat_27_10: .space 100
self_28: .space 8
param_29: .space 8
param_30: .space 8
SubstrRes31_15: .space 100
self_32: .space 8
self_33: .space 8
typename_35_18: .space 0
self_36: .space 8
self_37: .space 8
self_38: .space 8
typename_40_19: .space 0
self_41: .space 8
self_42: .space 8
self_43: .space 8
typename_45_20: .space 0
self_46: .space 8
self_47: .space 8
param_48: .space 8
self_49: .space 8
param_50: .space 8
self_51: .space 8
self_52: .space 8
var_53_22: .space 100
self_53: .space 8
i54: .space 8
self_76: .space 8
realValueFuncall_81_33: .space 0


		.text
		.globl main


main:
la $t0, str_4
sw $t0, Object+ 4
la $t0, null
sw $t0, Object
la $t5, Object_vt
sw $t5,Object+8
li $t6, 0
sw $t6,Object_abort_method
la $t4, Object_abort0
sw $t4, 0($t5)
li $t6, 1
sw $t6,Object_type_name_method
la $t4, Object_type_name1
sw $t4, 4($t5)
li $t6, 2
sw $t6,Object_copy_method
la $t4, Object_copy2
sw $t4, 8($t5)
la $t0, str_9
sw $t0, IO+ 4
la $t0, Object
sw $t0, IO
la $t5, IO_vt
sw $t5,IO+8
li $t6, 0
sw $t6,IO_abort_method
la $t4, IO_abort3
sw $t4, 0($t5)
li $t6, 1
sw $t6,IO_type_name_method
la $t4, IO_type_name4
sw $t4, 4($t5)
li $t6, 2
sw $t6,IO_copy_method
la $t4, IO_copy5
sw $t4, 8($t5)
li $t6, 3
sw $t6,IO_out_string_method
la $t4, IO_out_string6
sw $t4, 12($t5)
li $t6, 4
sw $t6,IO_out_int_method
la $t4, IO_out_int7
sw $t4, 16($t5)
li $t6, 5
sw $t6,IO_in_string_method
la $t4, IO_in_string8
sw $t4, 20($t5)
li $t6, 6
sw $t6,IO_in_int_method
la $t4, IO_in_int9
sw $t4, 24($t5)
la $t0, str_20
sw $t0, String+ 4
la $t0, Object
sw $t0, String
la $t5, String_vt
sw $t5,String+8
li $t6, 0
sw $t6,String_abort_method
la $t4, String_abort10
sw $t4, 0($t5)
li $t6, 1
sw $t6,String_type_name_method
la $t4, String_type_name11
sw $t4, 4($t5)
li $t6, 2
sw $t6,String_copy_method
la $t4, String_copy12
sw $t4, 8($t5)
li $t6, 3
sw $t6,String_length_method
la $t4, String_length13
sw $t4, 12($t5)
li $t6, 4
sw $t6,String_concat_method
la $t4, String_concat14
sw $t4, 16($t5)
li $t6, 5
sw $t6,String_substr_method
la $t4, String_substr15
sw $t4, 20($t5)
la $t0, str_34
sw $t0, Bool+ 4
la $t0, Object
sw $t0, Bool
la $t5, Bool_vt
sw $t5,Bool+8
li $t6, 0
sw $t6,Bool_abort_method
la $t4, Bool_abort16
sw $t4, 0($t5)
li $t6, 1
sw $t6,Bool_type_name_method
la $t4, Bool_type_name17
sw $t4, 4($t5)
li $t6, 2
sw $t6,Bool_copy_method
la $t4, Bool_copy18
sw $t4, 8($t5)
la $t0, str_39
sw $t0, Int+ 4
la $t0, Object
sw $t0, Int
la $t5, Int_vt
sw $t5,Int+8
li $t6, 0
sw $t6,Int_abort_method
la $t4, Int_abort19
sw $t4, 0($t5)
li $t6, 1
sw $t6,Int_type_name_method
la $t4, Int_type_name20
sw $t4, 4($t5)
li $t6, 2
sw $t6,Int_copy_method
la $t4, Int_copy21
sw $t4, 8($t5)
la $t0, str_44
sw $t0, Main+ 4
la $t0, IO
sw $t0, Main
la $t5, Main_vt
sw $t5,Main+8
li $t6, 0
sw $t6,Main_abort_method
la $t4, Main_abort22
sw $t4, 0($t5)
li $t6, 1
sw $t6,Main_type_name_method
la $t4, Main_type_name23
sw $t4, 4($t5)
li $t6, 2
sw $t6,Main_copy_method
la $t4, Main_copy24
sw $t4, 8($t5)
li $t6, 3
sw $t6,Main_out_string_method
la $t4, Main_out_string25
sw $t4, 12($t5)
li $t6, 4
sw $t6,Main_out_int_method
la $t4, Main_out_int26
sw $t4, 16($t5)
li $t6, 5
sw $t6,Main_in_string_method
la $t4, Main_in_string27
sw $t4, 20($t5)
li $t6, 6
sw $t6,Main_in_int_method
la $t4, Main_in_int28
sw $t4, 24($t5)
li $t6, 7
sw $t6,Main_fibo_method
la $t4, Main_fibo29
sw $t4, 28($t5)
li $t6, 8
sw $t6,Main_main_method
la $t4, Main_main30
sw $t4, 32($t5)
move $fp, $sp
addi $sp,$sp, -16


la  $t6, Main     #allocate
move $t5, $fp      #direccion main_0
addi $t5, $t5, -8
sw  $t6, 0($t5) 
la $t5, main_0_1
move $t7, $fp      #direccion main_0
addi $t7, $t7, -8
sw $t5, 4($t7)       #endAllocate
addi $sp, $sp, -4         #salvando registros
sw  $ra, 0($sp)
addi $sp, $sp, -4
sw  $fp, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t0, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t1, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t2, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t3, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t4, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t5, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t6, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t7, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t8, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t9, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion main_0
addi $t6, $t6, -8
sw  $t6, 0($sp)
lw $t2, Main_main_method       #vcall
li $t3, 4
mul $t2, $t2, $t3
move $t4, $fp      #direccion main_0
addi $t4, $t4, -8
lw $t5, 0($t4)
lw $t4, 8($t5)
add $t2, $t2, $t4
lw $t4, 0($t2)
jal $t4
lw  $t9, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t8, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t7, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t6, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t5, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t4, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t3, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t2, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t1, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t0, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $fp, 0($sp)     #cargando registros
addi $sp, $sp, 4
lw  $ra, 0($sp)      #cargando registros
addi $sp, $sp, 4
move $t5, $fp      #direccion var_1
addi $t5, $t5, -16
lw $t6, 0($v0)
sw  $t6, 0($t5)
lw $t6, 4($v0)
sw  $t6, 4($t5)     #end del vfuncall
move $v0, $fp      #direccion var_1
addi $v0, $v0, -16
move $sp, $fp
jr $ra


Object_abort0:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_2
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_2
move $t4, $fp      #direccion self_2
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 10
syscall
move $v0, $fp      #direccion self_2
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Object_type_name1:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_3
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_3
move $t4, $fp      #direccion self_3
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion typename_5
addi $t5, $t5, -16
sw  $t6, 0($t5) 
la $t7, str_4      #getdir data
move $t6, $fp      #direccion typename_5
addi $t6, $t6, -16
sw $t7, 4($t6)      #end setindex
move $v0, $fp      #direccion typename_5
addi $v0, $v0, -16
move $sp, $fp
jr $ra


Object_copy2:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_6
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_6
move $t4, $fp      #direccion self_6
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


move $v0, $fp      #direccion self_6
addi $v0, $v0, -8
move $sp, $fp
jr $ra


IO_abort3:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_7
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_7
move $t4, $fp      #direccion self_7
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 10
syscall
move $v0, $fp      #direccion self_7
addi $v0, $v0, -8
move $sp, $fp
jr $ra


IO_type_name4:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_8
move $t4, $fp      #direccion self_8
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion typename_10
addi $t5, $t5, -16
sw  $t6, 0($t5) 
la $t7, str_9      #getdir data
move $t6, $fp      #direccion typename_10
addi $t6, $t6, -16
sw $t7, 4($t6)      #end setindex
move $v0, $fp      #direccion typename_10
addi $v0, $v0, -16
move $sp, $fp
jr $ra


IO_copy5:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_11
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_11
move $t4, $fp      #direccion self_11
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


move $v0, $fp      #direccion self_11
addi $v0, $v0, -8
move $sp, $fp
jr $ra


IO_out_int7:
lw  $t6, 0($sp)      #sacando parametros
la $t4, param_13
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_12
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_12
move $t4, $fp      #direccion self_12
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
la $t6, param_13
move $t4, $fp      #direccion param_13
addi $t4, $t4, -16
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 1
move $t9, $fp      #direccion param_13
addi $t9, $t9, -16
lw $a0 , 4($t9)       #end carga valor
syscall
move $v0, $fp      #direccion self_12
addi $v0, $v0, -8
move $sp, $fp
jr $ra


IO_out_string6:
lw  $t6, 0($sp)      #sacando parametros
la $t4, param_15
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_14
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_14
move $t4, $fp      #direccion self_14
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
la $t6, param_15
move $t4, $fp      #direccion param_15
addi $t4, $t4, -16
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 4
move $t9, $fp      #direccion param_15
addi $t9, $t9, -16
lw $a0 , 4($t9)       #end carga valor
syscall
move $v0, $fp      #direccion self_14
addi $v0, $v0, -8
move $sp, $fp
jr $ra


IO_in_int9:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_16
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_16
move $t4, $fp      #direccion self_16
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, Int     #allocate
move $t5, $fp      #direccion var_17
addi $t5, $t5, -16
sw  $t6, 0($t5)       #endAllocate
li $v0, 5
syscall
move $t5, $fp      #direccion var_17
addi $t5, $t5, -16
lw $v0, 4($t5)
move $v0, $fp      #direccion var_17
addi $v0, $v0, -16
move $sp, $fp
jr $ra


IO_in_string8:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_17
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_17
move $t4, $fp      #direccion self_17
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion var_18
addi $t5, $t5, -16
sw  $t6, 0($t5) 
la $t5, var_18_5
move $t7, $fp      #direccion var_18
addi $t7, $t7, -16
sw $t5, 4($t7)       #endAllocate
move $t5, $fp      #direccion var_18
addi $t5, $t5, -16
lw $a0, 4($t5)
li $a1, 100
li $v0, 8
syscall
move $v0, $fp      #direccion var_18
addi $v0, $v0, -16
move $sp, $fp
jr $ra


String_abort10:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_18
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_18
move $t4, $fp      #direccion self_18
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 10
syscall
move $v0, $fp      #direccion self_18
addi $v0, $v0, -8
move $sp, $fp
jr $ra


String_type_name11:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_19
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_19
move $t4, $fp      #direccion self_19
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion typename_21
addi $t5, $t5, -16
sw  $t6, 0($t5) 
la $t7, str_20      #getdir data
move $t6, $fp      #direccion typename_21
addi $t6, $t6, -16
sw $t7, 4($t6)      #end setindex
move $v0, $fp      #direccion typename_21
addi $v0, $v0, -16
move $sp, $fp
jr $ra


String_copy12:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_22
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_22
move $t4, $fp      #direccion self_22
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


move $v0, $fp      #direccion self_22
addi $v0, $v0, -8
move $sp, $fp
jr $ra


String_length13:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_23
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_23
move $t4, $fp      #direccion self_23
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, Int     #allocate
move $t5, $fp      #direccion Lengthresult_24
addi $t5, $t5, -16
sw  $t6, 0($t5)       #endAllocate
move $t4, $fp      #direccion self_23
addi $t4, $t4, -8
lw $t1, 4($t4)
li $t0, 0
loop_8:
add $t2 , $t1 , $t0
lb $a0, ($t2)
beqz  $a0 ,done_9
addi $t0 , $t0, 1
j loop_8
done_9:
move $t4, $fp      #direccion Lengthresult_24
addi $t4, $t4, -16
sw $t0,  4($t4)
move $v0, $fp      #direccion Lengthresult_24
addi $v0, $v0, -16
move $sp, $fp
jr $ra


String_concat14:
lw  $t6, 0($sp)      #sacando parametros
la $t4, param_26
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_25
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -24
la $t6, self_25
move $t4, $fp      #direccion self_25
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
la $t6, param_26
move $t4, $fp      #direccion param_26
addi $t4, $t4, -16
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion concat_27
addi $t5, $t5, -24
sw  $t6, 0($t5) 
la $t5, concat_27_10
move $t7, $fp      #direccion concat_27
addi $t7, $t7, -24
sw $t5, 4($t7)       #endAllocate
move $t3, $fp      #direccion self_25
addi $t3, $t3, -8
lw $t4, 4($t3)
move $t3, $fp      #direccion concat_27
addi $t3, $t3, -24
lw $t8, 4($t3)
li $t0, 0
li $t3, 0
loop1_11:
add $t5 , $t4 , $t0
lb $a0, ($t5)
beqz  $a0 ,loop2_12
sb $a0 , ($t8)
addi $t8 , $t8, 1
addi $t0 , $t0, 1
addi $t3 , $t3, 1
j loop1_11
loop2_12:
li $t0, 0
loop3_13:
move $t5, $fp      #direccion param_26
addi $t5, $t5, -16
lw $t7, 4($t5)
add $t6 , $t7 , $t0
lb $a0, ($t6)
beqz  $a0 ,done_14
sb $a0 , ($t8)
addi $t8 , $t8, 1
addi $t0 , $t0, 1
addi $t3 , $t3, 1
j loop3_13
done_14:
move $v0, $fp      #direccion concat_27
addi $v0, $v0, -24
move $sp, $fp
jr $ra


String_substr15:
lw  $t6, 0($sp)      #sacando parametros
la $t4, param_30
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
lw  $t6, 0($sp)      #sacando parametros
la $t4, param_29
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_28
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -32
la $t6, self_28
move $t4, $fp      #direccion self_28
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
la $t6, param_29
move $t4, $fp      #direccion param_29
addi $t4, $t4, -16
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
la $t6, param_30
move $t4, $fp      #direccion param_30
addi $t4, $t4, -24
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion SubstrRes31
addi $t5, $t5, -32
sw  $t6, 0($t5) 
la $t5, SubstrRes31_15
move $t7, $fp      #direccion SubstrRes31
addi $t7, $t7, -32
sw $t5, 4($t7)       #endAllocate
move $t3, $fp      #direccion self_28
addi $t3, $t3, -8
lw $t4, 4($t3)
move $t3, $fp      #direccion param_29
addi $t3, $t3, -16
lw $t0, 4($t3)
move $t3, $fp      #direccion param_30
addi $t3, $t3, -24
lw $t1, 4($t3)
sub $t2 , $t1, $t0
add $t4 , $t4 , $t0
li $t3, 0
move $t5, $fp      #direccion SubstrRes31
addi $t5, $t5, -32
lw $t8, 4($t5)
loop_16:
beq $t3 , $t2, done_17
add $t5 , $t4 , $t3
lb $a0, ($t5)
sb $a0 , ($t8) 
addi $t8 , $t8, 1
addi $t0 , $t0, 1
addi $t3 , $t3, 1
j loop_16
done_17:
move $v0, $fp      #direccion SubstrRes31
addi $v0, $v0, -32
move $sp, $fp
jr $ra


Bool_abort16:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_32
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_32
move $t4, $fp      #direccion self_32
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 10
syscall
move $v0, $fp      #direccion self_32
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Bool_type_name17:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_33
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_33
move $t4, $fp      #direccion self_33
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion typename_35
addi $t5, $t5, -16
sw  $t6, 0($t5) 
la $t7, str_34      #getdir data
move $t6, $fp      #direccion typename_35
addi $t6, $t6, -16
sw $t7, 4($t6)      #end setindex
move $v0, $fp      #direccion typename_35
addi $v0, $v0, -16
move $sp, $fp
jr $ra


Bool_copy18:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_36
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_36
move $t4, $fp      #direccion self_36
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


move $v0, $fp      #direccion self_36
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Int_abort19:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_37
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_37
move $t4, $fp      #direccion self_37
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 10
syscall
move $v0, $fp      #direccion self_37
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Int_type_name20:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_38
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_38
move $t4, $fp      #direccion self_38
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion typename_40
addi $t5, $t5, -16
sw  $t6, 0($t5) 
la $t7, str_39      #getdir data
move $t6, $fp      #direccion typename_40
addi $t6, $t6, -16
sw $t7, 4($t6)      #end setindex
move $v0, $fp      #direccion typename_40
addi $v0, $v0, -16
move $sp, $fp
jr $ra


Int_copy21:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_41
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_41
move $t4, $fp      #direccion self_41
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


move $v0, $fp      #direccion self_41
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Main_abort22:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_42
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_42
move $t4, $fp      #direccion self_42
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 10
syscall
move $v0, $fp      #direccion self_42
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Main_type_name23:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_43
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_43
move $t4, $fp      #direccion self_43
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion typename_45
addi $t5, $t5, -16
sw  $t6, 0($t5) 
la $t7, str_44      #getdir data
move $t6, $fp      #direccion typename_45
addi $t6, $t6, -16
sw $t7, 4($t6)      #end setindex
move $v0, $fp      #direccion typename_45
addi $v0, $v0, -16
move $sp, $fp
jr $ra


Main_copy24:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_46
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -8
la $t6, self_46
move $t4, $fp      #direccion self_46
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


move $v0, $fp      #direccion self_46
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Main_out_int26:
lw  $t6, 0($sp)      #sacando parametros
la $t4, param_48
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_47
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_47
move $t4, $fp      #direccion self_47
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
la $t6, param_48
move $t4, $fp      #direccion param_48
addi $t4, $t4, -16
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 1
move $t9, $fp      #direccion param_48
addi $t9, $t9, -16
lw $a0 , 4($t9)       #end carga valor
syscall
move $v0, $fp      #direccion self_47
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Main_out_string25:
lw  $t6, 0($sp)      #sacando parametros
la $t4, param_50
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_49
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_49
move $t4, $fp      #direccion self_49
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
la $t6, param_50
move $t4, $fp      #direccion param_50
addi $t4, $t4, -16
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


li $v0, 4
move $t9, $fp      #direccion param_50
addi $t9, $t9, -16
lw $a0 , 4($t9)       #end carga valor
syscall
move $v0, $fp      #direccion self_49
addi $v0, $v0, -8
move $sp, $fp
jr $ra


Main_in_int28:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_51
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_51
move $t4, $fp      #direccion self_51
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, Int     #allocate
move $t5, $fp      #direccion var_52
addi $t5, $t5, -16
sw  $t6, 0($t5)       #endAllocate
li $v0, 5
syscall
move $t5, $fp      #direccion var_52
addi $t5, $t5, -16
lw $v0, 4($t5)
move $v0, $fp      #direccion var_52
addi $v0, $v0, -16
move $sp, $fp
jr $ra


Main_in_string27:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_52
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -16
la $t6, self_52
move $t4, $fp      #direccion self_52
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, String     #allocate
move $t5, $fp      #direccion var_53
addi $t5, $t5, -16
sw  $t6, 0($t5) 
la $t5, var_53_22
move $t7, $fp      #direccion var_53
addi $t7, $t7, -16
sw $t5, 4($t7)       #endAllocate
move $t5, $fp      #direccion var_53
addi $t5, $t5, -16
lw $a0, 4($t5)
li $a1, 100
li $v0, 8
syscall
move $v0, $fp      #direccion var_53
addi $v0, $v0, -16
move $sp, $fp
jr $ra


Main_fibo29:
lw  $t6, 0($sp)      #sacando parametros
la $t4, i54
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_53
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -152
la $t6, self_53
move $t4, $fp      #direccion self_53
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
la $t6, i54
move $t4, $fp      #direccion i54
addi $t4, $t4, -16
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, Int     #allocate
move $t5, $fp      #direccion int_56
addi $t5, $t5, -32
sw  $t6, 0($t5)       #endAllocate
li $t7, 0  #Setindex
move $t6, $fp      #direccion int_56
addi $t6, $t6, -32
sw $t7, 4($t6)      #end setindex
move $t9, $fp      #direccion i54
addi $t9, $t9, -16
lw $t3 , 4($t9)       #end carga valor
move $t9, $fp      #direccion int_56
addi $t9, $t9, -32
lw $t1 , 4($t9)       #end carga valor
seq $t2 , $t3 , $t1
move $t1, $fp      #direccion i54
addi $t1, $t1, -16
lw $t4, 0($t1)
move $t1, $fp      #direccion valueBinExp_57
addi $t1, $t1, -40
sw $t4, 0($t1)
move $t3, $fp      #direccion valueBinExp_57
addi $t3, $t3, -40
sw $t2, 4($t3)
move $t9, $fp      #direccion valueBinExp_57
addi $t9, $t9, -40
lw $t0 , 4($t9)       #end carga valor
li $t1, 1
beq $t0 , $t1 , ThenLabel_74    #End coditional Jump 
la  $t6, Int     #allocate
move $t5, $fp      #direccion int_60
addi $t5, $t5, -64
sw  $t6, 0($t5)       #endAllocate
li $t7, 1  #Setindex
move $t6, $fp      #direccion int_60
addi $t6, $t6, -64
sw $t7, 4($t6)      #end setindex
move $t9, $fp      #direccion i54
addi $t9, $t9, -16
lw $t3 , 4($t9)       #end carga valor
move $t9, $fp      #direccion int_60
addi $t9, $t9, -64
lw $t1 , 4($t9)       #end carga valor
seq $t2 , $t3 , $t1
move $t1, $fp      #direccion i54
addi $t1, $t1, -16
lw $t4, 0($t1)
move $t1, $fp      #direccion valueBinExp_61
addi $t1, $t1, -72
sw $t4, 0($t1)
move $t3, $fp      #direccion valueBinExp_61
addi $t3, $t3, -72
sw $t2, 4($t3)
move $t9, $fp      #direccion valueBinExp_61
addi $t9, $t9, -72
lw $t0 , 4($t9)       #end carga valor
li $t1, 1
beq $t0 , $t1 , ThenLabel_72    #End coditional Jump 
la  $t6, Int     #allocate
move $t5, $fp      #direccion int_63
addi $t5, $t5, -88
sw  $t6, 0($t5)       #endAllocate
li $t7, 1  #Setindex
move $t6, $fp      #direccion int_63
addi $t6, $t6, -88
sw $t7, 4($t6)      #end setindex
move $t9, $fp      #direccion i54
addi $t9, $t9, -16
lw $t3 , 4($t9)       #end carga valor
move $t9, $fp      #direccion int_63
addi $t9, $t9, -88
lw $t1 , 4($t9)       #end carga valor
sub $t2 , $t3 , $t1
move $t1, $fp      #direccion i54
addi $t1, $t1, -16
lw $t4, 0($t1)
move $t1, $fp      #direccion valueBinExp_64
addi $t1, $t1, -96
sw $t4, 0($t1)
move $t3, $fp      #direccion valueBinExp_64
addi $t3, $t3, -96
sw $t2, 4($t3)
addi $sp, $sp, -4         #salvando registros
sw  $ra, 0($sp)
addi $sp, $sp, -4
sw  $fp, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t0, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t1, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t2, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t3, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t4, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t5, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t6, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t7, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t8, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t9, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion self_53
addi $t6, $t6, -8
sw  $t6, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion valueBinExp_64
addi $t6, $t6, -96
sw  $t6, 0($sp)
lw $t2, Main_fibo_method       #vcall
li $t3, 4
mul $t2, $t2, $t3
move $t4, $fp      #direccion self_53
addi $t4, $t4, -8
lw $t5, 0($t4)
lw $t4, 8($t5)
add $t2, $t2, $t4
lw $t4, 0($t2)
jal $t4
lw  $t9, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t8, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t7, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t6, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t5, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t4, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t3, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t2, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t1, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t0, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $fp, 0($sp)     #cargando registros
addi $sp, $sp, 4
lw  $ra, 0($sp)      #cargando registros
addi $sp, $sp, 4
move $t5, $fp      #direccion valueFuncall_65
addi $t5, $t5, -104
lw $t6, 0($v0)
sw  $t6, 0($t5)
lw $t6, 4($v0)
sw  $t6, 4($t5)     #end del vfuncall
la  $t6, Int     #allocate
move $t5, $fp      #direccion realValueFuncall_66
addi $t5, $t5, -112
sw  $t6, 0($t5)       #endAllocate
move $t1, $fp      #direccion valueFuncall_65
addi $t1, $t1, -104
move $t2, $fp      #direccion realValueFuncall_66
addi $t2, $t2, -112
lw $t0, 0($t1)
sw $t0, 0($t2)
lw $t0, 4($t1)
sw $t0, 4($t2)
la  $t6, Int     #allocate
move $t5, $fp      #direccion int_67
addi $t5, $t5, -120
sw  $t6, 0($t5)       #endAllocate
li $t7, 2  #Setindex
move $t6, $fp      #direccion int_67
addi $t6, $t6, -120
sw $t7, 4($t6)      #end setindex
move $t9, $fp      #direccion i54
addi $t9, $t9, -16
lw $t3 , 4($t9)       #end carga valor
move $t9, $fp      #direccion int_67
addi $t9, $t9, -120
lw $t1 , 4($t9)       #end carga valor
sub $t2 , $t3 , $t1
move $t1, $fp      #direccion i54
addi $t1, $t1, -16
lw $t4, 0($t1)
move $t1, $fp      #direccion valueBinExp_68
addi $t1, $t1, -128
sw $t4, 0($t1)
move $t3, $fp      #direccion valueBinExp_68
addi $t3, $t3, -128
sw $t2, 4($t3)
addi $sp, $sp, -4         #salvando registros
sw  $ra, 0($sp)
addi $sp, $sp, -4
sw  $fp, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t0, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t1, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t2, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t3, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t4, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t5, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t6, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t7, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t8, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t9, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion self_53
addi $t6, $t6, -8
sw  $t6, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion valueBinExp_68
addi $t6, $t6, -128
sw  $t6, 0($sp)
lw $t2, Main_fibo_method       #vcall
li $t3, 4
mul $t2, $t2, $t3
move $t4, $fp      #direccion self_53
addi $t4, $t4, -8
lw $t5, 0($t4)
lw $t4, 8($t5)
add $t2, $t2, $t4
lw $t4, 0($t2)
jal $t4
lw  $t9, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t8, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t7, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t6, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t5, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t4, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t3, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t2, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t1, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t0, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $fp, 0($sp)     #cargando registros
addi $sp, $sp, 4
lw  $ra, 0($sp)      #cargando registros
addi $sp, $sp, 4
move $t5, $fp      #direccion valueFuncall_69
addi $t5, $t5, -136
lw $t6, 0($v0)
sw  $t6, 0($t5)
lw $t6, 4($v0)
sw  $t6, 4($t5)     #end del vfuncall
la  $t6, Int     #allocate
move $t5, $fp      #direccion realValueFuncall_70
addi $t5, $t5, -144
sw  $t6, 0($t5)       #endAllocate
move $t1, $fp      #direccion valueFuncall_69
addi $t1, $t1, -136
move $t2, $fp      #direccion realValueFuncall_70
addi $t2, $t2, -144
lw $t0, 0($t1)
sw $t0, 0($t2)
lw $t0, 4($t1)
sw $t0, 4($t2)
move $t9, $fp      #direccion realValueFuncall_66
addi $t9, $t9, -112
lw $t3 , 4($t9)       #end carga valor
move $t9, $fp      #direccion realValueFuncall_70
addi $t9, $t9, -144
lw $t1 , 4($t9)       #end carga valor
add $t2 , $t3 , $t1
move $t1, $fp      #direccion realValueFuncall_66
addi $t1, $t1, -112
lw $t4, 0($t1)
move $t1, $fp      #direccion valueBinExp_71
addi $t1, $t1, -152
sw $t4, 0($t1)
move $t3, $fp      #direccion valueBinExp_71
addi $t3, $t3, -152
sw $t2, 4($t3)
move $t1, $fp      #direccion valueBinExp_71
addi $t1, $t1, -152
move $t2, $fp      #direccion valueIfExp_59
addi $t2, $t2, -56
lw $t0, 0($t1)
sw $t0, 0($t2)
lw $t0, 4($t1)
sw $t0, 4($t2)
j EndLabel_73
ThenLabel_72:
la  $t6, Int     #allocate
move $t5, $fp      #direccion int_62
addi $t5, $t5, -80
sw  $t6, 0($t5)       #endAllocate
li $t7, 1  #Setindex
move $t6, $fp      #direccion int_62
addi $t6, $t6, -80
sw $t7, 4($t6)      #end setindex
move $t1, $fp      #direccion int_62
addi $t1, $t1, -80
move $t2, $fp      #direccion valueIfExp_59
addi $t2, $t2, -56
lw $t0, 0($t1)
sw $t0, 0($t2)
lw $t0, 4($t1)
sw $t0, 4($t2)
EndLabel_73:
move $t1, $fp      #direccion valueIfExp_59
addi $t1, $t1, -56
move $t2, $fp      #direccion valueIfExp_55
addi $t2, $t2, -24
lw $t0, 0($t1)
sw $t0, 0($t2)
lw $t0, 4($t1)
sw $t0, 4($t2)
j EndLabel_75
ThenLabel_74:
la  $t6, Int     #allocate
move $t5, $fp      #direccion int_58
addi $t5, $t5, -48
sw  $t6, 0($t5)       #endAllocate
li $t7, 0  #Setindex
move $t6, $fp      #direccion int_58
addi $t6, $t6, -48
sw $t7, 4($t6)      #end setindex
move $t1, $fp      #direccion int_58
addi $t1, $t1, -48
move $t2, $fp      #direccion valueIfExp_55
addi $t2, $t2, -24
lw $t0, 0($t1)
sw $t0, 0($t2)
lw $t0, 4($t1)
sw $t0, 4($t2)
EndLabel_75:
move $v0, $fp      #direccion valueIfExp_55
addi $v0, $v0, -24
move $sp, $fp
jr $ra


Main_main30:
lw  $t6, 0($sp)      #sacando parametros
la $t4, self_76
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)
addi $sp, $sp, 4      #terminando sacando parametros
move $fp, $sp
addi $sp,$sp, -48
la $t6, self_76
move $t4, $fp      #direccion self_76
addi $t4, $t4, -8
lw $t5, 0($t6)
sw  $t5, 0($t4)
lw $t5, 4($t6)
sw  $t5, 4($t4)


la  $t6, Int     #allocate
move $t5, $fp      #direccion int_77
addi $t5, $t5, -16
sw  $t6, 0($t5)       #endAllocate
li $t7, 15  #Setindex
move $t6, $fp      #direccion int_77
addi $t6, $t6, -16
sw $t7, 4($t6)      #end setindex
addi $sp, $sp, -4         #salvando registros
sw  $ra, 0($sp)
addi $sp, $sp, -4
sw  $fp, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t0, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t1, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t2, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t3, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t4, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t5, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t6, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t7, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t8, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t9, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion self_76
addi $t6, $t6, -8
sw  $t6, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion int_77
addi $t6, $t6, -16
sw  $t6, 0($sp)
lw $t2, Main_fibo_method       #vcall
li $t3, 4
mul $t2, $t2, $t3
move $t4, $fp      #direccion self_76
addi $t4, $t4, -8
lw $t5, 0($t4)
lw $t4, 8($t5)
add $t2, $t2, $t4
lw $t4, 0($t2)
jal $t4
lw  $t9, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t8, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t7, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t6, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t5, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t4, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t3, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t2, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t1, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t0, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $fp, 0($sp)     #cargando registros
addi $sp, $sp, 4
lw  $ra, 0($sp)      #cargando registros
addi $sp, $sp, 4
move $t5, $fp      #direccion valueFuncall_78
addi $t5, $t5, -24
lw $t6, 0($v0)
sw  $t6, 0($t5)
lw $t6, 4($v0)
sw  $t6, 4($t5)     #end del vfuncall
la  $t6, Int     #allocate
move $t5, $fp      #direccion realValueFuncall_79
addi $t5, $t5, -32
sw  $t6, 0($t5)       #endAllocate
move $t1, $fp      #direccion valueFuncall_78
addi $t1, $t1, -24
move $t2, $fp      #direccion realValueFuncall_79
addi $t2, $t2, -32
lw $t0, 0($t1)
sw $t0, 0($t2)
lw $t0, 4($t1)
sw $t0, 4($t2)
addi $sp, $sp, -4         #salvando registros
sw  $ra, 0($sp)
addi $sp, $sp, -4
sw  $fp, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t0, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t1, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t2, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t3, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t4, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t5, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t6, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t7, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t8, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t9, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion self_76
addi $t6, $t6, -8
sw  $t6, 0($sp)
addi $sp, $sp, -4       #guardando parametro
move $t6, $fp      #direccion realValueFuncall_79
addi $t6, $t6, -32
sw  $t6, 0($sp)
lw $t2, Main_out_int_method       #vcall
li $t3, 4
mul $t2, $t2, $t3
move $t4, $fp      #direccion self_76
addi $t4, $t4, -8
lw $t5, 0($t4)
lw $t4, 8($t5)
add $t2, $t2, $t4
lw $t4, 0($t2)
jal $t4
lw  $t9, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t8, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t7, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t6, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t5, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t4, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t3, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t2, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t1, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t0, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $fp, 0($sp)     #cargando registros
addi $sp, $sp, 4
lw  $ra, 0($sp)      #cargando registros
addi $sp, $sp, 4
move $t5, $fp      #direccion valueFuncall_80
addi $t5, $t5, -40
lw $t6, 0($v0)
sw  $t6, 0($t5)
lw $t6, 4($v0)
sw  $t6, 4($t5)     #end del vfuncall
la  $t6, Main     #allocate
move $t5, $fp      #direccion realValueFuncall_81
addi $t5, $t5, -48
sw  $t6, 0($t5) 
la $t5, realValueFuncall_81_33
move $t7, $fp      #direccion realValueFuncall_81
addi $t7, $t7, -48
sw $t5, 4($t7)       #endAllocate
addi $sp, $sp, -4         #salvando registros
sw  $ra, 0($sp)
addi $sp, $sp, -4
sw  $fp, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t0, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t1, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t2, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t3, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t4, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t5, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t6, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t7, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t8, 0($sp)
addi $sp, $sp, -4        #salvando registros
sw  $t9, 0($sp)
move $t9, $fp      #direccion realValueFuncall_81
addi $t9, $t9, -48
lw $t6 , 4($t9)       #end carga valor
move $t9, $fp      #direccion valueFuncall_80
addi $t9, $t9, -40
lw $t7 , 4($t9)       #end carga valor
lw  $t9, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t8, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t7, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t6, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t5, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t4, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t3, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t2, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t1, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $t0, 0($sp)      #cargando registros
addi $sp, $sp, 4
lw  $fp, 0($sp)     #cargando registros
addi $sp, $sp, 4
lw  $ra, 0($sp)      #cargando registros
addi $sp, $sp, 4
move $v0, $fp      #direccion realValueFuncall_81
addi $v0, $v0, -48
move $sp, $fp
jr $ra
