.class Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;
.super Landroid/os/Handler;
.source "USBArsenalHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;->this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;->this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getUSBNetworkColumnData(I)Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fputresultObject(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;->this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "targetOSName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "functionName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getUSBSwitchColumnData(Ljava/lang/String;Ljava/lang/String;)Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fputresultObject(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;->this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-static {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fgetexe(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;)Lcom/offsec/nethunter/utils/ShellExecuter;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fputresultObject(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;->this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-static {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fgetexe(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;)Lcom/offsec/nethunter/utils/ShellExecuter;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fputresultObject(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;->this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-static {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fgetlistener(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;)Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;->this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-static {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fgetlistener(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;)Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$1;->this$0:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-static {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->-$$Nest$fgetresultObject(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;)Ljava/lang/Object;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, p1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;->onShellExecuterFinished(Ljava/lang/Object;I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
