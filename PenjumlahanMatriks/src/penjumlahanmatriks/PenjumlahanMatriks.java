package penjumlahanmatriks;

/**
 *
 * @author Bagus Anugrah Prasetyo (NIM : 17523224)
 */

/**Tugas Fundamen Matematika - Operasi Matriks**/
/**Matriks Ordo 2 x 2**/

public class PenjumlahanMatriks {

    public static void main(String[] args) {
        int a [][]= {{10,11},{12,13}}; /** Input baris dan kolom untuk matriks A**/
        int b [][]= {{14,15},{16,17}}; /** Input baris dan kolom untuk matriks B**/
        int penjumlahan [][]= new int [2][2];
        
        System.out.println("Matriks A");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(a[i][j]+" ");
                
            }
            System.out.println("");
            
        }
        System.out.println("Matriks B");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(b[i][j]+" ");
                
            }
            System.out.println("");
            
        }
        System.out.println("Hasil penjumlahan");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
               penjumlahan [i][j]= a[i][j]+b[i][j];
                System.out.print(penjumlahan[i][j]+"  ");
                
            }
            System.out.println("");
            
        }
    }
    }

    
    

