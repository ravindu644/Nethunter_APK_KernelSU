.class Lcom/hijacker/WordlistDownloadDialog$Wordlist;
.super Ljava/lang/Object;
.source "WordlistDownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/WordlistDownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Wordlist"
.end annotation


# instance fields
.field download_url:Ljava/lang/String;

.field filename:Ljava/lang/String;

.field size:I

.field final synthetic this$0:Lcom/hijacker/WordlistDownloadDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/WordlistDownloadDialog;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->this$0:Lcom/hijacker/WordlistDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->filename:Ljava/lang/String;

    iput p3, p0, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->size:I

    iput-object p4, p0, Lcom/hijacker/WordlistDownloadDialog$Wordlist;->download_url:Ljava/lang/String;

    return-void
.end method
