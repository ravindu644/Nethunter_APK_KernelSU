.class Lcom/hijacker/FileExplorerDialog$6;
.super Ljava/lang/Object;
.source "FileExplorerDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/FileExplorerDialog;->goToDirectory(Lcom/hijacker/RootFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hijacker/RootFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/FileExplorerDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/FileExplorerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog$6;->this$0:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hijacker/RootFile;Lcom/hijacker/RootFile;)I
    .locals 1

    invoke-virtual {p1}, Lcom/hijacker/RootFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hijacker/RootFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/hijacker/RootFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/hijacker/RootFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/hijacker/RootFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/hijacker/RootFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/hijacker/RootFile;

    check-cast p2, Lcom/hijacker/RootFile;

    invoke-virtual {p0, p1, p2}, Lcom/hijacker/FileExplorerDialog$6;->compare(Lcom/hijacker/RootFile;Lcom/hijacker/RootFile;)I

    move-result p1

    return p1
.end method
