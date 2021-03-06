{ MSEide Copyright (c) 1999-2014 by Martin Schreiber
   
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
}
unit mseififieldeditor;
{$ifdef FPC}{$mode objfpc}{$h+}{$goto on}{$endif}
interface
uses
 mdb,msegui,mseclasses,mseforms,msedb,msestat,msestatfile,msesimplewidgets,
 msegrids,msewidgetgrid,msesplitter,msedataedits,msestrings,mseeditglob,
 msegraphedits,mseglob,msegridsglob,msestringcontainer,mseificomp,mseifidbcomp,
 mseedit,mseguiglob,mseificompglob,mseifiglob,msemenus,msetypes,msedatalist;

const
 ififieldeditorstatname =  'ififieldeditor.sta';
type
 tmseififieldeditorfo = class(tmseform)
   tbutton1: tbutton;
   tbutton2: tbutton;
   index: tintegeredit;
   datatype: tenumtypeedit;
   splitter: tsplitter;
   fieldpo: tpointeredit;
   tstatfile1: tstatfile;
   fielddefli: tstringgrid;
   fields: twidgetgrid;
   fieldname: tstringedit;
   deftofield: tstockglyphbutton;
   fieldtodef: tstockglyphbutton;
   c: tstringcontainer;
   sourcefieldname: tdropdownlistedit;
   procedure formloaded(const sender: TObject);
   procedure initcla(const sender: tenumtypeedit);
   procedure splitterupda(const sender: TObject);
   procedure defscellevent(const sender: TObject; var info: celleventinfoty);
   procedure defsselectioncha(const sender: TObject);
   procedure fieldnamesetvalue(const sender: TObject; var avalue: msestring;
                   var accept: Boolean);
   procedure fieldsdataentered(const sender: TObject);
   procedure fieldsrowdel(const sender: tcustomgrid; const aindex: Integer;
                                    const acount: Integer);
   procedure transferfields(const sender: TObject);
   procedure fieldrowsdeleting(const sender: tcustomgrid; var aindex: Integer;
                                  var acount: Integer);
   procedure initfieldkind(const sender: tenumtypeedit);
   procedure fieldcellevent(const sender: TObject; var info: celleventinfoty);
   procedure fieldselectioncha(const sender: TObject);
   procedure deletefields(const sender: TObject);
   procedure fieldsort(const sender: tcustomgrid; const index1: Integer;
                   const index2: Integer; var aresult: Integer);
   procedure sourcebefdropexe(const sender: TObject);
   procedure sourcefieldsetexe(const sender: TObject; var avalue: msestring;
                   var accept: Boolean);
  private
   ffields: tificonnectedfields;
   ffieldintf: iifidbdataconnection;
   procedure checkfielddefs;
   function findfielddef(aname: msestring): integer;
   function typeok(const aname: msestring; 
                            const atype: listdatatypety): boolean;
   function uniquefieldname(const aname: msestring): msestring;
  public
   constructor create(const afields: tificonnectedfields); reintroduce;
 end;

function editififields(const instance: tificonnectedfields): boolean;

implementation
uses
 mseififieldeditor_mfm,typinfo,msewidgets,sysutils,mseformatstr;
 
type
 tificonnectedfields1 = class(tificonnectedfields);
 tconnectedifidatasource1 = class(tconnectedifidatasource);
 stringconststy = (
  str_connection            //0 Connection
 );
 
function editififields(const instance: tificonnectedfields): boolean;
var
 fo: tmseififieldeditorfo;
 int1{,int2}: integer;
