.class Lcom/hijacker/IsolatedFragment$3;
.super Ljava/lang/Object;
.source "IsolatedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/IsolatedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/IsolatedFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/IsolatedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/IsolatedFragment$3;->this$0:Lcom/hijacker/IsolatedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$3;->this$0:Lcom/hijacker/IsolatedFragment;

    invoke-static {v0}, Lcom/hijacker/IsolatedFragment;->access$000(Lcom/hijacker/IsolatedFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$3;->this$0:Lcom/hijacker/IsolatedFragment;

    iget-object v0, v0, Lcom/hijacker/IsolatedFragment;->essid:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object v1, v1, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$3;->this$0:Lcom/hijacker/IsolatedFragment;

    iget-object v0, v0, Lcom/hijacker/IsolatedFragment;->manuf:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object v1, v1, Lcom/hijacker/AP;->manuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$3;->this$0:Lcom/hijacker/IsolatedFragment;

    iget-object v0, v0, Lcom/hijacker/IsolatedFragment;->mac:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object v1, v1, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$3;->this$0:Lcom/hijacker/IsolatedFragment;

    iget-object v0, v0, Lcom/hijacker/IsolatedFragment;->sec1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object v2, v2, Lcom/hijacker/AP;->enc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | Auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object v2, v2, Lcom/hijacker/AP;->auth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | Cipher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget-object v2, v2, Lcom/hijacker/AP;->cipher:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$3;->this$0:Lcom/hijacker/IsolatedFragment;

    iget-object v0, v0, Lcom/hijacker/IsolatedFragment;->numbers:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    invoke-virtual {v2}, Lcom/hijacker/AP;->getBeacons()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | D: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    invoke-virtual {v2}, Lcom/hijacker/AP;->getData()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | #s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    invoke-virtual {v2}, Lcom/hijacker/AP;->getIvs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/IsolatedFragment$3;->this$0:Lcom/hijacker/IsolatedFragment;

    iget-object v0, v0, Lcom/hijacker/IsolatedFragment;->sec2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PWR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget v2, v2, Lcom/hijacker/AP;->pwr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | Channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/hijacker/IsolatedFragment;->is_ap:Lcom/hijacker/AP;

    iget v2, v2, Lcom/hijacker/AP;->ch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
