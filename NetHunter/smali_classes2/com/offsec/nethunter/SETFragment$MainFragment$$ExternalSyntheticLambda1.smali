.class public final synthetic Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

.field public final synthetic f$1:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;->f$1:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;->f$1:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->lambda$onCreateView$1$com-offsec-nethunter-SETFragment$MainFragment(Landroid/webkit/WebView;Landroid/view/View;)V

    return-void
.end method
