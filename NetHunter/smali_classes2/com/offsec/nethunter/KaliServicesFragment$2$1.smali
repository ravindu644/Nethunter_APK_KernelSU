.class Lcom/offsec/nethunter/KaliServicesFragment$2$1;
.super Ljava/lang/Object;
.source "KaliServicesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/KaliServicesFragment$2;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/offsec/nethunter/KaliServicesFragment$2;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/KaliServicesFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment$2$1;->this$1:Lcom/offsec/nethunter/KaliServicesFragment$2;

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

    invoke-static {p3}, Lcom/offsec/nethunter/KaliServicesFragment;->-$$Nest$sfputtargetPositionId(I)V

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
