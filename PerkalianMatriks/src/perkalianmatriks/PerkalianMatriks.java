package perkalianmatriks;

/**
 *
 * @author Bagus Anugrah Prasetyo (NIM : 17523224)
 */

/**Tugas Fundamen Matematika - Operasi Matriks**/
/**Matriks Ordo 2 x 2**/

public class PerkalianMatriks {

    public static void main(String[] args) {
        int a[][]={{10,11},{12,13}}; /** Input baris dan kolom untuk matriks A**/
        int b[][]={{14,15},{16,17}}; /** Input baris dan kolom untuk matriks B**/
        int perkalian [][] = new int [2][2];
        
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
        System.out.println("Hasil perkalian");
        int satu   =(a[0][0]*b[0][0] + a[0][1]*b[1][0]);
        int dua    =(a[0][0]*b[0][1] + a[0][1]*b[1][1]);
        int tiga   =(a[1][0]*b[0][0] + a[1][1]*b[1][0]);
        int empat  =(a[1][0]*b[0][1] + a[1][1]*b[1][1]);
                System.out.print(satu+" "+dua+" ");
                System.out.println("");
                System.out.print(+tiga+" "+empat+" ");
                
            }
}
