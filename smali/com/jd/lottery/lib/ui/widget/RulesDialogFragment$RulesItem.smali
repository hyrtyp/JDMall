.class Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;
.super Ljava/lang/Object;
.source "RulesDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RulesItem"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;->this$0:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "content"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;->this$0:Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;->title:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/jd/lottery/lib/ui/widget/RulesDialogFragment$RulesItem;->content:Ljava/lang/String;

    .line 112
    return-void
.end method
