OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm",
	      "elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
  /* Read-only sections, merged into text segment: */
  . = 0x8D0D46BC;
  
  _start = .;
  .text : {
    *(.start);
    *(.text);
    *(SORT(.table.*));
  }
  .data : { *(.data); *(.data2); }
  .rodata : { *(.rodata); }
  
  _bss = .;
  .bss : { *(.bss); }
  _bssend = .;
  _end = .;
  size = _end - _start;
}