// ct1: fieldclassty;
// ar1: fieldarty;
// activebefore: boolean;
begin
 result:= false;
 fo:= tmseififieldeditorfo.create(instance);
 try
  with fo do begin
   if ffieldintf <> nil then begin
   try
    if show(true) = mr_ok then begin
     fo.window.nofocus; //remove empty last line
     result:= true;
     instance.beginupdate();
     instance.count:= fields.rowcount;
     for int1:= 0 to fields.rowhigh() do begin
      with tififieldlink(instance[int1]) do begin
       sourcefieldname:= ansistring(fo.sourcefieldname[int1]);
       fieldname:= ansistring(fo.fieldname[int1]);
       datatype:= listdatatypety(fo.datatype[int1]);
      end; 
     end;
     instance.endupdate();
    (*
     setlength(ar1,fields.rowcount-dataset.fields.count);
     for int1:= 0 to high(ar1) do begin
      ct1:= getmsefieldclass(fieldclasstypety(classty[int1]));
//      ct1:= msefieldtypeclasses[fieldclasstypety(classty[int1])];
      int2:= index[int1];
      if int2 > 0 then begin
       dec(int2);
       if ct1 <> items[int2].classtype then begin
        ar1[int1]:= ct1.create(nil);
        ar1[int1].dataset:= dataset;
       end
       else begin
        ar1[int1]:= items[int2];
        fitems[int2]:= nil;
       end;
      end
      else begin
       if fieldpo[int1] <> nil then begin
        ar1[int1]:= tfield(fieldpo[int1]);
        fieldpo[int1]:= nil;
       end
       else begin
        ar1[int1]:= ct1.create(nil);
        try
         ar1[int1].dataset:= dataset;
        except
         application.handleexception(nil);
        end;
       end;
      end;
      try
       ar1[int1].fieldname:= fieldname[int1];
      except
       application.handleexception(nil);
      end;
      ar1[int1].fieldkind:= tfieldkind(fieldkind[int1]);
     end;
     for int1:= 0 to count - 1 do begin
      items[int1].free;
     end;
     for int1:= 0 to high(ar1) do begin
      tfield(fieldpo[int1]).free;
     end;
     fitems:= persistentarty(ar1);
   *)
    end;
   finally
   {
    for int1:= 0 to count - 1 do begin
     items[int1].dataset:= dataset;
    end;
    if result then begin
     for int1:= 0 to high(ar1) do begin
      items[int1].index:= int1;
     end;
     for int1:= length(ar1) to fields.rowhigh do begin
      tfield(fieldpo[int1]).index:= int1;
     end;
    end;
    if activebefore then begin
     try
      dataset.active:= true;
     except
      application.handleexception(dataset);
     end;
    end;
}
   end;
   end;
  end;
 finally
  fo.free;
 end;
end;

{ tmsedbfieldeditorfo }

constructor tmseififieldeditorfo.create(const afields: tificonnectedfields);
begin
 ffields:= afields;
 mseclasses.getcorbainterface(
             tificonnectedfields1(ffields).fowner.connection,
                       typeinfo(iifidbdataconnection),ffieldintf);
 inherited create(nil);
end;

procedure tmseififieldeditorfo.formloaded(const sender: TObject);
var
 int1: integer;
// field1: tfield;
 ar1: dbfieldinfoarty;
// ar2: msestringarty;
// ar3: datalistarty;
 f1: tififieldlink;
begin
 if ffieldintf <> nil then begin
  caption:= 'ifi '+c[ord(str_connection)]+': '+
                   msestring(tificonnectedfields1(ffields).fowner.name);
  ar1:= ffieldintf.getfieldinfos();
  fielddefli.rowcount:= length(ar1);
  for int1:= 0 to high(ar1) do begin
   with ar1[int1] do begin
    fielddefli[0][int1]:= name;
    fielddefli[1][int1]:= msestring(getenumname(
                                 typeinfo(tfieldtype),ord(datatype)));   
   end;
  end;
  fields.rowcount:= ffields.count;
  for int1:= 0 to fields.rowhigh do begin
   f1:= tififieldlink(ffields[int1]);
   fieldname[int1]:= msestring(f1.fieldname);
   sourcefieldname[int1]:= msestring(f1.sourcefieldname);
   datatype[int1]:= ord(f1.datatype);
  end;
  checkfielddefs();
 end;

{
 with ffields.fowner do begin
  caption:= c[ord(str_dataset)]+': '+name;
  fielddefli.rowcount:= fielddefs.count;
  for int1:= 0 to fielddefs.count-1 do begin
   fielddefli[0][int1]:= fielddefs[int1].name;
   fielddefli[1][int1]:= getenumname(typeinfo(tfieldtype),
                                 ord(fielddefs[int1].datatype));
  end;
 end;
 fields.rowcount:= ffields.count + ffields.dataset.fields.count;
 for int1:= 0 to ffields.count - 1 do begin
  index[int1]:= int1+1;
  fieldname[int1]:= ffields[int1].fieldname;
  classty[int1]:= ord(fieldclasstoclasstyp(fieldclassty(ffields[int1].classtype)));
  fieldkind[int1]:= ord(ffields[int1].fieldkind);
 end;
 for int1:= ffields.count to fields.rowhigh do begin
  index[int1]:= int1+1;
  field1:= ffields.dataset.fields[int1-ffields.count];
  fieldpo[int1]:= field1;
  with field1 do begin
   self.fieldname[int1]:= fieldname;
   classty[int1]:= ord(fieldclasstoclasstyp(fieldclassty(classtype)));
   self.fieldkind[int1]:= ord(fieldkind);
  end;
  fields.rowfontstate[int1]:= 0;
 end;
 checkfielddefs;
}
end;

procedure tmseififieldeditorfo.sourcebefdropexe(const sender: TObject);
begin
 sourcefieldname.dropdown.cols[0].asarray:= 
                  ffieldintf.getfieldnames(listdatatypety(datatype.value));
