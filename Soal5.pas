program Soal5;

uses crt;

label awal;

var
  n, jumlahSuku: integer;


{ Menampilkan garis pembatas agar tampilan program lebih rapi. }
procedure garis;
begin
  writeln('-------------------------------------');
end;


{ Menghitung nilai Fibonacci berdasarkan urutan sukunya. }
function fibonacci(suku: integer): integer;
var
  i, a, b, c: integer;
begin
  a := 0;
  b := 1;

  { Setiap suku diperoleh dari penjumlahan dua suku sebelumnya. }
  for i := 1 to suku - 1 do
  begin
    c := a + b;
    a := b;
    b := c;
  end;

  fibonacci := a;
end;


{ Meminta jumlah suku, kemudian menampilkan deret Fibonacci. }
procedure deretFibonacci;
var
  i: integer;
begin
  write('Masukkan jumlah suku: ');
  readln(jumlahSuku);

  write('Deret Fibonacci: ');

  for i := 1 to jumlahSuku do
    write(fibonacci(i), ' ');

  writeln;
end;


{ Menghitung sekaligus menampilkan deret Geometri. }
procedure deretGeometri;
var
  i, sukuPertama, rasio, hasil: integer;
begin
  write('Masukkan suku pertama: ');
  readln(sukuPertama);

  write('Masukkan rasio: ');
  readln(rasio);

  write('Masukkan jumlah suku: ');
  readln(jumlahSuku);

  hasil := sukuPertama;

  write('Deret Geometri: ');

  { Suku berikutnya diperoleh dengan mengalikan hasil sebelumnya dengan rasio. }
  for i := 1 to jumlahSuku do
  begin
    write(hasil, ' ');
    hasil := hasil * rasio;
  end;

  writeln;
end;


{ Menghitung kuadrat dari bilangan yang diberikan. }
function kuadrat(bilangan: integer): integer;
begin
  kuadrat := bilangan * bilangan;
end;


{ Menampilkan deret bilangan kuadrat mulai dari 1. }
procedure deretKuadrat;
var
  i: integer;
begin
  write('Masukkan jumlah suku: ');
  readln(jumlahSuku);

  write('Deret Kuadrat: ');

  for i := 1 to jumlahSuku do
    write(kuadrat(i), ' ');

  writeln;
end;


{ Menghitung nilai suku pada deret aritmatika bertingkat. }
function aritmatikaBertingkat(bilangan: integer): integer;
begin
  { Polanya diperoleh dari penjumlahan bilangan 1 sampai bilangan tersebut. }
  aritmatikaBertingkat := bilangan * (bilangan + 1) div 2;
end;


{ Menampilkan deret aritmatika bertingkat sesuai jumlah suku. }
procedure deretAritmatikaBertingkat;
var
  i: integer;
begin
  write('Masukkan jumlah suku: ');
  readln(jumlahSuku);

  write('Deret Aritmatika Bertingkat: ');

  for i := 1 to jumlahSuku do
    write(aritmatikaBertingkat(i), ' ');

  writeln;
end;


begin
  clrscr;

  { Bagian awal program sekaligus tempat kembali jika pilihan tidak valid. }
  awal:
  garis;
  writeln('Program Penghitungan Deret Matematika');
  garis;
  writeln('Daftar Pola Deret Matematika:');
  writeln('1. Deret Fibonacci');
  writeln('2. Deret Geometri');
  writeln('3. Deret Kuadrat');
  writeln('4. Deret Aritmatika Bertingkat');
  garis;

  write('Pilih pola deret matematika yg anda inginkan: ');
  readln(n);

  { Memastikan pilihan yang dimasukkan hanya berada pada angka 1-4. }
  if (n < 1) or (n > 4) then
  begin
    writeln('Pilihan tidak valid, silahkan pilih angka 1-4');
    writeln;
    goto awal;
  end;

  garis;

  { Menjalankan procedure sesuai pola deret yang dipilih. }
  case n of
    1: deretFibonacci;
    2: deretGeometri;
    3: deretKuadrat;
    4: deretAritmatikaBertingkat;
  end;

  garis;
  writeln('Penghitungan deret selesai.');

  readln;
end.
