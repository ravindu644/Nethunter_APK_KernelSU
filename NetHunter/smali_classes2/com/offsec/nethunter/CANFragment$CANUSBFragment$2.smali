.class Lcom/offsec/nethunter/CANFragment$CANUSBFragment$2;
.super Landroid/widget/ArrayAdapter;
.source "CANFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CANFragment$CANUSBFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CANFragment$CANUSBFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CANFragment$CANUSBFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$CANUSBFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment$CANUSBFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    if-nez p1, :cond_0

    const p1, -0x777778

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
