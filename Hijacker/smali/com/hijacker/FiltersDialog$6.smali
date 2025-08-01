.class Lcom/hijacker/FiltersDialog$6;
.super Ljava/lang/Object;
.source "FiltersDialog.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/FiltersDialog;->showSortingPopup(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/hijacker/FiltersDialog$6;->this$0:Lcom/hijacker/FiltersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog$6;->this$0:Lcom/hijacker/FiltersDialog;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iput p1, v0, Lcom/hijacker/FiltersDialog;->temp_sort:I

    iget-object p1, p0, Lcom/hijacker/FiltersDialog$6;->this$0:Lcom/hijacker/FiltersDialog;

    iget-object p1, p1, Lcom/hijacker/FiltersDialog;->sortSelectBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog$6;->this$0:Lcom/hijacker/FiltersDialog;

    iget-object v0, v0, Lcom/hijacker/FiltersDialog;->sort_texts:[Ljava/lang/String;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog$6;->this$0:Lcom/hijacker/FiltersDialog;

    iget v1, v1, Lcom/hijacker/FiltersDialog;->temp_sort:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
