.class public interface abstract annotation Lcom/jd/droidlib/annotation/bus/ReceiveEvents;
.super Ljava/lang/Object;
.source "ReceiveEvents.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/jd/droidlib/annotation/bus/ReceiveEvents;
        name = {
            ""
        }
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract name()[Ljava/lang/String;
.end method
