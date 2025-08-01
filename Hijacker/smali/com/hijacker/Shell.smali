.class Lcom/hijacker/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static final free:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hijacker/Shell;",
            ">;"
        }
    .end annotation
.end field

.field private static total:I


# instance fields
.field private log:Z

.field private shell:Ljava/lang/Process;

.field private shell_in:Ljava/io/PrintWriter;

.field private shell_out:Ljava/io/BufferedReader;

.field private valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/Shell;->free:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/hijacker/Shell;->total:I

    return-void
.end method

.method constructor <init>()V
    .locals 5

    const-string v0, "HIJACKER/Shell"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hijacker/Shell;->valid:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hijacker/Shell;->log:Z

    sget v3, Lcom/hijacker/Shell;->total:I

    add-int/2addr v3, v1

    sput v3, Lcom/hijacker/Shell;->total:I

    :try_start_0
    new-instance v3, Ljava/lang/ProcessBuilder;

    const-string v4, "su"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/hijacker/Shell;->shell:Ljava/lang/Process;

    new-instance v1, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/hijacker/Shell;->shell:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/hijacker/Shell;->shell_in:Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/hijacker/Shell;->shell:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/hijacker/Shell;->shell_out:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iput-boolean v2, p0, Lcom/hijacker/Shell;->valid:Z

    const-string v2, "Error opening shell"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    sget-boolean v1, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New shell: total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hijacker/Shell;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " free:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/hijacker/Shell;->exitAll()V

    :cond_1
    return-void
.end method

.method static exitAll()V
    .locals 3

    sget v0, Lcom/hijacker/Shell;->total:I

    sget-object v1, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/hijacker/Shell;->total:I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hijacker/Shell;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/hijacker/Shell;->valid:Z

    sget-object v1, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hijacker/Shell;

    const-string v2, "exit"

    invoke-virtual {v1, v2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    sget-object v1, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hijacker/Shell;

    iget-object v1, v1, Lcom/hijacker/Shell;->shell:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static declared-synchronized getFreeShell()Lcom/hijacker/Shell;
    .locals 4

    const-class v0, Lcom/hijacker/Shell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/hijacker/Shell;

    invoke-direct {v1}, Lcom/hijacker/Shell;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/hijacker/Shell;->free:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hijacker/Shell;

    sget-object v3, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/hijacker/Shell;->valid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static runOne(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hijacker/Shell;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hijacker/Shell;->done()V

    goto :goto_0

    :cond_0
    const-string p0, "HIJACKER/Shell"

    const-string v0, "runOne failed with invalid shell"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method clearOutput()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHELL_OUTPUT_CLEAR-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo; echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hijacker/Shell;->shell_out:Ljava/io/BufferedReader;

    invoke-static {v1, v0}, Lcom/hijacker/MainActivity;->getLastLine(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method done()V
    .locals 3

    iget-boolean v0, p0, Lcom/hijacker/Shell;->valid:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hijacker/Shell;->clearOutput()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hijacker/Shell;->setLog(Z)V

    sget-object v1, Lcom/hijacker/Shell;->free:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/hijacker/Shell;->free:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-boolean v0, p0, Lcom/hijacker/Shell;->valid:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shell has already been registered as free"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getShell()Ljava/lang/Process;
    .locals 1

    iget-object v0, p0, Lcom/hijacker/Shell;->shell:Ljava/lang/Process;

    return-object v0
.end method

.method getShell_out()Ljava/io/BufferedReader;
    .locals 1

    iget-object v0, p0, Lcom/hijacker/Shell;->shell_out:Ljava/io/BufferedReader;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hijacker/Shell;->valid:Z

    return v0
.end method

.method run(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hijacker/Shell;->valid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/Shell;->shell_in:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hijacker/Shell;->shell_in:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-boolean v0, p0, Lcom/hijacker/Shell;->log:Z

    if-eqz v0, :cond_0

    const-string v0, "HIJACKER/ShellLog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Shell is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hijacker/Shell;->log:Z

    return-void
.end method
