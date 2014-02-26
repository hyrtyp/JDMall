.class Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;
.super Ljava/lang/Object;
.source "JDInputMethod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/ime/JDInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateJDInputMethodUIThread"
.end annotation


# instance fields
.field private screen:Landroid/view/View;

.field final synthetic this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/ime/JDInputMethod;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "screen"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;->this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;->screen:Landroid/view/View;

    .line 545
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;->this$0:Lcom/jingdong/app/mall/ime/JDInputMethod;

    iget-object v1, p0, Lcom/jingdong/app/mall/ime/JDInputMethod$UpdateJDInputMethodUIThread;->screen:Landroid/view/View;

    #calls: Lcom/jingdong/app/mall/ime/JDInputMethod;->createPopWindow(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;->access$5(Lcom/jingdong/app/mall/ime/JDInputMethod;Landroid/view/View;)V

    .line 549
    return-void
.end method
