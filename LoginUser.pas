{$mode objfpc}

program LoginUser;

uses
  SysUtils;

var
  email, password, response: string;
  isUserLoggedIn: boolean;

// Fungsi untuk memeriksa kredensial pengguna
function checkLogin(email, password: string): boolean;
begin
  if (email = 'angkringan@gmail.com') and (password = 'sate123') then
    checkLogin := true // Mengembalikan nilai menggunakan nama fungsi
  else
    checkLogin := false;
end;

// Prosedur untuk melakukan logout
procedure doLogout;
begin
  isUserLoggedIn := false;
  Writeln('Anda telah berhasil logout.');
end;

begin
  isUserLoggedIn := false;
  
  // Input email
  Writeln('Masukkan email Anda: ');
  Readln(email);
  
  // Input password
  Writeln('Masukkan password Anda: ');
  Readln(password);

  // Cek kredensial login
  if checkLogin(email, password) then
  begin
    isUserLoggedIn := true;
    Writeln('Login berhasil! Selamat datang, ', email);
  end
  else
  begin
    Writeln('Login gagal. Email atau password salah.');
    Exit;
  end;

  // Tanyakan apakah user ingin logout
  Writeln('Apakah Anda ingin logout? (yes/no)');
  Readln(response);

  // Jika jawaban 'yes', maka lakukan logout
  if LowerCase(response) = 'yes' then
    doLogout
  else
    Writeln('Anda tetap login.');

  Readln; // Menahan layar agar program tidak langsung menutup
end.