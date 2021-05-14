import java.util.Date;


public class TestClienti {

    private Cliente cliente;

    public void ClienteSetUp()
    {
        Date dataDiNascita = new Date(2000,1,1);
        cliente = new Cliente("Paperino","Paolino",dataDiNascita,"Viale Risorgimento 2, Bologna","123456789","PLNPRN00A01A944C","paperino@google.quack");
    }

    public void TestAggiuntaCliente()
    {
        Date testDataNascita = new Date(2000,1,1);

        assertEquals(cliente.getNome(),"Paperino");
        assertEquals(cliente.getCognome,"Paolino");
        assertEquals(cliente.getDataNascita,testDataNascita);
        assertEquals(cliente.getIndirizzo,"Viale Risorgimento 2, Bologna");
        assertEquals(cliente.getTelefono,"123456789");
        assertEquals(cliente.getCf,"PLNPRN00A01A944C");
        assertEquals(cliente.getEmail,"paperino@google.quack");
    }


    public void TestModificaCliente()
    {
        cliente.setIndirizzo("Via Zamboni 33, Bologna");
        cliente.setTelefono("321654987");
        cliente.setEmail("paperino@unibo.quack");

        assertEquals(cliente.getIndirizzo,"Via Zamboni 33, Bologna");
        assertEquals(cliente.getTelefono,"321654987");
        assertEquals(cliente.getEmail,"paperino@unibo.quack");

    }




}