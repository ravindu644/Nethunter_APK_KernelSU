.class Lcom/offsec/nethunter/CustomCommandsFragment$2$1;
.super Ljava/lang/Object;
.source "CustomCommandsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CustomCommandsFragment$2;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/offsec/nethunter/CustomCommandsFragment$2;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CustomCommandsFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2$1;->this$1:Lcom/offsec/nethunter/CustomCommandsFragment$2;

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

    add-int/lit8 p3, p3, 0x1

    sput p3, Lcom/offsec/nethunter/CustomCommandsFragment;->targetPositionId:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string p1, "CustomCommandsFragment"

    const-string v0, "onNothingSelected: Nothing selected."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
