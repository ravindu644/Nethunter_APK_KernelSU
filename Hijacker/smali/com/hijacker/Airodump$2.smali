.class Lcom/hijacker/Airodump$2;
.super Ljava/lang/Object;
.source "Airodump.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/Airodump;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$final_cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/Airodump$2;->val$final_cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v0, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/Airodump$2;->val$final_cmd:Ljava/lang/String;

    const-string v1, "HIJACKER/Airodump.start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hijacker/Airodump;->access$300()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, p0, Lcom/hijacker/Airodump$2;->val$final_cmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/hijacker/MainActivity;->last_action:J

    iget-object v2, p0, Lcom/hijacker/Airodump$2;->val$final_cmd:Ljava/lang/String;

    sput-object v2, Lcom/hijacker/MainActivity;->last_airodump:Ljava/lang/String;

    new-instance v2, Lcom/hijacker/BoundedBufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/hijacker/BoundedBufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-static {}, Lcom/hijacker/Airodump;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2710

    invoke-virtual {v2, v1}, Lcom/hijacker/BoundedBufferedReader;->readLine(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lcom/hijacker/Airodump;->main(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught Exception in Airodump.start() read thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIJACKER/Exception"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
