.class Lcom/offsec/nethunter/MPCFragment$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MPCFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/MPCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/MPCFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/MPCFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment$6;->this$0:Lcom/offsec/nethunter/MPCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/MPCFragment$6;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/MPCFragment$6;->this$0:Lcom/offsec/nethunter/MPCFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fgetconnectivityManager(Lcom/offsec/nethunter/MPCFragment;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$6;->this$0:Lcom/offsec/nethunter/MPCFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fgetconnectivityManager(Lcom/offsec/nethunter/MPCFragment;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$6;->val$rootView:Landroid/view/View;

    const v2, 0x7f090311

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method
