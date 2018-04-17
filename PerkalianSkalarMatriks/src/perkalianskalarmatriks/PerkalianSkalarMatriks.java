package perkalianskalarmatriks;

/**
 *
 * @author Bagus Anugrah Prasetyo [NIM : 17523224]
 */

/**Tugas Fundamen Matematika - Operasi Matriks**/
/**Matriks Ordo 2 x 2**/

public class PerkalianSkalarMatriks {

    public static void main(String[] args) {
        int[][] matriks = new int[][]{  /**Contoh Matriks**/
            {10,11}, /*nilai pada kolom kurawal bisa diganti*/
            {12,13}
        };
        //Masukkan nilai skalar, disini nilai skalar yang saya masukkan adalah 10
        int nilaiskalar = 10;
        
        for(int i=0;i<2;i++){
            for(int j=0;j<2;j++){
                System.out.print(matriks[i][j] * nilaiskalar +" ");
            }
            System.out.println("");
        }
    }
}