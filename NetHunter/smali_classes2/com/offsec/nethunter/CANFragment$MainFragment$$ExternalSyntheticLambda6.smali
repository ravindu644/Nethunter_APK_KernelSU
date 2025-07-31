.class public final synthetic Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CANFragment$MainFragment;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CANFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;->f$0:Lcom/offsec/nethunter/CANFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;->f$2:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;->f$0:Lcom/offsec/nethunter/CANFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/CANFragment$MainFragment$$ExternalSyntheticLambda6;->f$2:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/CANFragment$MainFragment;->lambda$onCreateView$21$com-offsec-nethunter-CANFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
