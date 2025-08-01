.class Lcom/hijacker/SendLogActivity$SetupTask;
.super Landroid/os/AsyncTask;
.source "SendLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/SendLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/SendLogActivity;


# direct methods
.method private constructor <init>(Lcom/hijacker/SendLogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hijacker/SendLogActivity;Lcom/hijacker/SendLogActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hijacker/SendLogActivity$SetupTask;-><init>(Lcom/hijacker/SendLogActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, v0, Lcom/hijacker/SendLogActivity;->shell:Ljava/lang/Process;

    iget-object v0, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object v2, v2, Lcom/hijacker/SendLogActivity;->shell:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, v0, Lcom/hijacker/SendLogActivity;->shell_in:Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object v3, v3, Lcom/hijacker/SendLogActivity;->shell:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, v0, Lcom/hijacker/SendLogActivity;->shell_out:Ljava/io/BufferedReader;

    iget-object v0, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    invoke-virtual {v0}, Lcom/hijacker/SendLogActivity;->stopAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught Exception in shell start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIJACKER/onCreate"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    iget-object v0, v0, Lcom/hijacker/SendLogActivity;->rootView:Landroid/view/View;

    const-string v1, "Couldn\'t start su shell to stop any remaining processes"

    invoke-static {v0, v1, p1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    iget-object v0, p0, Lcom/hijacker/SendLogActivity$SetupTask;->this$0:Lcom/hijacker/SendLogActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.INTERNET"

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/SendLogActivity$SetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
