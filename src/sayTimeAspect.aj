public aspect sayTimeAspect {
    private long startTime;
    pointcut callSayTime(): call(* HelloAspectJDemo.greeting());
    before(): callSayTime() {
        startTime = System.nanoTime();
    }
    after(): callSayTime() {
        long endTime = System.nanoTime();
        long elapsedSeconds = endTime - startTime;
        System.out.println("Tiempo que ha tomado el método: " + String.valueOf(elapsedSeconds)
                + " nanosegundos.");
    }
}
