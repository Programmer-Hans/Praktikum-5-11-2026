program Soal5;

uses crt;

label awal;

var
  i, j, n: integer;

procedure garis;
begin
  writeln('-------------------------------------');
end;

begin
  clrscr;
  
  awal:
  Garis;
  Writeln('Program Penghitungan Deret Matematika');
  garis;
  Writeln('Daftar Pola Deret Matematika:');
  writeln('1. Deret febonacci');
  Writeln('2. Deret Geometri');
  Writeln('3. Deret Kuadrat');
  Writeln('4. Deret Aritmatika Bertingkat');
  Write('Pilih pola deret matematika yg anda inginkan: '); readln(n);

  if  (n < 1) or (n > 4) then
  begin
    writeln('pilihan tidak valid, silahkan pilih angka 1-4');
    writeln;
    goto awal;
  end;

  Case n of
  1:begin
    end;
  end;

  end.