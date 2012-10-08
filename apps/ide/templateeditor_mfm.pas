unit templateeditor_mfm;
{$ifdef FPC}{$mode objfpc}{$h+}{$endif}

interface

implementation
uses
 mseclasses,templateeditor;

const
 objdata: record size: integer; data: array[0..6145] of byte end =
      (size: 6146; data: (
  84,80,70,48,17,116,116,101,109,112,108,97,116,101,101,100,105,116,111,114,
  102,111,16,116,101,109,112,108,97,116,101,101,100,105,116,111,114,102,111,7,
  118,105,115,105,98,108,101,8,8,98,111,117,110,100,115,95,120,3,147,0,
  8,98,111,117,110,100,115,95,121,2,120,9,98,111,117,110,100,115,95,99,
  120,3,217,1,9,98,111,117,110,100,115,95,99,121,3,143,1,30,99,111,
  110,116,97,105,110,101,114,46,102,114,97,109,101,46,99,108,105,101,110,116,
  119,105,100,116,104,109,105,110,3,217,1,29,99,111,110,116,97,105,110,101,
  114,46,102,114,97,109,101,46,122,111,111,109,119,105,100,116,104,115,116,101,
  112,2,1,30,99,111,110,116,97,105,110,101,114,46,102,114,97,109,101,46,
  122,111,111,109,104,101,105,103,104,116,115,116,101,112,2,1,16,99,111,110,
  116,97,105,110,101,114,46,98,111,117,110,100,115,1,2,0,2,0,3,217,
  1,3,143,1,0,7,111,112,116,105,111,110,115,11,14,102,111,95,102,114,
  101,101,111,110,99,108,111,115,101,13,102,111,95,99,108,111,115,101,111,110,
  101,115,99,15,102,111,95,97,117,116,111,114,101,97,100,115,116,97,116,16,
  102,111,95,97,117,116,111,119,114,105,116,101,115,116,97,116,10,102,111,95,
  115,97,118,101,112,111,115,13,102,111,95,115,97,118,101,122,111,114,100,101,
  114,12,102,111,95,115,97,118,101,115,116,97,116,101,0,8,115,116,97,116,
  102,105,108,101,7,10,116,115,116,97,116,102,105,108,101,49,7,99,97,112,
  116,105,111,110,6,20,67,111,100,101,32,84,101,109,112,108,97,116,101,32,
  69,100,105,116,111,114,8,111,110,108,111,97,100,101,100,7,9,99,114,101,
  97,116,101,101,120,101,12,111,110,99,108,111,115,101,113,117,101,114,121,7,
  6,99,108,111,115,101,113,15,109,111,100,117,108,101,99,108,97,115,115,110,
  97,109,101,6,8,116,109,115,101,102,111,114,109,0,7,116,98,117,116,116,
  111,110,8,116,98,117,116,116,111,110,49,8,116,97,98,111,114,100,101,114,
  2,12,8,98,111,117,110,100,115,95,120,3,98,1,8,98,111,117,110,100,
  115,95,121,3,120,1,9,98,111,117,110,100,115,95,99,120,2,58,9,98,
  111,117,110,100,115,95,99,121,2,20,7,97,110,99,104,111,114,115,11,8,
  97,110,95,114,105,103,104,116,9,97,110,95,98,111,116,116,111,109,0,5,
  115,116,97,116,101,11,10,97,115,95,100,101,102,97,117,108,116,15,97,115,
  95,108,111,99,97,108,100,101,102,97,117,108,116,15,97,115,95,108,111,99,
  97,108,99,97,112,116,105,111,110,0,7,99,97,112,116,105,111,110,6,3,
  38,79,75,11,109,111,100,97,108,114,101,115,117,108,116,7,5,109,114,95,
  111,107,0,0,7,116,98,117,116,116,111,110,8,116,98,117,116,116,111,110,
  50,8,98,111,117,110,100,115,95,120,3,162,1,8,98,111,117,110,100,115,
  95,121,3,120,1,9,98,111,117,110,100,115,95,99,120,2,50,9,98,111,
  117,110,100,115,95,99,121,2,20,7,97,110,99,104,111,114,115,11,8,97,
  110,95,114,105,103,104,116,9,97,110,95,98,111,116,116,111,109,0,5,115,
  116,97,116,101,11,15,97,115,95,108,111,99,97,108,99,97,112,116,105,111,
  110,0,7,99,97,112,116,105,111,110,6,7,38,67,97,110,99,101,108,11,
  109,111,100,97,108,114,101,115,117,108,116,7,9,109,114,95,99,97,110,99,
  101,108,0,0,11,116,115,116,114,105,110,103,101,100,105,116,6,110,97,109,
  101,101,100,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,5,38,
  78,97,109,101,11,102,114,97,109,101,46,100,117,109,109,121,2,0,16,102,
  114,97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,17,
  2,0,2,0,0,8,116,97,98,111,114,100,101,114,2,1,8,98,111,117,
  110,100,115,95,120,2,0,8,98,111,117,110,100,115,95,121,2,4,9,98,
  111,117,110,100,115,95,99,120,2,109,9,98,111,117,110,100,115,95,99,121,
  2,37,11,111,112,116,105,111,110,115,101,100,105,116,11,12,111,101,95,117,
  110,100,111,111,110,101,115,99,13,111,101,95,99,108,111,115,101,113,117,101,
  114,121,16,111,101,95,99,104,101,99,107,109,114,99,97,110,99,101,108,14,
  111,101,95,115,104,105,102,116,114,101,116,117,114,110,12,111,101,95,101,97,
  116,114,101,116,117,114,110,20,111,101,95,114,101,115,101,116,115,101,108,101,
  99,116,111,110,101,120,105,116,15,111,101,95,101,120,105,116,111,110,99,117,
  114,115,111,114,13,111,101,95,101,110,100,111,110,101,110,116,101,114,13,111,
  101,95,97,117,116,111,115,101,108,101,99,116,25,111,101,95,97,117,116,111,
  115,101,108,101,99,116,111,110,102,105,114,115,116,99,108,105,99,107,10,111,
  101,95,110,111,116,110,117,108,108,12,111,101,95,115,97,118,101,118,97,108,
  117,101,12,111,101,95,115,97,118,101,115,116,97,116,101,25,111,101,95,99,
  104,101,99,107,118,97,108,117,101,112,97,115,116,115,116,97,116,114,101,97,
  100,0,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,0,
  11,116,115,116,114,105,110,103,101,100,105,116,9,99,111,109,109,101,110,116,
  101,100,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,8,67,38,
  111,109,109,101,110,116,11,102,114,97,109,101,46,100,117,109,109,121,2,0,
  16,102,114,97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,2,0,
  2,17,2,0,2,0,0,8,116,97,98,111,114,100,101,114,2,2,8,98,
  111,117,110,100,115,95,120,2,112,8,98,111,117,110,100,115,95,121,2,4,
  9,98,111,117,110,100,115,95,99,120,3,105,1,9,98,111,117,110,100,115,
  95,99,121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,
  102,116,6,97,110,95,116,111,112,8,97,110,95,114,105,103,104,116,0,13,
  114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,0,11,116,115,
  116,114,105,110,103,103,114,105,100,9,112,97,114,97,109,103,114,105,100,13,
  111,112,116,105,111,110,115,119,105,100,103,101,116,11,13,111,119,95,109,111,
  117,115,101,102,111,99,117,115,11,111,119,95,116,97,98,102,111,99,117,115,
  13,111,119,95,97,114,114,111,119,102,111,99,117,115,16,111,119,95,97,114,
  114,111,119,102,111,99,117,115,111,117,116,17,111,119,95,102,111,99,117,115,
  98,97,99,107,111,110,101,115,99,13,111,119,95,109,111,117,115,101,119,104,
  101,101,108,17,111,119,95,100,101,115,116,114,111,121,119,105,100,103,101,116,
  115,0,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,10,38,80,
  97,114,97,109,101,116,101,114,16,102,114,97,109,101,46,111,117,116,101,114,
  102,114,97,109,101,1,2,0,2,17,2,0,2,0,0,8,116,97,98,111,
  114,100,101,114,2,3,8,98,111,117,110,100,115,95,120,2,0,8,98,111,
  117,110,100,115,95,121,2,46,9,98,111,117,110,100,115,95,99,120,3,217,
  1,9,98,111,117,110,100,115,95,99,121,2,122,7,97,110,99,104,111,114,
  115,11,6,97,110,95,116,111,112,0,11,111,112,116,105,111,110,115,103,114,
  105,100,11,12,111,103,95,99,111,108,115,105,122,105,110,103,12,111,103,95,
  114,111,119,109,111,118,105,110,103,15,111,103,95,107,101,121,114,111,119,109,
  111,118,105,110,103,15,111,103,95,114,111,119,105,110,115,101,114,116,105,110,
  103,14,111,103,95,114,111,119,100,101,108,101,116,105,110,103,19,111,103,95,
  102,111,99,117,115,99,101,108,108,111,110,101,110,116,101,114,15,111,103,95,
  97,117,116,111,102,105,114,115,116,114,111,119,13,111,103,95,97,117,116,111,
  97,112,112,101,110,100,20,111,103,95,99,111,108,99,104,97,110,103,101,111,
  110,116,97,98,107,101,121,10,111,103,95,119,114,97,112,99,111,108,12,111,
  103,95,97,117,116,111,112,111,112,117,112,17,111,103,95,109,111,117,115,101,
  115,99,114,111,108,108,99,111,108,0,14,100,97,116,97,99,111,108,115,46,
  99,111,117,110,116,2,2,16,100,97,116,97,99,111,108,115,46,111,112,116,
  105,111,110,115,11,7,99,111,95,102,105,108,108,12,99,111,95,115,97,118,
  101,115,116,97,116,101,17,99,111,95,109,111,117,115,101,115,99,114,111,108,
  108,114,111,119,0,14,100,97,116,97,99,111,108,115,46,105,116,101,109,115,
  14,1,5,119,105,100,116,104,2,100,7,111,112,116,105,111,110,115,11,12,
  99,111,95,115,97,118,101,115,116,97,116,101,17,99,111,95,109,111,117,115,
  101,115,99,114,111,108,108,114,111,119,0,10,118,97,108,117,101,102,97,108,
  115,101,6,1,48,9,118,97,108,117,101,116,114,117,101,6,1,49,0,1,
  5,119,105,100,116,104,3,80,1,7,111,112,116,105,111,110,115,11,7,99,
  111,95,102,105,108,108,12,99,111,95,115,97,118,101,115,116,97,116,101,17,
  99,111,95,109,111,117,115,101,115,99,114,111,108,108,114,111,119,0,10,118,
  97,108,117,101,102,97,108,115,101,6,1,48,9,118,97,108,117,101,116,114,
  117,101,6,1,49,0,0,13,102,105,120,99,111,108,115,46,99,111,117,110,
  116,2,1,13,102,105,120,99,111,108,115,46,105,116,101,109,115,14,1,5,
  119,105,100,116,104,2,30,8,110,117,109,115,116,97,114,116,2,1,7,110,
  117,109,115,116,101,112,2,1,0,0,13,102,105,120,114,111,119,115,46,99,
  111,117,110,116,2,1,13,102,105,120,114,111,119,115,46,105,116,101,109,115,
  14,1,6,104,101,105,103,104,116,2,16,14,99,97,112,116,105,111,110,115,
  46,99,111,117,110,116,2,2,14,99,97,112,116,105,111,110,115,46,105,116,
  101,109,115,14,1,7,99,97,112,116,105,111,110,6,4,78,97,109,101,0,
  1,7,99,97,112,116,105,111,110,6,13,68,101,102,97,117,108,116,32,86,
  97,108,117,101,0,0,0,0,13,100,97,116,97,114,111,119,104,101,105,103,
  104,116,2,16,8,115,116,97,116,102,105,108,101,7,10,116,115,116,97,116,
  102,105,108,101,49,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,
  14,0,0,7,116,115,112,97,99,101,114,8,116,115,112,97,99,101,114,49,
  8,116,97,98,111,114,100,101,114,2,13,8,98,111,117,110,100,115,95,120,
  3,192,0,8,98,111,117,110,100,115,95,121,2,41,9,98,111,117,110,100,
  115,95,99,120,2,50,9,98,111,117,110,100,115,95,99,121,2,5,7,108,
  105,110,107,116,111,112,7,9,99,111,109,109,101,110,116,101,100,10,108,105,
  110,107,98,111,116,116,111,109,7,9,112,97,114,97,109,103,114,105,100,0,
  0,9,116,115,112,108,105,116,116,101,114,10,116,115,112,108,105,116,116,101,
  114,49,13,111,112,116,105,111,110,115,119,105,100,103,101,116,11,17,111,119,
  95,100,101,115,116,114,111,121,119,105,100,103,101,116,115,0,5,99,111,108,
  111,114,4,3,0,0,144,8,116,97,98,111,114,100,101,114,2,14,8,98,
  111,117,110,100,115,95,120,2,0,8,98,111,117,110,100,115,95,121,3,168,
  0,9,98,111,117,110,100,115,95,99,120,3,217,1,9,98,111,117,110,100,
  115,95,99,121,2,3,7,97,110,99,104,111,114,115,11,6,97,110,95,116,
  111,112,0,7,111,112,116,105,111,110,115,11,9,115,112,111,95,118,109,111,
  118,101,9,115,112,111,95,118,112,114,111,112,12,115,112,111,95,100,111,99,
  107,108,101,102,116,11,115,112,111,95,100,111,99,107,116,111,112,13,115,112,
  111,95,100,111,99,107,114,105,103,104,116,14,115,112,111,95,100,111,99,107,
  98,111,116,116,111,109,0,7,108,105,110,107,116,111,112,7,9,112,97,114,
  97,109,103,114,105,100,10,108,105,110,107,98,111,116,116,111,109,7,9,116,
  101,109,112,108,103,114,105,100,8,115,116,97,116,102,105,108,101,7,10,116,
  115,116,97,116,102,105,108,101,49,0,0,11,116,119,105,100,103,101,116,103,
  114,105,100,9,116,101,109,112,108,103,114,105,100,13,111,112,116,105,111,110,
  115,119,105,100,103,101,116,11,13,111,119,95,109,111,117,115,101,102,111,99,
  117,115,11,111,119,95,116,97,98,102,111,99,117,115,13,111,119,95,97,114,
  114,111,119,102,111,99,117,115,16,111,119,95,97,114,114,111,119,102,111,99,
  117,115,111,117,116,17,111,119,95,102,111,99,117,115,98,97,99,107,111,110,
  101,115,99,13,111,119,95,109,111,117,115,101,119,104,101,101,108,17,111,119,
  95,100,101,115,116,114,111,121,119,105,100,103,101,116,115,0,8,116,97,98,
  111,114,100,101,114,2,4,8,98,111,117,110,100,115,95,120,2,0,8,98,
  111,117,110,100,115,95,121,3,171,0,9,98,111,117,110,100,115,95,99,120,
  3,217,1,9,98,111,117,110,100,115,95,99,121,3,173,0,7,97,110,99,
  104,111,114,115,11,6,97,110,95,116,111,112,9,97,110,95,98,111,116,116,
  111,109,0,11,111,112,116,105,111,110,115,103,114,105,100,11,19,111,103,95,
  102,111,99,117,115,99,101,108,108,111,110,101,110,116,101,114,15,111,103,95,
  97,117,116,111,102,105,114,115,116,114,111,119,20,111,103,95,99,111,108,99,
  104,97,110,103,101,111,110,116,97,98,107,101,121,10,111,103,95,119,114,97,
  112,99,111,108,12,111,103,95,97,117,116,111,112,111,112,117,112,17,111,103,
  95,109,111,117,115,101,115,99,114,111,108,108,99,111,108,0,13,102,105,120,
  99,111,108,115,46,99,111,117,110,116,2,1,13,102,105,120,99,111,108,115,
  46,105,116,101,109,115,14,1,5,119,105,100,116,104,2,30,8,110,117,109,
  115,116,97,114,116,2,1,7,110,117,109,115,116,101,112,2,1,0,0,8,
  114,111,119,99,111,117,110,116,2,1,14,100,97,116,97,99,111,108,115,46,
  99,111,117,110,116,2,1,16,100,97,116,97,99,111,108,115,46,111,112,116,
  105,111,110,115,11,22,99,111,95,108,101,102,116,98,117,116,116,111,110,102,
  111,99,117,115,111,110,108,121,12,99,111,95,115,97,118,101,118,97,108,117,
  101,12,99,111,95,115,97,118,101,115,116,97,116,101,17,99,111,95,109,111,
  117,115,101,115,99,114,111,108,108,114,111,119,0,14,100,97,116,97,99,111,
  108,115,46,105,116,101,109,115,14,1,5,119,105,100,116,104,3,248,3,7,
  111,112,116,105,111,110,115,11,22,99,111,95,108,101,102,116,98,117,116,116,
  111,110,102,111,99,117,115,111,110,108,121,12,99,111,95,115,97,118,101,118,
  97,108,117,101,12,99,111,95,115,97,118,101,115,116,97,116,101,17,99,111,
  95,109,111,117,115,101,115,99,114,111,108,108,114,111,119,0,10,119,105,100,
  103,101,116,110,97,109,101,6,7,116,101,109,112,108,101,100,9,100,97,116,
  97,99,108,97,115,115,7,23,116,103,114,105,100,114,105,99,104,115,116,114,
  105,110,103,100,97,116,97,108,105,115,116,4,100,97,116,97,1,1,6,0,
  0,0,0,0,16,100,97,116,97,114,111,119,108,105,110,101,119,105,100,116,
  104,2,0,13,100,97,116,97,114,111,119,104,101,105,103,104,116,2,15,13,
  114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,13,116,117,110,
  100,111,116,101,120,116,101,100,105,116,7,116,101,109,112,108,101,100,11,111,
  112,116,105,111,110,115,115,107,105,110,11,19,111,115,107,95,102,114,97,109,
  101,98,117,116,116,111,110,111,110,108,121,0,8,116,97,98,111,114,100,101,
  114,2,1,7,118,105,115,105,98,108,101,8,8,98,111,117,110,100,115,95,
  120,2,0,8,98,111,117,110,100,115,95,121,2,0,9,98,111,117,110,100,
  115,95,99,120,3,248,3,9,98,111,117,110,100,115,95,99,121,2,15,9,
  102,111,110,116,46,110,97,109,101,6,11,115,116,102,95,100,101,102,97,117,
  108,116,11,102,111,110,116,46,120,115,99,97,108,101,2,1,10,102,111,110,
  116,46,100,117,109,109,121,2,0,17,111,110,101,100,105,116,110,111,116,105,
  102,99,97,116,105,111,110,7,10,101,100,105,116,110,111,116,105,102,121,13,
  114,101,102,102,111,110,116,104,101,105,103,104,116,2,14,0,0,0,11,116,
  115,116,114,105,110,103,100,105,115,112,10,99,117,114,115,111,114,100,105,115,
  112,13,102,114,97,109,101,46,99,97,112,116,105,111,110,6,6,67,117,114,
  115,111,114,17,102,114,97,109,101,46,99,97,112,116,105,111,110,100,105,115,
  116,2,2,17,102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,115,
  49,11,16,102,114,108,49,95,99,97,112,116,105,111,110,100,105,115,116,0,
  11,102,114,97,109,101,46,100,117,109,109,121,2,0,16,102,114,97,109,101,
  46,111,117,116,101,114,102,114,97,109,101,1,2,0,2,18,2,0,2,0,
  0,8,116,97,98,111,114,100,101,114,2,15,8,98,111,117,110,100,115,95,
  120,2,8,8,98,111,117,110,100,115,95,121,3,103,1,9,98,111,117,110,
  100,115,95,99,120,2,68,9,98,111,117,110,100,115,95,99,121,2,36,7,
  97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,116,9,97,110,95,
  98,111,116,116,111,109,0,9,116,101,120,116,102,108,97,103,115,11,12,116,
  102,95,120,99,101,110,116,101,114,101,100,12,116,102,95,121,99,101,110,116,
  101,114,101,100,0,13,114,101,102,102,111,110,116,104,101,105,103,104,116,2,
  14,0,0,9,116,115,112,108,105,116,116,101,114,10,116,115,112,108,105,116,
  116,101,114,50,13,111,112,116,105,111,110,115,119,105,100,103,101,116,11,17,
  111,119,95,100,101,115,116,114,111,121,119,105,100,103,101,116,115,0,5,99,
  111,108,111,114,4,3,0,0,144,8,116,97,98,111,114,100,101,114,2,16,
  7,118,105,115,105,98,108,101,8,8,98,111,117,110,100,115,95,120,2,109,
  8,98,111,117,110,100,115,95,121,2,16,9,98,111,117,110,100,115,95,99,
  120,2,3,9,98,111,117,110,100,115,95,99,121,2,29,7,111,112,116,105,
  111,110,115,11,9,115,112,111,95,104,112,114,111,112,12,115,112,111,95,100,
  111,99,107,108,101,102,116,11,115,112,111,95,100,111,99,107,116,111,112,13,
  115,112,111,95,100,111,99,107,114,105,103,104,116,14,115,112,111,95,100,111,
  99,107,98,111,116,116,111,109,0,8,108,105,110,107,108,101,102,116,7,6,
  110,97,109,101,101,100,9,108,105,110,107,114,105,103,104,116,7,9,99,111,
  109,109,101,110,116,101,100,8,115,116,97,116,102,105,108,101,7,10,116,115,
  116,97,116,102,105,108,101,49,0,0,12,116,105,110,116,101,103,101,114,101,
  100,105,116,5,99,111,108,101,100,13,102,114,97,109,101,46,99,97,112,116,
  105,111,110,6,3,67,111,108,11,102,114,97,109,101,46,100,117,109,109,121,
  2,0,16,102,114,97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,
  2,0,2,17,2,0,2,0,0,8,116,97,98,111,114,100,101,114,2,7,
  8,98,111,117,110,100,115,95,120,3,216,0,8,98,111,117,110,100,115,95,
  121,3,103,1,9,98,111,117,110,100,115,95,99,120,2,52,9,98,111,117,
  110,100,115,95,99,121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,
  95,108,101,102,116,9,97,110,95,98,111,116,116,111,109,0,5,118,97,108,
  117,101,2,1,3,109,105,110,2,1,13,114,101,102,102,111,110,116,104,101,
  105,103,104,116,2,14,0,0,12,116,105,110,116,101,103,101,114,101,100,105,
  116,5,114,111,119,101,100,13,102,114,97,109,101,46,99,97,112,116,105,111,
  110,6,3,82,111,119,11,102,114,97,109,101,46,100,117,109,109,121,2,0,
  16,102,114,97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,2,0,
  2,17,2,0,2,0,0,8,116,97,98,111,114,100,101,114,2,6,8,98,
  111,117,110,100,115,95,120,3,160,0,8,98,111,117,110,100,115,95,121,3,
  103,1,9,98,111,117,110,100,115,95,99,120,2,52,9,98,111,117,110,100,
  115,95,99,121,2,37,7,97,110,99,104,111,114,115,11,7,97,110,95,108,
  101,102,116,9,97,110,95,98,111,116,116,111,109,0,5,118,97,108,117,101,
  2,1,3,109,105,110,2,1,13,114,101,102,102,111,110,116,104,101,105,103,
  104,116,2,14,0,0,7,116,98,117,116,116,111,110,8,116,98,117,116,116,
  111,110,51,8,116,97,98,111,114,100,101,114,2,5,8,98,111,117,110,100,
  115,95,120,2,80,8,98,111,117,110,100,115,95,121,3,120,1,9,98,111,
  117,110,100,115,95,99,120,2,74,9,98,111,117,110,100,115,95,99,121,2,
  20,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,116,9,97,
  110,95,98,111,116,116,111,109,0,5,115,116,97,116,101,11,15,97,115,95,
  108,111,99,97,108,99,97,112,116,105,111,110,17,97,115,95,108,111,99,97,
  108,111,110,101,120,101,99,117,116,101,0,7,99,97,112,116,105,111,110,6,
  11,38,83,101,116,32,67,117,114,115,111,114,9,111,110,101,120,101,99,117,
  116,101,7,11,115,101,116,99,117,114,115,111,114,101,120,0,0,12,116,98,
  111,111,108,101,97,110,101,100,105,116,8,115,101,108,101,99,116,101,100,13,
  102,114,97,109,101,46,99,97,112,116,105,111,110,6,7,38,115,101,108,101,
  99,116,16,102,114,97,109,101,46,99,97,112,116,105,111,110,112,111,115,7,
  6,99,112,95,116,111,112,17,102,114,97,109,101,46,99,97,112,116,105,111,
  110,100,105,115,116,2,4,17,102,114,97,109,101,46,108,111,99,97,108,112,
  114,111,112,115,49,11,16,102,114,108,49,95,99,97,112,116,105,111,110,100,
  105,115,116,0,11,102,114,97,109,101,46,100,117,109,109,121,2,0,16,102,
  114,97,109,101,46,111,117,116,101,114,102,114,97,109,101,1,2,11,2,20,
  2,11,2,0,0,8,116,97,98,111,114,100,101,114,2,8,8,98,111,117,
  110,100,115,95,120,3,13,1,8,98,111,117,110,100,115,95,121,3,103,1,
  9,98,111,117,110,100,115,95,99,120,2,35,9,98,111,117,110,100,115,95,
  99,121,2,33,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,
  116,9,97,110,95,98,111,116,116,111,109,0,0,0,12,116,98,111,111,108,
  101,97,110,101,100,105,116,8,105,110,100,101,110,116,101,100,13,102,114,97,
  109,101,46,99,97,112,116,105,111,110,6,7,38,105,110,100,101,110,116,16,
  102,114,97,109,101,46,99,97,112,116,105,111,110,112,111,115,7,6,99,112,
  95,116,111,112,17,102,114,97,109,101,46,99,97,112,116,105,111,110,100,105,
  115,116,2,4,17,102,114,97,109,101,46,108,111,99,97,108,112,114,111,112,
  115,49,11,16,102,114,108,49,95,99,97,112,116,105,111,110,100,105,115,116,
  0,11,102,114,97,109,101,46,100,117,109,109,121,2,0,16,102,114,97,109,
  101,46,111,117,116,101,114,102,114,97,109,101,1,2,11,2,20,2,12,2,
  0,0,8,116,97,98,111,114,100,101,114,2,9,8,98,111,117,110,100,115,
  95,120,3,53,1,8,98,111,117,110,100,115,95,121,3,103,1,9,98,111,
  117,110,100,115,95,99,120,2,36,9,98,111,117,110,100,115,95,99,121,2,
  33,7,97,110,99,104,111,114,115,11,7,97,110,95,108,101,102,116,9,97,
  110,95,98,111,116,116,111,109,0,0,0,7,116,98,117,116,116,111,110,8,
  100,101,108,101,116,101,98,117,8,116,97,98,111,114,100,101,114,2,11,8,
  98,111,117,110,100,115,95,120,3,162,1,8,98,111,117,110,100,115,95,121,
  3,96,1,9,98,111,117,110,100,115,95,99,120,2,50,9,98,111,117,110,
  100,115,95,99,121,2,20,7,97,110,99,104,111,114,115,11,8,97,110,95,
  114,105,103,104,116,9,97,110,95,98,111,116,116,111,109,0,5,115,116,97,
  116,101,11,15,97,115,95,108,111,99,97,108,99,97,112,116,105,111,110,17,
  97,115,95,108,111,99,97,108,111,110,101,120,101,99,117,116,101,0,7,99,
  97,112,116,105,111,110,6,6,68,101,108,101,116,101,9,111,110,101,120,101,
  99,117,116,101,7,9,100,101,108,101,116,101,101,120,101,0,0,7,116,98,
  117,116,116,111,110,8,115,97,118,101,97,115,98,117,8,116,97,98,111,114,
  100,101,114,2,10,8,98,111,117,110,100,115,95,120,3,98,1,8,98,111,
  117,110,100,115,95,121,3,96,1,9,98,111,117,110,100,115,95,99,120,2,
  58,9,98,111,117,110,100,115,95,99,121,2,20,7,97,110,99,104,111,114,
  115,11,8,97,110,95,114,105,103,104,116,9,97,110,95,98,111,116,116,111,
  109,0,5,115,116,97,116,101,11,15,97,115,95,108,111,99,97,108,99,97,
  112,116,105,111,110,17,97,115,95,108,111,99,97,108,111,110,101,120,101,99,
  117,116,101,0,7,99,97,112,116,105,111,110,6,8,70,105,108,101,110,97,
  109,101,9,111,110,101,120,101,99,117,116,101,7,9,115,97,118,101,97,115,
  101,120,101,0,0,9,116,115,116,97,116,102,105,108,101,10,116,115,116,97,
  116,102,105,108,101,49,8,102,105,108,101,110,97,109,101,6,13,116,101,109,
  112,108,101,100,105,116,46,115,116,97,7,111,112,116,105,111,110,115,11,10,
  115,102,111,95,109,101,109,111,114,121,15,115,102,111,95,116,114,97,110,115,
  97,99,116,105,111,110,17,115,102,111,95,97,99,116,105,118,97,116,111,114,
  114,101,97,100,18,115,102,111,95,97,99,116,105,118,97,116,111,114,119,114,
  105,116,101,0,15,111,110,115,116,97,116,97,102,116,101,114,114,101,97,100,
  7,16,97,102,116,101,114,115,116,97,116,114,101,97,100,101,120,101,4,108,
  101,102,116,2,104,3,116,111,112,3,192,0,0,0,11,116,102,105,108,101,
  100,105,97,108,111,103,14,115,97,118,101,102,105,108,101,100,105,97,108,111,
  103,8,115,116,97,116,102,105,108,101,7,10,116,115,116,97,116,102,105,108,
  101,49,26,99,111,110,116,114,111,108,108,101,114,46,102,105,108,116,101,114,
  108,105,115,116,46,100,97,116,97,1,1,6,18,67,111,100,101,32,84,101,
  109,108,97,116,101,32,70,105,108,101,115,6,5,42,46,109,99,116,0,0,
  21,99,111,110,116,114,111,108,108,101,114,46,100,101,102,97,117,108,116,101,
  120,116,6,3,109,99,116,18,99,111,110,116,114,111,108,108,101,114,46,111,
  112,116,105,111,110,115,11,8,102,100,111,95,115,97,118,101,14,102,100,111,
  95,99,104,101,99,107,101,120,105,115,116,15,102,100,111,95,115,97,118,101,
  108,97,115,116,100,105,114,0,4,108,101,102,116,3,200,0,3,116,111,112,
  3,192,0,0,0,0)
 );

initialization
 registerobjectdata(@objdata,ttemplateeditorfo,'');
end.
