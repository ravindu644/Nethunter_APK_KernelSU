.class Lcom/hijacker/WordlistDownloadDialog$LoadTask;
.super Landroid/os/AsyncTask;
.source "WordlistDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/WordlistDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadTask"
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
.field final synthetic this$0:Lcom/hijacker/WordlistDownloadDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/WordlistDownloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    const-string p1, "HIJACKER/WlLoadTask"

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://api.github.com/repos/chrisk44/Hijacker/contents/wordlists"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "No files found"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, -0x1

    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x337a8b

    const/4 v10, 0x2

    if-eq v8, v9, :cond_3

    const v9, 0x35e001

    if-eq v8, v9, :cond_2

    const v9, 0x42203938

    if-eq v8, v9, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "download_url"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    goto :goto_3

    :cond_2
    const-string v8, "size"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_7

    if-eq v7, v3, :cond_6

    if-eq v7, v10, :cond_5

    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    iget-object v1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    iget-object v1, v1, Lcom/hijacker/WordlistDownloadDialog;->wordlists:Ljava/util/ArrayList;

    new-instance v3, Lcom/hijacker/WordlistDownloadDialog$Wordlist;

    iget-object v7, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/hijacker/WordlistDownloadDialog$Wordlist;-><init>(Lcom/hijacker/WordlistDownloadDialog;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    iget-object v0, v0, Lcom/hijacker/WordlistDownloadDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/hijacker/WordlistDownloadDialog$LoadTask$1;

    invoke-direct {v1, p0}, Lcom/hijacker/WordlistDownloadDialog$LoadTask$1;-><init>(Lcom/hijacker/WordlistDownloadDialog$LoadTask;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    iget-object v0, v0, Lcom/hijacker/WordlistDownloadDialog;->adapter:Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;

    invoke-virtual {v0}, Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-virtual {p1}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/hijacker/MainActivity;

    invoke-virtual {p1}, Lcom/hijacker/MainActivity;->internetAvailable()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-virtual {p1}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    const v2, 0x7f100187

    invoke-virtual {v1, v2}, Lcom/hijacker/WordlistDownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-virtual {p1}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    const v2, 0x7f10010e

    invoke-virtual {v1, v2}, Lcom/hijacker/WordlistDownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
