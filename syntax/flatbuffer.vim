if exists("b:current_syntax")
	finish
endif

syn case match

syn keyword flatbufferInclude		include
hi def link	flatbufferInclude		Include

syn keyword flatbufferKeyword		file_extension file_identifier root_type
syn keyword flatbufferKeyword		namespace attribute	
hi def link flatbufferKeyword 		Keyword

syn keyword flatbufferStructure		table struct enum union rpc_service
hi def link flatbufferStructure		Structure	

syn keyword flatbufferType			bool byte ubyte short ushort int uint float  
syn keyword flatbufferType			long ulong double int8 uint8 int16 uint16 
syn keyword flatbufferType			int32 uint32 int64 uint64 float32 float64
syn keyword flatbufferType			string
hi def link flatbufferType			Type

syn match   flatbufferInt     		/-\?\<\d\+\>/
syn match   flatbufferInt     		/\<0[xX]\x+\>/
hi def link	flatbufferInt			Number	

syn match   flatbufferFloat   		/\<-\?\d*\(\.\d*\)\?/
hi def link flatbufferFloat			Float

syn keyword flatbufferConstant		inf infinity nan
syn keyword flatbufferConstant		true false
hi def link flatbufferConstant		Constant

syn region 	flatbufferString  		start=/"/ skip=/\\./ end=/"/ contains=@Spell
hi def link flatbufferString		String

syn region  flatbufferComment 		start="\/\*" end="\*\/" contains=@Spell
syn region  flatbufferComment 		start="//" skip="\\$" end="$" keepend contains=@Spell
hi def link flatbufferComment 		Comment

let b:current_syntax = "flatbuffer"