end;

function tmseififieldeditorfo.typeok(const aname: msestring;
                                 const atype: listdatatypety): boolean;
begin
 result:= false;
end;

function tmseififieldeditorfo.uniquefieldname(
                                    const aname: msestring): msestring;
var
 ar1: msestringarty;
 int1: integer;
 mstr1,mstr2: msestring;
 int2: integer;
label
 startlab;
begin
 ar1:= fieldname.gridvalues;
 for int1:= 0 to high(ar1) do begin
  ar1[int1]:= mseuppercase(ar1[int1]);
 end;
 mstr1:= mseuppercase(aname);
 int2:= 0;
startlab:
 mstr2:= mstr1;
 if int2 <> 0 then begin
  mstr2:= mstr2+inttostrmse(int2);
 end;
 for int1:= 0 to high(ar1) do begin
  if ar1[int1] = mstr2 then begin
   inc(int2);
   goto startlab;
  end;
 end;
 result:= mstr2;
end;

procedure tmseififieldeditorfo.sourcefieldsetexe(const sender: TObject;
               var avalue: msestring; var accept: Boolean);
var
// ar1: msestringarty;
 dl1: listdatatypety;
begin
 if (avalue <> '') then begin
  if not typeok(avalue,listdatatypety(datatype.value)) then begin
   dl1:= ffieldintf.getdatatype(ansistring(avalue));
   if dl1 <> dl_none then begin
    datatype.value:= ord(dl1);
   end;
  end;
  if fieldname.value = '' then begin
   fieldname.value:= uniquefieldname(avalue);
  end;
 end;
end;

procedure tmseififieldeditorfo.initcla(const sender: tenumtypeedit);
begin
 sender.typeinfopo:= typeinfo(fieldclasstypety);
end;

procedure tmseififieldeditorfo.initfieldkind(const sender: tenumtypeedit);
begin
 sender.typeinfopo:= typeinfo(listdatatypety);
end;

procedure tmseififieldeditorfo.splitterupda(const sender: TObject);
begin
 deftofield.left:= splitter.left+splitter.bounds_cx;
 fieldtodef.left:= splitter.left-fieldtodef.bounds_cx;
// alignx(wam_center,[splitter,deftofield]);
end;

procedure tmseififieldeditorfo.defscellevent(const sender: TObject;
         var info: celleventinfoty);
begin
 with info do begin
  if (eventkind = cek_select) and selected and 
          (fielddefli.rowfontstate[cell.row] <> -1) then begin
   accept:= false;
  end;
 end;
end;

procedure tmseififieldeditorfo.defsselectioncha(const sender: TObject);
begin
 deftofield.enabled:= fielddefli.datacols.hasselection;
end;

procedure tmseififieldeditorfo.fieldnamesetvalue(const sender: TObject;
            var avalue: msestring; var accept: Boolean);
var
 mstr1: msestring;
 int1: integer;
begin
 mstr1:= mseuppercase(avalue);
 for int1:= 0 to fields.rowcount-1 do begin
  if (int1 <> fields.row) and (mstr1 = mseuppercase(fieldname[int1])) then begin
   showerror('Field name exists.');
   accept:= false;
   break;
  end;
 end;
end; 

procedure tmseififieldeditorfo.checkfielddefs;
var
 int1,int2: integer;
 ar1: msestringarty;
 mstr1: msestring;
begin
 setlength(ar1,fields.rowcount);
 for int1:= 0 to high(ar1) do begin
  ar1[int1]:= mseuppercase(sourcefieldname[int1]);
 end;
 for int1:= 0 to fielddefli.rowcount - 1 do begin
  mstr1:= mseuppercase(fielddefli[0][int1]);
  fielddefli.rowfontstate[int1]:= -1;
  for int2:= 0 to high(ar1) do begin
   if mstr1 = ar1[int2] then begin
    fielddefli.rowfontstate[int1]:= 0;
    fielddefli.datacols.selected[makegridcoord(-1,int1)]:= false;
    break;
   end;
  end;
 end;
end;

procedure tmseififieldeditorfo.fieldsdataentered(const sender: TObject);
begin
 checkfielddefs;
end;

procedure tmseififieldeditorfo.fieldsrowdel(const sender: tcustomgrid;
              const aindex: Integer; const acount: Integer);
begin
 checkfielddefs;
end;

procedure tmseififieldeditorfo.transferfields(const sender: TObject); 
var
 int1,int2: integer;
 ar1,ar2: integerarty;
 mstr1: msestring;
