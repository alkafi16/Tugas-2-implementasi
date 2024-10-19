#include <stdio.h>
#include <string.h>

// Fungsi untuk mengecek login
int checkLogin(const char *email, const char *password) {
    // Simulasi data login (email dan password yang valid)
    if (strcmp(email, "angkringan@gmail.com") == 0 && strcmp(password, "sate123") == 0) {
        return 1; // Login berhasil
    }
    return 0; // Login gagal
}

// Prosedur untuk melakukan logout
void doLogout() {
    printf("Anda telah keluar dari sistem.\n");
}

int main() {
    char email[50];
    char password[50];
    int isUserLoggedIn = 0;

    // Meminta pengguna memasukkan email dan password
    printf("Masukkan email Anda: ");
    scanf("%s", email);
    printf("Masukkan password Anda: ");
    scanf("%s", password);

    // Mengecek login
    if (checkLogin(email, password)) {
        isUserLoggedIn = 1;
        printf("Login berhasil! Selamat datang, %s\n", email);
    } else {
        printf("Login gagal, silakan coba lagi.\n");
    }

    // Simulasi logout jika login berhasil
    if (isUserLoggedIn) {
        char logoutOption[10];
        printf("Apakah Anda ingin logout? (yes/no): ");
        scanf("%s", logoutOption);
        if (strcmp(logoutOption, "yes") == 0) {
            doLogout();
        } else {
            printf("Tetap dalam sesi.\n");
        }
    }

    return 0;
}
