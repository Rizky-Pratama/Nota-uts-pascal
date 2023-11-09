
Program uts;

Uses wincrt;

Type 
  order = Record
    no : Integer;
    nama_masakan : String;
    banyak : integer;
    harga : LongInt;
    jumlah : LongInt;
  End;

Var 
  i : integer;
  total, kembalian, pembayaran: LongInt;
  pesanan: array[1..3] Of order;

Begin
  pesanan[1].no := 1;
  pesanan[1].nama_masakan := 'Ayam Geprek ';
  pesanan[1].banyak := 5;
  pesanan[1].harga := 20000;
  pesanan[1].jumlah := pesanan[1].banyak*pesanan[1].harga;

  pesanan[2].no := 2;
  pesanan[2].nama_masakan := 'Sate Taichan';
  pesanan[2].banyak := 5;
  pesanan[2].harga := 15000;
  pesanan[2].jumlah := pesanan[2].banyak*pesanan[2].harga;

  pesanan[3].no := 3;
  pesanan[3].nama_masakan := 'Es Teh Manis';
  pesanan[3].banyak := 10;
  pesanan[3].harga := 5000;
  pesanan[3].jumlah := pesanan[3].banyak*pesanan[3].harga;

  total := pesanan[1].jumlah + pesanan[2].jumlah + pesanan[3].jumlah;
  pembayaran := 250000;
  kembalian := pembayaran - total;

  writeln('                                               AYAM GEPREK 77');
  writeln('                                           Jl. Merdeka Raya, no.01');
  writeln('                                                 Surabaya');
  writeln('======================================================================================================');
  writeln('Nama Pembeli : Muhammad Rizky Pratama');
  writeln('');
  writeln('No.  Nama Masakan                Banyaknya                Harga Satuan                    Jumlah');

  For i:=1 To 3 Do
    Begin
      writeln(pesanan[i].no,'.','  ',pesanan[i].nama_masakan,'                    ',pesanan[i].banyak,'                       ',pesanan[i].harga,
              '                         ',pesanan[i].jumlah);
    End;

  writeln('======================================================================================================');
  writeln('     Total      :                                                                         ', total);
  writeln('     Pembayaran :                                                                         ', pembayaran);
  writeln('     Kembalian  :                                                                         ', kembalian);
  writeln('======================================================================================================');
  writeln('                                                Terima Kasih');
  readln;
End.
