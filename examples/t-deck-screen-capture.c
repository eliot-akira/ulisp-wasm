/*
 T-Deck Screen Capture - 26th October 2023
 http://www.ulisp.com/show?4WKE
*/

void SDWriteTwo (File file, uint16_t word) {
  file.write(word & 0xFF); file.write((word >> 8) & 0xFF);
}

object *fn_savescreen (object *args, object *env) {
  (void) env;
  #if defined(sdcardsupport)
  object *arg = checkstring(first(args));
  sd_begin();
  File file;
  char buffer[BUFFERSIZE];
  file = SD.open(MakeFilename(arg, buffer), FILE_WRITE);
  if (!file) error2(PSTR("problem saving to SD card or invalid filename"));
  uint16_t width = 320, height = 240;
  file.write('B'); file.write('M');          // BMP
  SDWriteInt(file, 14+40+width*height*2);    // File size in bytes
  SDWriteInt(file, 0);
  SDWriteInt(file, 14+40);                   // Offset to image data from start
  // Image header: 40 bytes
  SDWriteInt(file, 40);                      // Header size
  SDWriteInt(file, width);                   // Image width
  SDWriteInt(file, height);                  // Image height
  SDWriteTwo(file, 1);   // Planes
  SDWriteTwo(file, 16); // Bits per pixel
  SDWriteInt(file, 0);                       // Compression (none)
  SDWriteInt(file, 0);                       // Image size (0 for uncompressed)
  SDWriteInt(file, 0);                       // Preferred X resolution (ignore)
  SDWriteInt(file, 0);                       // Preferred Y resolution (ignore)
  SDWriteInt(file, 0);                       // Colour map entries (ignore)
  SDWriteInt(file, 0);                       // Important colours (ignore)
  // Image data: width * height * 2 bytes
  for (int y=height-1; y>=0; y--) {
    int line = y/Leading, row = y%Leading;
    for (int x=0; x<width; x++) {
      int column = x/6, col = x%6;
      char c = 0; bool bit;
      if (column < Columns) c = ScrollBuf[column][(line+Scroll) % Lines];
      if (col>=5 || row>=8) bit = 0;
      else bit = font[(c & 0x7f)*5 + col] >> row & 1;
      uint16_t rgb;
      if (c & 0x80 && row<8) {
        if (bit) rgb = COLOR_BLACK; else rgb = COLOR_GREEN;
      } else {
        if (bit) rgb = COLOR_WHITE; else rgb = COLOR_BLACK;
      }
      uint16_t data = (rgb & 0xFFC0)>>1 | (rgb & 0x1F); // Convert to 555 format
      SDWriteTwo(file, data);
    }
  }
  file.close();
  #endif
  return nil;
}

// Symbol names
const char stringsavescreen[] PROGMEM = "save-screen";

// Documentation strings
const char docsavescreen[] PROGMEM = "(save-screen filename)\n"
"Saves an image of the text screen as a BMP file on the SD card.";

// Symbol lookup table
const tbl_entry_t lookup_table2[] PROGMEM = {
  { stringsavescreen, fn_savescreen, 0211, docsavescreen },
};

// Table cross-reference functions

tbl_entry_t *tables[] = {lookup_table, lookup_table2};
const unsigned int tablesizes[] = { arraysize(lookup_table), arraysize(lookup_table2) };

const tbl_entry_t *table (int n) {
  return tables[n];
}

unsigned int tablesize (int n) {
  return tablesizes[n];
}
