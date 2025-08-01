.class Lcom/hijacker/FiltersDialog$3;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/FiltersDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/FiltersDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/FiltersDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FiltersDialog$3;->this$0:Lcom/hijacker/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hijacker/FiltersDialog$3;->this$0:Lcom/hijacker/FiltersDialog;

    invoke-virtual {v0, p1}, Lcom/hijacker/FiltersDialog;->showSortingPopup(Landroid/view/View;)V

    return-void
.end method
