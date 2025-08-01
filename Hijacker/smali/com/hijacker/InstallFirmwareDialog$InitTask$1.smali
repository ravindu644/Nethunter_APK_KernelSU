.class Lcom/hijacker/InstallFirmwareDialog$InitTask$1;
.super Ljava/lang/Object;
.source "InstallFirmwareDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/InstallFirmwareDialog$InitTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/InstallFirmwareDialog$InitTask;


# direct methods
.method constructor <init>(Lcom/hijacker/InstallFirmwareDialog$InitTask;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask$1;->this$1:Lcom/hijacker/InstallFirmwareDialog$InitTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/hijacker/InstallFirmwareDialog$InitTask$1;->this$1:Lcom/hijacker/InstallFirmwareDialog$InitTask;

    iget-object p2, p2, Lcom/hijacker/InstallFirmwareDialog$InitTask;->this$0:Lcom/hijacker/InstallFirmwareDialog;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p2, Lcom/hijacker/InstallFirmwareDialog;->selectedUtilPath:Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
