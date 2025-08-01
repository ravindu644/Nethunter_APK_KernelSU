.class Lcom/hijacker/FeedbackDialog$3;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/FeedbackDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/FeedbackDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/FeedbackDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FeedbackDialog$3;->this$0:Lcom/hijacker/FeedbackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "plain/text"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "kiriakopoulos44@gmail.com"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.SUBJECT"

    const-string v0, "Hijacker feedback"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/hijacker/FeedbackDialog$3;->this$0:Lcom/hijacker/FeedbackDialog;

    iget-object p2, p2, Lcom/hijacker/FeedbackDialog;->feedbackView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/hijacker/FeedbackDialog$3;->this$0:Lcom/hijacker/FeedbackDialog;

    iget-object p2, p2, Lcom/hijacker/FeedbackDialog;->report:Ljava/io/File;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/hijacker/FeedbackDialog$3;->this$0:Lcom/hijacker/FeedbackDialog;

    invoke-virtual {p2}, Lcom/hijacker/FeedbackDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/hijacker/FeedbackDialog$3;->this$0:Lcom/hijacker/FeedbackDialog;

    iget-object v0, v0, Lcom/hijacker/FeedbackDialog;->report:Ljava/io/File;

    const-string v1, "com.hijacker.provider"

    invoke-static {p2, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object p2, p0, Lcom/hijacker/FeedbackDialog$3;->this$0:Lcom/hijacker/FeedbackDialog;

    invoke-virtual {p2, p1}, Lcom/hijacker/FeedbackDialog;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