begin
 ar1:= fielddefli.datacols.selectedrows;
 if high(ar1) >= 0 then begin
  setlength(ar2,length(ar1));
  int2:= 0;
  fields.beginupdate;
  for int1:= 0 to high(ar1) do begin
   fields.appendrow(true);
   try
    fields.row:= fields.rowhigh;
//    fieldpo[fields.rowhigh]:= 
//               ffields.dataset.fielddefs[ar1[int1]].createfield(nil);
//    tfield(fieldpo[fields.rowhigh]).dataset:= nil;
    mstr1:= fielddefli[0][ar1[int1]];
    sourcefieldname[fields.rowhigh]:= mstr1;
    fieldname[fields.rowhigh]:= uniquefieldname(mstr1);
//    classty[fields.rowhigh]:= ord(fieldclasstoclasstyp(
///             ffields.dataset.fielddefs[ar1[int1]].fieldclass));
    datatype[fields.rowhigh]:= ord(ffieldintf.getdatatype(ansistring(mstr1)));
    ar2[int2]:= fields.rowhigh;
    inc(int2);
   except
    fields.rowcount:= fields.rowcount - 1;
    application.handleexception(nil);
   end;
   fielddefli.datacols.clearselection;
  end;
  setlength(ar2,int2);
  fields.datacols.selectedrows:= ar2; 
  fields.endupdate;
 // fields.sort;
  checkfielddefs;
  for int1:= ar1[high(ar1)] + 1 to fielddefli.rowhigh do begin
   if fielddefli.rowfontstate[int1] = -1 then begin
    fielddefli.row:= int1;
    exit;
   end;
  end;
  for int1:= 0 to fielddefli.rowhigh do begin
   if fielddefli.rowfontstate[int1] = -1 then begin
    fielddefli.row:= int1;
    exit;
   end;
  end;
 end;
end;

procedure tmseififieldeditorfo.fieldrowsdeleting(const sender: tcustomgrid;
              var aindex: Integer; var acount: Integer);
var
 int1: integer;
begin
 for int1:= aindex to aindex + acount - 1 do begin
  if sender.rowfontstate[int1] <> -1 then begin
   acount:= 0;
   break;
  end;
 end;
 for int1:= aindex to aindex + acount - 1 do begin
  tfield(fieldpo[int1]).free;
 end;
end;

procedure tmseififieldeditorfo.fieldsort(const sender: tcustomgrid;
               const index1: Integer; const index2: Integer;
               var aresult: Integer);
begin
 aresult:= fields.rowfontstate[index1] - fields.rowfontstate[index2];
end;

procedure tmseififieldeditorfo.fieldcellevent(const sender: TObject;
        var info: celleventinfoty);
begin
 with info do begin
  if eventkind = cek_enter then begin
   if fields.rowfontstate[cell.row] = -1 then begin
    fields.datacols.options:= fields.datacols.options - [co_readonly];
    fields.optionsgrid:= fields.optionsgrid + [og_rowdeleting];
   end
   else begin
    fields.datacols.options:= fields.datacols.options + [co_readonly];
    fields.optionsgrid:= fields.optionsgrid - [og_rowdeleting];
   end;
  end;
  if (eventkind = cek_select) and selected then begin
   if fields.rowfontstate[cell.row] <> -1 then begin
    accept:= false;
   end;
  end;
 end;
end;

procedure tmseififieldeditorfo.fieldselectioncha(const sender: TObject);
begin
 fieldtodef.enabled:= fields.datacols.hasselection and 
                            (length(fields.datacols.selectedrows) > 0);
end;

function tmseififieldeditorfo.findfielddef(aname: msestring): integer;
var
 int1: integer;
begin
 result:= invalidaxis;
 aname:= struppercase(aname);
 for int1:= 0 to fielddefli.rowhigh do begin
  if msestringicompupper(fielddefli[0][int1],aname) = 0 then begin
   result:= int1;
   break;
  end;
 end;
end;

procedure tmseififieldeditorfo.deletefields(const sender: TObject);
var
 ar1,ar2: integerarty;
 int1: integer;
 int2: integer;
begin
 ar1:= fields.datacols.selectedrows;
 setlength(ar2,length(ar1)); //max
 int2:= 0;
 for int1:= high(ar1) downto 0 do begin
  ar2[int2]:= findfielddef(fieldname[ar1[int1]]);
  if ar2[int2] >= 0 then begin
   inc(int2);
  end;
 end;
 ffields.beginupdate;
 for int1:= high(ar1) downto 0 do begin
  fields.deleterow(ar1[int1]);
 end;
 ffields.endupdate;
 if int2 > 0 then begin
  setlength(ar2,int2);
  fielddefli.row:= ar2[high(ar2)];
  fielddefli.datacols.selectedrows:= ar2;
 end;
end;

end.
