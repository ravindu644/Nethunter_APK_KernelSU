.class Lcom/offsec/nethunter/AudioFragment$2;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/AudioFragment;->setUpSpinner(Landroid/widget/Spinner;Ljava/util/List;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AudioFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AudioFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

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

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$sfgetVALUES_BUFFER_HEADROOM()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetbufferHeadroomSpinner(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$sfgetVALUES_TARGET_LATENCY()Ljava/util/List;

    move-result-object p3

    iget-object p4, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p4}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgettargetLatencySpinner(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Spinner;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p4

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    iget-object p5, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p5}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/offsec/nethunter/AudioPlaybackService;->setBufferUsec(JJ)V

    :cond_0
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
