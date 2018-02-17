; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pribault <pribault@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/02/10 21:17:22 by pribault          #+#    #+#              ;
;    Updated: 2018/02/17 12:40:17 by pribault         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define UINT64_MAX	0xffffffffffffffff

section .text

global	_ft_strlen

	;	size_t	ft_strlen(const char *s)

_ft_strlen:

	;	assignations

	mov		rcx, UINT64_MAX
	mov		al, 0

	;	iterate

	cld
	repne	scasb

	;	compute final value

	mov		rax, UINT64_MAX
	sub		rax, rcx
	dec		rax

	ret
