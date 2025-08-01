.class public Lcom/hijacker/WordlistDownloadDialog;
.super Landroid/app/DialogFragment;
.source "WordlistDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;,
        Lcom/hijacker/WordlistDownloadDialog$LoadTask;,
        Lcom/hijacker/WordlistDownloadDialog$Wordlist;
    }
.end annotation


# instance fields
.field adapter:Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;

.field dialogView:Landroid/view/View;

.field listView:Landroid/widget/ListView;

.field progressBar:Landroid/widget/ProgressBar;

.field task:Lcom/hijacker/WordlistDownloadDialog$LoadTask;

.field wordlists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hijacker/WordlistDownloadDialog$Wordlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->wordlists:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method beginDownload(Lcom/hijacker/WordlistDownloadDialog$Wordlist;)V
    .locals 4

    invoke-virtual {p0}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.INTERNET"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/app/DownloadManager$Request;

    iget-object v2, p1, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->download_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v2, p1, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->filename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/hijacker/MainActivity;->wl_path:Ljava/lang/String;

    iget-object p1, p1, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->filename:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    invoke-virtual {p0}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v2, "download"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/hijacker/WordlistDownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f100111

    invoke-virtual {p0, v0}, Lcom/hijacker/WordlistDownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/WordlistDownloadDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f0901de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->dialogView:Landroid/view/View;

    const v1, 0x7f0901df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->dialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f100193

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/WordlistDownloadDialog$1;

    invoke-direct {v0, p0}, Lcom/hijacker/WordlistDownloadDialog$1;-><init>(Lcom/hijacker/WordlistDownloadDialog;)V

    const v1, 0x7f10003e

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;

    invoke-direct {v0, p0}, Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;-><init>(Lcom/hijacker/WordlistDownloadDialog;)V

    iput-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->adapter:Lcom/hijacker/WordlistDownloadDialog$WordlistAdapter;

    iget-object v1, p0, Lcom/hijacker/WordlistDownloadDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/hijacker/WordlistDownloadDialog$2;

    invoke-direct {v1, p0}, Lcom/hijacker/WordlistDownloadDialog$2;-><init>(Lcom/hijacker/WordlistDownloadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/hijacker/WordlistDownloadDialog$LoadTask;

    invoke-direct {v0, p0}, Lcom/hijacker/WordlistDownloadDialog$LoadTask;-><init>(Lcom/hijacker/WordlistDownloadDialog;)V

    iput-object v0, p0, Lcom/hijacker/WordlistDownloadDialog;->task:Lcom/hijacker/WordlistDownloadDialog$LoadTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/hijacker/WordlistDownloadDialog$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
